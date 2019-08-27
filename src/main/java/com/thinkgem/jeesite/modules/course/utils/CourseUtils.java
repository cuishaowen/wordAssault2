package com.thinkgem.jeesite.modules.course.utils;

import com.thinkgem.jeesite.common.utils.SpringContextHolder;
import com.thinkgem.jeesite.modules.course.entity.Course;
import com.thinkgem.jeesite.modules.course.service.CourseService;

import java.util.List;

public class CourseUtils {

    public static List<Course> getCourse(){
        CourseService courseService = SpringContextHolder.getBean(CourseService.class);
        return courseService.findList(null);
    }

    public static Course get(String id){
        CourseService courseService = SpringContextHolder.getBean(CourseService.class);
        return courseService.get(id);
    }
}
