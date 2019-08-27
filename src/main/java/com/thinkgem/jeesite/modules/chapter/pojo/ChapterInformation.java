package com.thinkgem.jeesite.modules.chapter.pojo;

import com.thinkgem.jeesite.modules.chapter.entity.Chapter;
import com.thinkgem.jeesite.modules.userchapter.entity.UserChapter;

public class ChapterInformation {

    private Chapter chapter;

    private UserChapter userChapter;

    public Chapter getChapter() {
        return chapter;
    }

    public void setChapter(Chapter chapter) {
        this.chapter = chapter;
    }

    public UserChapter getUserChapter() {
        return userChapter;
    }

    public void setUserChapter(UserChapter userChapter) {
        this.userChapter = userChapter;
    }
}
