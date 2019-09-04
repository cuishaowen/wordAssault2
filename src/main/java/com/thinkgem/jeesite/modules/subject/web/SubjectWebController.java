package com.thinkgem.jeesite.modules.subject.web;

import com.thinkgem.jeesite.modules.subject.entity.Subject;
import com.thinkgem.jeesite.modules.subject.service.SubjectService;
import com.thinkgem.jeesite.modules.sys.entity.Dict;
import com.thinkgem.jeesite.modules.sys.service.DictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "subject")
public class SubjectWebController {

    @Autowired
    private SubjectService subjectService;
    @Autowired
    private DictService dictService;

    @ResponseBody
    @RequestMapping(value = "getList")
    public List<Subject> getList(Subject subject){
        return subjectService.findList(subject);
    }

    @ResponseBody
    @RequestMapping(value = "getSubjectVersion")
    public List<String> getSubjectVersion(){
        return subjectService.getSubjectVersion();
    }

    @ResponseBody
    @RequestMapping(value = "getSubjectType")
    public List<Dict> getSubjectType(String type){
        return subjectService.getDictList(type);
    }

}
