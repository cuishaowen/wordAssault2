package com.thinkgem.jeesite.modules.usercourse.pojo;

import com.thinkgem.jeesite.modules.course.entity.Course;

import java.util.List;

public class CourseIsOpen {

    private List<Course> OpenCourseList;

    private List<Course> NotOpenCouseList;

    public List<Course> getOpenCourseList() {
        return OpenCourseList;
    }

    public void setOpenCourseList(List<Course> openCourseList) {
        OpenCourseList = openCourseList;
    }

    public List<Course> getNotOpenCouseList() {
        return NotOpenCouseList;
    }

    public void setNotOpenCouseList(List<Course> notOpenCouseList) {
        NotOpenCouseList = notOpenCouseList;
    }
}
