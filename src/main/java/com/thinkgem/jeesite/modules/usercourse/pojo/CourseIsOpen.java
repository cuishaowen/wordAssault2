package com.thinkgem.jeesite.modules.usercourse.pojo;

import com.thinkgem.jeesite.modules.course.entity.Course;

import java.util.List;

public class CourseIsOpen {

    private List<CourseAndUserCourse> OpenCourseList;

    private List<Course> NotOpenCouseList;

    public List<CourseAndUserCourse> getOpenCourseList() {
        return OpenCourseList;
    }

    public void setOpenCourseList(List<CourseAndUserCourse> openCourseList) {
        OpenCourseList = openCourseList;
    }

    public List<Course> getNotOpenCouseList() {
        return NotOpenCouseList;
    }

    public void setNotOpenCouseList(List<Course> notOpenCouseList) {
        NotOpenCouseList = notOpenCouseList;
    }
}
