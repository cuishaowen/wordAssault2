package com.thinkgem.jeesite.modules.enguser.web;

import com.alibaba.druid.support.json.JSONUtils;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.enguser.entity.Enguser;
import com.thinkgem.jeesite.modules.enguser.service.EnguserService;
import com.thinkgem.jeesite.modules.enguseroption.entity.EnguserOption;
import com.thinkgem.jeesite.modules.enguseroption.service.EnguserOptionService;
import com.thinkgem.jeesite.modules.sys.utils.MD5Util;
import com.thinkgem.jeesite.modules.usercourse.pojo.CourseIsOpen;
import com.thinkgem.jeesite.modules.wx.pojo.enguserEntity;
import groovy.json.JsonOutput;
import groovy.json.JsonParser;
import org.activiti.engine.impl.util.json.JSONObject;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/enguser/enguser")
public class EnguserWebController {

    @Autowired
    private EnguserService enguserService;

    @Autowired
    private EnguserOptionService enguserOptionService;

    private static Logger logger = LogManager.getLogger(EnguserWebController.class);

    @ResponseBody
    @RequestMapping(value = "login", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public Enguser loginIn(HttpServletRequest request, HttpSession httpSession) {
        String loginuser = request.getParameter("loginName");
        String pwd = request.getParameter("password");
        logger.info("loginName:" + loginuser + "password:" + pwd);
        String password = MD5Util.encode2hex(pwd);
        Enguser enguser = enguserService.getEnguser(loginuser, password);
        // 将用户保存到session内
        if (enguser != null) {//判断不用管
            httpSession.setAttribute("id",enguser.getId());
            httpSession.setAttribute("loginName", loginuser);//登录名
            httpSession.setAttribute("password", pwd);//密码
            httpSession.setAttribute("name",enguser.getName());//昵称
            httpSession.setAttribute("num",enguser.getNum());//编号
            httpSession.setAttribute("Mp2Type",enguser.getMp3Type());//发音模式
            httpSession.setAttribute("JpanType",enguser.getjPanType());//键盘模式

            //记录该用户登录相关操作
            EnguserOption enguserOption=new EnguserOption();
            enguserOption.setEngUserId(enguser.getId());//该用户id
            enguserOption.setLoginInTime(new Date());//登录时间
            enguserOption.setCurrentTime(new Date());//当前时间
            enguserOptionService.save(enguserOption);//插入一条登录记录
            Integer loginTimes=enguserOptionService.getLoginTimes(enguser.getId());//获取登录次数
            httpSession.setAttribute("optionsId",enguserOption.getId());//本次登录记录的数据id
            httpSession.setAttribute("loginTimes",loginTimes);//登录次数
            return enguser;
        }else{
            return null;
        }
    }

    @ResponseBody
    @RequestMapping(value = "loginOut", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public Map<String,Object> loginOut(@RequestParam(required = true) String optionsId){
       Map<String,Object> resultMap=new HashMap<String, Object>();
       try {
            //根据操作id查询操作记录对象，计算学习时间，添加退出登录时间
           EnguserOption enguserOption=enguserOptionService.get(optionsId);
           if (enguserOption==null){
               resultMap.put("code",1);//操作失败
               resultMap.put("msg","退出失败");
               return resultMap;
           }

           Date loginOutTime=new Date();
           enguserOption.setLoginOutTime(loginOutTime);//退出时间
           //计算学习时间
           Date loginInTime=enguserOption.getLoginInTime();//登录时间
            long diff=loginOutTime.getTime()-loginInTime.getTime();
           long nd = 1000 * 24 * 60 * 60;
           long nh = 1000 * 60 * 60;
           long nm = 1000 * 60;
            Long min=diff %nd %nh /nm;
            //相差的分钟
           enguserOption.setCurrentStudyTime(min.toString());
           enguserOptionService.save(enguserOption);//更新数据
           resultMap.put("code",0);//操作失败
           resultMap.put("msg","退出成功");
           return resultMap;

       }catch (Exception e){
           e.printStackTrace();
           resultMap.put("code",1);//操作失败
           resultMap.put("msg","退出失败");
           return resultMap;
       }
    }

    @ResponseBody
    @RequestMapping(value = "/getUserSession", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public String getUserSession(HttpServletRequest request, HttpSession httpSession) {
        JSONObject jsonObject = new JSONObject();
        if (httpSession != null) {
            jsonObject.put("id",httpSession.getAttribute("id"));//id
            jsonObject.put("name",httpSession.getAttribute("name"));//昵称
            jsonObject.put("loginName", httpSession.getAttribute("loginName"));//登录名
            jsonObject.put("password", httpSession.getAttribute("password"));//密码
            jsonObject.put("loginTimes",httpSession.getAttribute("loginTimes"));//登录次数
            jsonObject.put("num",httpSession.getAttribute("num"));//编号
            jsonObject.put("optionsId",httpSession.getAttribute("optionsId"));//操作记录id
            jsonObject.put("Mp2Type",httpSession.getAttribute("Mp2Type")); // 发音设置
            jsonObject.put("JpanType",httpSession.getAttribute("JpanType")); // 键盘设置
        }
        return jsonObject.toString();
    }

    @ResponseBody
    @RequestMapping(value = "/updatePassword", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public Map<String,Object> updatePassword(String newPassword,String loginName, HttpSession httpSession) {
        Map<String,Object> resultMap=new HashMap<String, Object>();
        try {
            if (StringUtils.isEmpty(newPassword)||StringUtils.isEmpty(loginName)){
                resultMap.put("code",1);//操作失败
                resultMap.put("msg","参数为空");
            }

            String userId=httpSession.getAttribute("id").toString();//获取到用户的id
            String SessionloginName=httpSession.getAttribute("loginName").toString();//原本登录名
            String oldPassword=httpSession.getAttribute("password").toString();//原本密码

            if (loginName.equals(SessionloginName)){
                //表明用户名正确,修改session中的密码，以及数据库中的密码
                httpSession.setAttribute("password",newPassword);
                Enguser enguser=enguserService.get(userId);
                logger.info("loginName:" + loginName + "password:" + newPassword);
                enguser.setPassword(MD5Util.encode2hex(newPassword));
                enguserService.update(enguser);
            }
            resultMap.put("code",0);//操作失败
            resultMap.put("msg","修改密码成功，请重新登录");
            return resultMap;

        }catch (Exception e){
            e.printStackTrace();
            resultMap.put("code",1);//操作失败
            resultMap.put("msg","操作失败");
            return resultMap;
        }
    }

    @ResponseBody
    @RequestMapping(value = "/getUserInfo", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public Map<String,Object> getUserInfo(HttpServletRequest request, HttpSession httpSession) {
        Map<String,Object> resultmap=new HashMap<String, Object>();
        if (httpSession != null) {
            String id=httpSession.getAttribute("id").toString();
            Enguser entity = enguserService.get(id);
            if (entity==null){
              //说明没有此对象
                resultmap.put("code",1);
                resultmap.put("msg","用户信息无效，请联系管理员");
            }else {
                resultmap.put("code",0);
                resultmap.put("msg","查询成功");
                resultmap.put("kahao",entity.getNum());
                resultmap.put("xuexiao",entity.getSchool());
                resultmap.put("city",entity.getCity());
                resultmap.put("province",entity.getProvince());
                resultmap.put("weixin",entity.getWeChat());
                resultmap.put("banji",entity.getClassR());
                resultmap.put("phone",entity.getTel());
                resultmap.put("sex",entity.getSex());
                resultmap.put("mp3Type",entity.getMp3Type());
                resultmap.put("jPanType",entity.getjPanType());
            }
        }
        return resultmap;
    }

    @ResponseBody
    @RequestMapping(value = "/updateUserInfo", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public Map<String,Object> updateUserInfo(HttpServletRequest request, HttpSession httpSession) {
        Map<String,Object> resultMap=new HashMap<String, Object>();
    try {
        String xuexiao = request.getParameter("xuexiao");
        String province = request.getParameter("province");
        String city = request.getParameter("city");
        String weixin = request.getParameter("weixin");
        String banji = request.getParameter("banji");
        String phone = request.getParameter("phone");
        String sex = request.getParameter("sex");
        String jpanType = request.getParameter("jpanType");
        String mapType = request.getParameter("mapType");

        String id=httpSession.getAttribute("id").toString();
        Enguser entity = enguserService.get(id);
        if (entity!=null){
            entity.setjPanType(jpanType);
            entity.setMp3Type(mapType);
            entity.setSex(sex);
            entity.setCity(city);
            entity.setClassR(banji);
            entity.setWeChat(weixin);
            entity.setTel(phone);
            entity.setProvince(province);
            entity.setSchool(xuexiao);
            enguserService.update(entity);
        }

        //更新httpSession里面的软键盘和发音类型
        httpSession.setAttribute("Mp2Type",entity.getMp3Type());//发音模式
        httpSession.setAttribute("JpanType",entity.getjPanType());//键盘模式

        resultMap.put("code",0);//操作成功
        resultMap.put("msg","操作成功");
        return resultMap;

        }catch (Exception e){
            e.printStackTrace();
            resultMap.put("code",1);//操作失败
            resultMap.put("msg","操作失败");
            return resultMap;
        }

    }
}
