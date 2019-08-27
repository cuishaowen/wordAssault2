package com.thinkgem.jeesite.modules.course.web;

import com.thinkgem.jeesite.modules.course.entity.Course;
import com.thinkgem.jeesite.modules.course.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value ="course/course")
public class CourseWebController {

    @Autowired
    private CourseService courseService;

    @RequestMapping(value = "allCourses")
    @ResponseBody
    public List<Course> courses(){
        return courseService.findList(null);
    }
}
