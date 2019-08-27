package com.thinkgem.jeesite.modules.wx.controller;

import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.wx.base.AppController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@RequestMapping("wx/Common")
@Controller
public class WxController extends AppController {

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
    @RequestMapping(value ="toIndex",method = RequestMethod.GET)
    public ModelAndView toIndex(){
        ModelAndView mv=new ModelAndView("wx/index");
        return mv;
    }

    /**
     * 检验登录用户信息
     */
    @RequestMapping(value ="toCheckUser/{userName}/{passWord}",method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> toCheckUser(@PathVariable String userName, @PathVariable String passWord){
       try {
           return writeResultRep();
       }catch (Exception e){
           e.printStackTrace();
           return writeResultFailure("系统错误");
       }
    }


}
