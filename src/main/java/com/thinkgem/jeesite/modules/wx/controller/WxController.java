package com.thinkgem.jeesite.modules.wx.controller;

import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.enguser.entity.Enguser;
import com.thinkgem.jeesite.modules.enguser.service.EnguserService;
import com.thinkgem.jeesite.modules.enguseroption.service.EnguserOptionService;
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

    @Autowired
    private EnguserOptionService enguserOptionService;

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
            mv.addObject("id",id);

        }catch (Exception e){
            e.printStackTrace();
            mv=new ModelAndView("wx/login");
        }
        return mv;
    }

    /**
     * 查询近一周学习单词数量
     */
    @ResponseBody
    @RequestMapping(value = "/getLastWeekStudyWords/{id}",method = RequestMethod.GET)
    public Map<String,Object> getLastWeekStudyWords(@PathVariable String id){
        Map<String,Object> resultMap=new HashMap<String, Object>();
        try {

            //通过用户id查询user_chapter_word的更新时间，确认学习单词数量
            List<Map<String,String>> weekStudyWordsList=userChapterWordService.findWeekStudyWords(id);

            if (weekStudyWordsList!=null&&weekStudyWordsList.size()!=0){
                Map<String,String> wordsMap=new HashMap<String, String>();
                for (Map<String,String> map:weekStudyWordsList){
                    String wordTime=map.get("updateTime");//学习的时间
                    Object countNum = map.get("countNum");
                    wordsMap.put(wordTime,countNum.toString());//把所有的map中的数据放到一个map里面
                }
                Object[] updateTime=wordsMap.keySet().toArray();//把日期值转换成数组
                Integer[] wordsCount=new Integer[updateTime.length];
                for (int i=0;i<updateTime.length;i++){
                    wordsCount[i]=Integer.parseInt(wordsMap.get(updateTime[i]));
                }
                resultMap.put("updateTimes",updateTime);
                resultMap.put("wordsCount",wordsCount);
            }

            resultMap.put("code",0);//操作失败
            resultMap.put("msg","学习时间获取成功");
            return resultMap;
        }catch (Exception e){
            e.printStackTrace();
            resultMap.put("code",1);//操作失败
            resultMap.put("msg","操作失败");
            return resultMap;
        }

        }

    /**
     * 查询学习时间
     */
    @ResponseBody
    @RequestMapping(value = "/getLastWeekStudyTime/{id}",method =RequestMethod.GET)
    public Map<String,Object> getLastWeekStudyTime(@PathVariable String id){
        Map<String,Object> resultMap=new HashMap<String, Object>();
        try {

            //查询出了除了此次之外的，7天之类的学习时间
            List<Map<String,String>> enguserOptionList=enguserOptionService.findLastWeekOption(id);

            if (enguserOptionList.size()!=0&&enguserOptionList!=null){
                //数据不为空，则进行数据归纳
                //定义两个数组，学习时间数组和学习天数数组
                Map<String,String> TimeMap=new HashMap<String, String>();
                for (Map<String,String> map:enguserOptionList
                        ) {
                    String loginTime=map.get("loginTime");
                    if (TimeMap.containsKey(loginTime)){
                        //包含这个日期key，时间叠加
                        String TimeHas=TimeMap.get(loginTime);//获取已存储的学习时间
                        String TimeNew=map.get("studyTime");//获取此日期的新学习时间
                        Integer timeCount=Integer.parseInt(TimeHas)+Integer.parseInt(TimeNew);
                        TimeMap.put(loginTime,timeCount.toString());//修改时间
                    }else {
                        //不包含此日期key,新纪录
                        TimeMap.put(loginTime,map.get("studyTime"));//存储新日期和对应学习时间
                    }
                }

                //根据TimeMap中的数据，分给两个数组，传递前台
                Object[] loginTimeArr=TimeMap.keySet().toArray();
                Integer[] studyTimeArr=new Integer[loginTimeArr.length];
                for (int i=0;i<loginTimeArr.length;i++) {
                    studyTimeArr[i]=Integer.parseInt(TimeMap.get(loginTimeArr[i]));
                }
                resultMap.put("studyTimeArr",studyTimeArr);
                resultMap.put("loginTimeArr",loginTimeArr);
            }

            resultMap.put("code",0);//操作失败
            resultMap.put("msg","学习时间获取成功");
            return resultMap;
        }catch (Exception e){
            e.printStackTrace();
            resultMap.put("code",1);//操作失败
            resultMap.put("msg","操作失败");
            return resultMap;
        }
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
