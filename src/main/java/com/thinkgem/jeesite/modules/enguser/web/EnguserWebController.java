package com.thinkgem.jeesite.modules.enguser.web;

import com.alibaba.druid.support.json.JSONUtils;
import com.thinkgem.jeesite.modules.enguser.entity.Enguser;
import com.thinkgem.jeesite.modules.enguser.service.EnguserService;
import com.thinkgem.jeesite.modules.sys.utils.MD5Util;
import groovy.json.JsonOutput;
import groovy.json.JsonParser;
import org.activiti.engine.impl.util.json.JSONObject;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/enguser/enguser")
public class EnguserWebController {

    @Autowired
    private EnguserService enguserService;

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
            httpSession.setAttribute("loginName", loginuser);
            httpSession.setAttribute("password", pwd);
            httpSession.setAttribute("name",enguser.getName());
            return enguser;
        }else{
            return null;
        }
    }

    @ResponseBody
    @RequestMapping(value = "/getUserSession", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public String getUserSession(HttpServletRequest request, HttpSession httpSession) {
        JSONObject jsonObject = new JSONObject();
        if (httpSession != null) {
            jsonObject.put("id",httpSession.getAttribute("id"));
            jsonObject.put("name",httpSession.getAttribute("name"));
            jsonObject.put("loginName", httpSession.getAttribute("loginName"));
            jsonObject.put("password", httpSession.getAttribute("password"));
            jsonObject.put("loginTime",httpSession.getAttribute("loginTime"));
            jsonObject.put("num",httpSession.getAttribute("num"));
        }
        return jsonObject.toString();
    }
}
