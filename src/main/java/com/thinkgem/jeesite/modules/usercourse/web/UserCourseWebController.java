package com.thinkgem.jeesite.modules.usercourse.web;

import com.thinkgem.jeesite.modules.usercourse.pojo.CourseIsOpen;
import com.thinkgem.jeesite.modules.usercourse.service.UserCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping(value = "usercourse/usercourse")
public class UserCourseWebController {

    @Autowired
    private UserCourseService userCourseService;

    @ResponseBody
    @RequestMapping(value = "getCourseOpenOrClose")
    public CourseIsOpen getUserOpenCoursesAndNot(@RequestParam(required = false) String enguserId){
        return userCourseService.getUserOpenCoursesAndNot(enguserId);
    }

}
