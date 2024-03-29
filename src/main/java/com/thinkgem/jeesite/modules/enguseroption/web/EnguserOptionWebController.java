package com.thinkgem.jeesite.modules.enguseroption.web;

import com.thinkgem.jeesite.common.utils.DateUtils;
import com.thinkgem.jeesite.modules.enguser.service.EnguserService;
import com.thinkgem.jeesite.modules.enguseroption.entity.EnguserOption;
import com.thinkgem.jeesite.modules.enguseroption.service.EnguserOptionService;
import com.thinkgem.jeesite.modules.userchapterword.service.UserChapterWordService;
import com.thinkgem.jeesite.modules.usercourse.service.UserCourseService;
import com.thinkgem.jeesite.modules.word.pojo.AllWordInfomation;
import com.thinkgem.jeesite.modules.wx.pojo.courseInfoEntity;
import com.thinkgem.jeesite.modules.wx.pojo.enguserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
@RequestMapping(value = "/enguserOption/enguserOption")
public class EnguserOptionWebController {

    @Autowired
    private EnguserOptionService enguserOptionService;

    @Autowired
    EnguserService enguserService;

    @Autowired
    private UserCourseService userCourseService;

    @Autowired
    UserChapterWordService userChapterWordService;

    @ResponseBody
    @RequestMapping(value = "/getLastWeekStudyWords",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public Map<String,Object> getLastWeekStudyWords(HttpSession httpSession){
        Map<String,Object> resultMap=new HashMap<String, Object>();
        try {
            //根据用户id查询出所有的课程，声明日期，循环查询每日学习单词数量
            String userId=httpSession.getAttribute("id").toString();//获取到用户的id
            //通过用户id查询user_chapter_word的更新时间，确认学习单词数量
            List<Map<String,String>> weekStudyWordsList=userChapterWordService.findWeekStudyWords(userId);

            if (weekStudyWordsList!=null&&weekStudyWordsList.size()!=0){
                Map<String,String> wordsMap=new TreeMap<String, String>();
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

            resultMap.put("code",0);//成功
            resultMap.put("msg","操作成功");
            return resultMap;
        }catch (Exception e){
            e.printStackTrace();
            resultMap.put("code",1);//操作失败
            resultMap.put("msg","操作失败");
            return resultMap;
        }
    }

    @ResponseBody
    @RequestMapping(value = "/getLastWeekStudyTime",method =RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public Map<String,Object> getLastWeekStudyTime(HttpSession httpSession){
        Map<String,Object> resultMap=new HashMap<String, Object>();
        try {
            //根据id查询出该用户的近一周的学习时间
            String userId = httpSession.getAttribute("id").toString();//获取到用户的id

            //查询出了除了此次之外的，7天之类的学习时间
            EnguserOption enguserOption = new EnguserOption();
            enguserOption.setEngUserId(userId);
            List<EnguserOption> enguserOptionList = enguserOptionService.findList(enguserOption);

            if (enguserOptionList.size() != 0 && enguserOptionList != null) {
                //数据不为空，则进行数据归纳
                //定义两个数组，学习时间数组和学习天数数组
                Map<String, String> TimeMap = new TreeMap<String, String>();
                for (EnguserOption enguserOptionInf : enguserOptionList) {
                    String currentTime = DateUtils.formatDate(enguserOptionInf.getCurrentTime(),"yyyyMMdd");  // 登陆
                    String nowTime = DateUtils.formatDate(new Date(),"yyyyMMdd");
                    if (Integer.valueOf(currentTime) >= Integer.valueOf(nowTime) - 7 && Integer.valueOf(currentTime) < Integer.valueOf(nowTime)) {
                        String TimeNew = "0";
                        if (enguserOptionInf.getCurrentStudyTime() != null) {
                            TimeNew = enguserOptionInf.getCurrentStudyTime(); // 获取此日期的新学习时间
                        }
                        if (TimeMap.containsKey(currentTime)) {
                            //包含这个日期key，时间叠加
                            String TimeHas = TimeMap.get(currentTime);//获取已存储的学习时间
                            Integer timeCount = Integer.parseInt(TimeHas) + Integer.parseInt(TimeNew);
                            TimeMap.put(currentTime, timeCount.toString());//修改时间
                        } else {
                            // 不包含此日期key,新纪录
                            TimeMap.put(currentTime, TimeNew);//存储新日期和对应学习时间
                        }
                    }
                }

                //根据TimeMap中的数据，分给两个数组，传递前台
                if (TimeMap.size() > 1) {
                    Object[] loginTimeArr = TimeMap.keySet().toArray();
                    Integer[] studyTimeArr = new Integer[loginTimeArr.length];
                    for (int i = 0; i < loginTimeArr.length; i++) {
                        studyTimeArr[i] = studyTimeArr[i] = Integer.parseInt(TimeMap.get(loginTimeArr[i]));
                    }
                    resultMap.put("studyTimeArr", studyTimeArr);
                    resultMap.put("loginTimeArr", loginTimeArr);
                }else{
                    resultMap.put("code", 0);//操作失败
                    resultMap.put("msg", "学习时间获取成功");
                    return resultMap;
                }
            }
            resultMap.put("code", 0);//操作失败
            resultMap.put("msg", "学习时间获取成功");
            return resultMap;
        }catch(Exception e){
            e.printStackTrace();
            resultMap.put("code", 1);//操作失败
            resultMap.put("msg", "操作失败");
            return resultMap;
        }
    }

    @ResponseBody
    @RequestMapping(value = "getCourseInfo")
    public List<AllWordInfomation> getAllWordInformation(HttpSession httpSession){
        return userCourseService.getAllWordInformation(httpSession);
    }

    @ResponseBody
    @RequestMapping(value = "getCourseWordInfo")
    public AllWordInfomation getCourseWordInfo(String courseId, String userId){
        return userCourseService.getwordInformation(courseId, userId);
    }


//    @ResponseBody
//    @RequestMapping(value = "/getCourseInfo", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
//    public Map<String,Object> getCourseInfo(HttpSession httpSession) {
//        Map<String,Object> resultMap=new HashMap<String, Object>();
//        try {
//            String userId=httpSession.getAttribute("id").toString();//获取到用户的id
//            enguserEntity enguserEntity=enguserService.getEntityByUserId(userId);
//
//            //根据学生id查询出所有的课程
//            if (enguserEntity.getCourseNum()>0){
//                //课程详情集合声明
//                List<courseInfoEntity> courseInfoEntities=new ArrayList<courseInfoEntity>();
//                //查询所有的课程，通过学生id和课程id进行循环查询对应的学习情况
//                List<Map<String,String>> courseMapList=enguserService.findCourseMapById(userId);
//                if (courseMapList.size()==0){
//                    resultMap.put("code",1);//操作失败
//                    resultMap.put("msg","操作失败");
//                    return resultMap;
//                }else {
//                    //循环课程
//                    for (Map<String,String> map:courseMapList) {
//                        String courseName=map.get("courseName");
//                        String courseId=map.get("courseId");
//                        courseInfoEntity courseInfoEntity=new courseInfoEntity();
//                        courseInfoEntity.setCourseName(courseName);//课程名字
//                        courseInfoEntity.setCompleteword(userChapterWordService.getCompletionWord(userId,courseId).size()+"");//已学词汇
//                        courseInfoEntity.setWaitLearningword(userChapterWordService.getWaitLearningWord(userId,courseId).size()+"");//未学词汇
//                        courseInfoEntity.setSkilledWord(userChapterWordService.getSkilledWord(userId,courseId).size()+"");//熟记词汇
//                        courseInfoEntity.setStrengthenMemoryWord(userChapterWordService.getStrengthenMemoryWord(userId,courseId).size()+"");//备忘词汇
//                        courseInfoEntity.setKillCourseHard(userChapterWordService.getKillCourseHardWord(userId,courseId).size()+"");//消灭词汇
//                        courseInfoEntity.setCourseHardWord(userChapterWordService.getCourseHardWord(userId,courseId).size()+"");//难记词汇
//                        courseInfoEntity.setCourseScore(userChapterWordService.getCourseScoreByIds(userId,courseId));//测试分数
//                        courseInfoEntities.add(courseInfoEntity);
//                    }
//                }
//                resultMap.put("courseInfoEntities",courseInfoEntities);
//            }
//            resultMap.put("code",0);//操作失败
//            resultMap.put("msg","获取成功");
//            return resultMap;
//        }catch (Exception e){
//            e.printStackTrace();
//            resultMap.put("code",1);//操作失败
//            resultMap.put("msg","操作失败");
//            return resultMap;
//        }
//    }

}
