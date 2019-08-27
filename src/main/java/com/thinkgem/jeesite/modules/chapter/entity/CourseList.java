package com.thinkgem.jeesite.modules.chapter.entity;

import com.thinkgem.jeesite.modules.course.entity.Course;

import java.util.List;

public class CourseList {

    private List<Course> courses;

    public List<Course> getCourses() {
        return courses;
    }

    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }
}
