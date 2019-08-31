package com.thinkgem.jeesite.modules.userchapter.web;

import com.thinkgem.jeesite.modules.chapter.entity.Chapter;
import com.thinkgem.jeesite.modules.chapter.pojo.ChapterInformation;
import com.thinkgem.jeesite.modules.chapter.service.ChapterService;
import com.thinkgem.jeesite.modules.userchapter.service.UserChapterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "userChapter/userChapter")
public class UserChapterWebController {

    @Autowired
    private UserChapterService userChapterService;
    @Autowired
    private ChapterService chapterService;

    @ResponseBody
    @RequestMapping(value = "getUserChapterList")
    public List<ChapterInformation> getUserChapterList(String courseId, String userId){
        return userChapterService.getUserChapterList(courseId,userId);
    }

    @ResponseBody
    @RequestMapping(value = "updateUserChapter")
    public void updateUserChapter(String chapterId, String userId, String studyStatus, String isOpen){
        userChapterService.updateStatus(chapterId,userId,studyStatus,isOpen);
    }

    @ResponseBody
    @RequestMapping(value = "getNextChapter")
    public Chapter getNextChapter(String courseId,String chapterId){
        return chapterService.getNextChapter(courseId, chapterId);
    }

}
