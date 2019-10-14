package com.thinkgem.jeesite.modules.usercourse.pojo;

import com.thinkgem.jeesite.modules.course.entity.Course;
import com.thinkgem.jeesite.modules.usercourse.entity.UserCourse;

public class CourseAndUserCourse {

    private UserCourse userCourse;

    private Course course;

    public UserCourse getUserCourse() {
        return userCourse;
    }

    public void setUserCourse(UserCourse userCourse) {
        this.userCourse = userCourse;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }
}
