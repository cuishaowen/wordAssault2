package com.thinkgem.jeesite.modules.usersubject.pojo;

import com.thinkgem.jeesite.modules.subject.entity.Subject;
import com.thinkgem.jeesite.modules.usersubject.entity.UserSubject;

public class UserSubjectPojo {

    private UserSubject userSubject;

    private Subject subject;

    public UserSubject getUserSubject() {
        return userSubject;
    }

    public void setUserSubject(UserSubject userSubject) {
        this.userSubject = userSubject;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }
}
