package com.thinkgem.jeesite.modules.subjectversion.web;

import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.subjectversion.entity.SubjectVersion;
import com.thinkgem.jeesite.modules.subjectversion.service.SubjectVersionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "subjectVersion")
public class SubjectVersionWebController {
    @Autowired
    private SubjectVersionService subjectVersionService;

    @ResponseBody
    @RequestMapping(value = "list")
    public List<SubjectVersion>  list(SubjectVersion subjectVersion) {
        return subjectVersionService.findList(subjectVersion);
    }

    @ResponseBody
    @RequestMapping(value = "get")
    public SubjectVersion get(String id) {
        SubjectVersion entity = null;
        if (StringUtils.isNotBlank(id)){
            entity = subjectVersionService.get(id);
        }
        if (entity == null){
            entity = new SubjectVersion();
        }
        return entity;
    }
}
