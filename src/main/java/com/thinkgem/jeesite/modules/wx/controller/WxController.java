package com.thinkgem.jeesite.modules.wx.controller;

import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.enguser.entity.Enguser;
import com.thinkgem.jeesite.modules.enguser.service.EnguserService;
import com.thinkgem.jeesite.modules.sys.utils.MD5Util;
import com.thinkgem.jeesite.modules.userchapterword.service.UserChapterWordService;
import com.thinkgem.jeesite.modules.word.pojo.CompletionWord;
import com.thinkgem.jeesite.modules.word.pojo.HardWord;
import com.thinkgem.jeesite.modules.wx.base.AppController;
import com.thinkgem.jeesite.modules.wx.pojo.courseInfoEntity;
import com.thinkgem.jeesite.modules.wx.pojo.enguserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.*;

@RequestMapping("wx/Common")
@Controller
public class WxController extends AppController {

    @Autowired
    EnguserService enguserService;

    @Autowired
    UserChapterWordService userChapterWordService;

    /**
     * 跳转到微信登录页面
     */
    @RequestMapping(value ="toLogin",method = RequestMethod.GET)
    public ModelAndView toLogin(){
        ModelAndView mv=new ModelAndView("wx/login");
        return mv;
    }

    /**
     * 跳转到学习报告页面
     */
    @RequestMapping(value ="toIndex/{id}",method = RequestMethod.GET)
    public ModelAndView toIndex(@PathVariable String id){
        ModelAndView mv=new ModelAndView("wx/index");
        try {
           //根据学生id填充学生信息,以及对应的所有课程学习情况
            enguserEntity enguserEntity=enguserService.getEntityByUserId(id);
            if (enguserEntity==null){
                mv=new ModelAndView("wx/login");
                return mv;
            }

            //根据学生id查询出所有的课程
            if (enguserEntity.getCourseNum()>0){
                //课程详情集合声明
                List<courseInfoEntity> courseInfoEntities=new ArrayList<courseInfoEntity>();
                //查询所有的课程，通过学生id和课程id进行循环查询对应的学习情况
                List<Map<String,String>> courseMapList=enguserService.findCourseMapById(id);
                if (courseMapList.size()==0){
                    mv=new ModelAndView("wx/login");
                    return mv;
                }else {
                    //循环课程
                    for (Map<String,String> map:courseMapList
                         ) {
                        String courseName=map.get("courseName");
                        String courseId=map.get("courseId");
                        courseInfoEntity courseInfoEntity=new courseInfoEntity();
                        courseInfoEntity.setCourseName(courseName);//课程名字
                        courseInfoEntity.setCompleteword(userChapterWordService.getCompletionWord(id,courseId).size()+"");//已学词汇
                        courseInfoEntity.setWaitLearningword(userChapterWordService.getWaitLearningWord(id,courseId).size()+"");//未学词汇
                        courseInfoEntity.setSkilledWord(userChapterWordService.getSkilledWord(id,courseId).size()+"");//熟记词汇
                        courseInfoEntity.setStrengthenMemoryWord(userChapterWordService.getStrengthenMemoryWord(id,courseId).size()+"");//备忘词汇
                        courseInfoEntity.setKillCourseHard(userChapterWordService.getKillCourseHardWord(id,courseId).size()+"");//消灭词汇
                        courseInfoEntity.setCourseHardWord(userChapterWordService.getCourseHardWord(id,courseId).size()+"");//难记词汇
                        courseInfoEntities.add(courseInfoEntity);
                    }
                }

                //将课程详情集合对象放到enguserEntity中
                enguserEntity.setCourseInfoEntityList(courseInfoEntities);

            }

            mv.addObject("enguserEntity",enguserEntity);

        }catch (Exception e){
            e.printStackTrace();
            mv=new ModelAndView("wx/login");
        }
        return mv;
    }

    /**
     * 检验登录用户信息
     */
    @RequestMapping(value ="toCheckUser/{userName}/{passWord}",method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> toCheckUser(@PathVariable String userName, @PathVariable String passWord){
       try {

           String password = MD5Util.encode2hex(passWord);
           Enguser enguser = enguserService.getEnguser(userName, password);
           if (enguser==null){
               //不通过
               return writeResultFailure("账号密码错误");
           }else {
               //通过
               return writeResultRep(enguser);
           }
       }catch (Exception e){
           e.printStackTrace();
           return writeResultFailure("系统错误");
       }
    }


}
