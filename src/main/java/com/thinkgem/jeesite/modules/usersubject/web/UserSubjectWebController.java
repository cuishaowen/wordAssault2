package com.thinkgem.jeesite.modules.usersubject.web;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;
import com.thinkgem.jeesite.modules.subject.entity.Subject;
import com.thinkgem.jeesite.modules.subject.service.SubjectService;
import com.thinkgem.jeesite.modules.sys.entity.Dict;
import com.thinkgem.jeesite.modules.sys.service.DictService;
import com.thinkgem.jeesite.modules.usersubject.entity.UserSubject;
import com.thinkgem.jeesite.modules.usersubject.pojo.UserSubjectPojo;
import com.thinkgem.jeesite.modules.usersubject.service.UserSubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.*;

import static com.thinkgem.jeesite.modules.common.common.*;

@Controller
@RequestMapping(value = "userSubject")
public class UserSubjectWebController {
    @Autowired
    private UserSubjectService userSubjectService;
    @Autowired
    private SubjectService subjectService;
    @Autowired
    private DictService dictService;

    @ResponseBody
    @RequestMapping(value = "save")
    public void save(UserSubject userSubject) {
        userSubjectService.save(userSubject);
    }

    @ResponseBody
    @RequestMapping(value = "delete")
    public void delete(UserSubject userSubject) {
        userSubjectService.delete(userSubject);
    }

    @ResponseBody
    @RequestMapping(value = "errorList")
    public List<UserSubjectPojo> getErrorList(String subjectVersionId){
        List<UserSubjectPojo> list = new ArrayList<UserSubjectPojo>();
        UserSubject userSubject = new UserSubject();
        userSubject.setSubjectVersionId(subjectVersionId);
        userSubject.setIsWrong("T");
        userSubject.setDelFlag(DE_FLAG_TRUE);
        List<UserSubject> userSubjects = userSubjectService.findList(userSubject);
        if (userSubjects != null && userSubjects.size() > 1){
            for (UserSubject userSubjectInf : userSubjects){
                UserSubjectPojo userSubjectPojo = new UserSubjectPojo();
                userSubjectPojo.setUserSubject(userSubjectInf);
                Subject subject = subjectService.get(userSubjectInf.getSubjectId());
                String sort = subject.getSort();
                Dict dict = dictService.selectByValueAndType(sort, "subject_type");
                subject.setSubjectTypeLabel(dict.getLabel());
                userSubjectPojo.setSubject(subject);
                list.add(userSubjectPojo);
            }
        }
        return list;
    }

    @ResponseBody
    @RequestMapping(value = "saveData")
    public void saveData(String errorClickedJson,String version,HttpSession httpSession) {
        if (httpSession != null) {

            // 查询该用户下所有未移除的错题
            List<UserSubject> userSubjects = this.getDeFlagTrueList(httpSession);
            List<Object> errorSubjectIdList = JSON.parseObject(errorClickedJson,new TypeReference<List<Object>>(){});
            for (int i = errorSubjectIdList.size() - 1; i >= 0; i--) {
                for (UserSubject userSubject : userSubjects) {
                    // 该用户下已存在的错题 + 1
                    if (userSubject.getSubjectId().equals(errorSubjectIdList.get(i).toString())) {
                        String wrongTime = "";
                        if (userSubject.getWrongTime() == null) {
                            wrongTime = "0";
                        } else {
                            wrongTime = userSubject.getWrongTime();
                        }
                        userSubject.setWrongTime(String.valueOf(Integer.parseInt(wrongTime) + 1));        // 错误次数+1
                        userSubject.setUpdateDate(new Date());
                        userSubjectService.save(userSubject);
                        errorSubjectIdList.remove(i);
                        break;
                    }
                }
            }
            for (Object o : errorSubjectIdList) {
                UserSubject userSubject = new UserSubject();
                userSubject.setSubjectId(o.toString());
                userSubject.setWrongTime("0");
                userSubject.setUserId(httpSession.getAttribute("id").toString());
                userSubject.setCreateDate(new Date());
                userSubject.setIsWrong(SUBJECT_IS_WRONG_TRUE);
                userSubject.setSubjectVersionId(version);
                userSubjectService.save(userSubject);
            }
        }
    }

    // 查询该用户下所有未删除的错题
    public List<UserSubject> getDeFlagTrueList(HttpSession httpSession){
        // 查询该用户所有未删除且
        String userId = httpSession.getAttribute("id").toString();
        UserSubject userSubject = new UserSubject();
        userSubject.setUserId(userId);
        userSubject.setDelFlag(DE_FLAG_TRUE);  // 0 正常，1 是删除  不以数据库comment为准
        return userSubjectService.findList(userSubject);
    }
}
