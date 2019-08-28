package com.thinkgem.jeesite.modules.wx.controller;

import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.enguser.entity.Enguser;
import com.thinkgem.jeesite.modules.enguser.service.EnguserService;
import com.thinkgem.jeesite.modules.sys.utils.MD5Util;
import com.thinkgem.jeesite.modules.wx.base.AppController;
import com.thinkgem.jeesite.modules.wx.pojo.enguserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@RequestMapping("wx/Common")
@Controller
public class WxController extends AppController {

    @Autowired
    EnguserService enguserService;

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
           //根据学生id填充enguserEntity对象传递前台
            enguserEntity enguserEntity=enguserService.getEntityByUserId(id);
            if (enguserEntity==null){
                mv=new ModelAndView("wx/login");
                return mv;
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
