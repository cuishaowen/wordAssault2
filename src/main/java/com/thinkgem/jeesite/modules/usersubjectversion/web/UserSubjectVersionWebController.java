package com.thinkgem.jeesite.modules.usersubjectversion.web;

import com.thinkgem.jeesite.modules.usersubjectversion.entity.UserSubjectVersion;
import com.thinkgem.jeesite.modules.usersubjectversion.service.UserSubjectVersionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "userSubjectVersion")
public class UserSubjectVersionWebController {

    @Autowired
    private UserSubjectVersionService userSubjectVersionService;

    @ResponseBody
    @RequestMapping(value = "getList")
    public List<UserSubjectVersion> userSubjectVersions(String subjectType, String subjectVersionName){
        UserSubjectVersion userSubjectVersion = new UserSubjectVersion();
        userSubjectVersion.setSubjectType(subjectType);
        userSubjectVersion.setSubjectVersionName(subjectVersionName);

        return userSubjectVersionService.findList(userSubjectVersion);
    }

    @ResponseBody
    @RequestMapping(value = "save")
    public void save(UserSubjectVersion userSubjectVersion){
        userSubjectVersionService.save(userSubjectVersion);
    }
}
