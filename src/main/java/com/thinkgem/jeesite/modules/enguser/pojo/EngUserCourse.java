package com.thinkgem.jeesite.modules.enguser.pojo;

import com.thinkgem.jeesite.modules.course.entity.Course;
import com.thinkgem.jeesite.modules.enguser.entity.Enguser;

import java.util.List;

public class EngUserCourse {

    private Enguser enguser;

    private List<Course> courseList;


    public Enguser getEnguser() {
        return enguser;
    }

    public void setEnguser(Enguser enguser) {
        this.enguser = enguser;
    }

    public List<Course> getCourseList() {
        return courseList;
    }

    public void setCourseList(List<Course> courseList) {
        this.courseList = courseList;
    }
}
