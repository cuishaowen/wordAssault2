package com.thinkgem.jeesite.modules.usersubject.web;

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

import java.util.ArrayList;
import java.util.List;

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
        List<UserSubject> userSubjects = userSubjectService.findList(userSubject);
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
        return list;
    }
}
