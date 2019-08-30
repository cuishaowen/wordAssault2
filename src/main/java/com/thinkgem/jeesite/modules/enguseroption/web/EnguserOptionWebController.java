package com.thinkgem.jeesite.modules.enguseroption.web;

import com.thinkgem.jeesite.modules.enguseroption.service.EnguserOptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/enguser/enguser")
public class EnguserOptionWebController {

    @Autowired
    EnguserOptionService enguserOptionService;

}
