package com.thinkgem.jeesite.modules.userenguser.pojo;
import com.thinkgem.jeesite.modules.enguser.entity.Enguser;
import com.thinkgem.jeesite.modules.usercourse.pojo.CourseIsOpen;

public class EngUserJoinCourses {

    private Enguser enguser;

    private CourseIsOpen courseIsOpen;

    public Enguser getEnguser() {
        return enguser;
    }

    public void setEnguser(Enguser enguser) {
        this.enguser = enguser;
    }

    public CourseIsOpen getCourseIsOpen() {
        return courseIsOpen;
    }

    public void setCourseIsOpen(CourseIsOpen courseIsOpen) {
        this.courseIsOpen = courseIsOpen;
    }
}
