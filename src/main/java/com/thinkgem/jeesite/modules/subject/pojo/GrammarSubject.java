package com.thinkgem.jeesite.modules.subject.pojo;

import com.thinkgem.jeesite.modules.chaptersubject.entity.ChapterSubject;
import com.thinkgem.jeesite.modules.subject.entity.Subject;
import com.thinkgem.jeesite.modules.userchaptersubject.entity.UserChapterSubject;

/**
 * description: 错题本
 * author: cuisw
 * time: 2019-08-09
 */
public class GrammarSubject {
    private Subject subject;

    private UserChapterSubject userChapterSubject;

    private ChapterSubject chapterSubject;

    public ChapterSubject getChapterSubject() {
        return chapterSubject;
    }

    public void setChapterSubject(ChapterSubject chapterSubject) {
        this.chapterSubject = chapterSubject;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public UserChapterSubject getUserChapterSubject() {
        return userChapterSubject;
    }

    public void setUserChapterSubject(UserChapterSubject userChapterSubject) {
        this.userChapterSubject = userChapterSubject;
    }
}
