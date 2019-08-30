package com.thinkgem.jeesite.modules.enguseroption.web;

import com.thinkgem.jeesite.modules.enguser.service.EnguserService;
import com.thinkgem.jeesite.modules.enguseroption.service.EnguserOptionService;
import com.thinkgem.jeesite.modules.userchapterword.service.UserChapterWordService;
import com.thinkgem.jeesite.modules.wx.pojo.courseInfoEntity;
import com.thinkgem.jeesite.modules.wx.pojo.enguserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/enguserOption/enguserOption")
public class EnguserOptionWebController {

    @Autowired
    private EnguserOptionService enguserOptionService;

    @Autowired
    EnguserService enguserService;

    @Autowired
    UserChapterWordService userChapterWordService;


    @ResponseBody
    @RequestMapping(value = "/getCourseInfo", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public Map<String,Object> getCourseInfo(HttpSession httpSession) {
        Map<String,Object> resultMap=new HashMap<String, Object>();
        try {
            String userId=httpSession.getAttribute("id").toString();//获取到用户的id
            enguserEntity enguserEntity=enguserService.getEntityByUserId(userId);

            //根据学生id查询出所有的课程
            if (enguserEntity.getCourseNum()>0){
                //课程详情集合声明
                List<courseInfoEntity> courseInfoEntities=new ArrayList<courseInfoEntity>();
                //查询所有的课程，通过学生id和课程id进行循环查询对应的学习情况
                List<Map<String,String>> courseMapList=enguserService.findCourseMapById(userId);
                if (courseMapList.size()==0){
                    resultMap.put("code",1);//操作失败
                    resultMap.put("msg","操作失败");
                    return resultMap;
                }else {
                    //循环课程
                    for (Map<String,String> map:courseMapList
                            ) {
                        String courseName=map.get("courseName");
                        String courseId=map.get("courseId");
                        courseInfoEntity courseInfoEntity=new courseInfoEntity();
                        courseInfoEntity.setCourseName(courseName);//课程名字
                        courseInfoEntity.setCompleteword(userChapterWordService.getCompletionWord(userId,courseId).size()+"");//已学词汇
                        courseInfoEntity.setWaitLearningword(userChapterWordService.getWaitLearningWord(userId,courseId).size()+"");//未学词汇
                        courseInfoEntity.setSkilledWord(userChapterWordService.getSkilledWord(userId,courseId).size()+"");//熟记词汇
                        courseInfoEntity.setStrengthenMemoryWord(userChapterWordService.getStrengthenMemoryWord(userId,courseId).size()+"");//备忘词汇
                        courseInfoEntity.setKillCourseHard(userChapterWordService.getKillCourseHardWord(userId,courseId).size()+"");//消灭词汇
                        courseInfoEntity.setCourseHardWord(userChapterWordService.getCourseHardWord(userId,courseId).size()+"");//难记词汇
                        courseInfoEntities.add(courseInfoEntity);
                    }
                }

                //将课程详情集合对象放到enguserEntity中
                enguserEntity.setCourseInfoEntityList(courseInfoEntities);
                resultMap.put("enguserEntity","enguserEntity");
            }

            resultMap.put("code",0);//操作失败
            resultMap.put("msg","获取成功");
            return resultMap;
        }catch (Exception e){
            e.printStackTrace();
            resultMap.put("code",1);//操作失败
            resultMap.put("msg","操作失败");
            return resultMap;
        }

    }

}
