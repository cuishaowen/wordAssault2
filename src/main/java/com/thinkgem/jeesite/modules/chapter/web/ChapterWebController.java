package com.thinkgem.jeesite.modules.chapter.web;

import com.thinkgem.jeesite.modules.chapter.entity.Chapter;
import com.thinkgem.jeesite.modules.chapter.service.ChapterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "chapter")
public class ChapterWebController {

    @Autowired
    private ChapterService chapterService;

    @ResponseBody
    @RequestMapping(value = "getList")
    public List<Chapter> getList(String courseId){
        Chapter chapter = new Chapter();
        chapter.setParentId(courseId);
        return chapterService.findList(chapter);
    }

    @ResponseBody
    @RequestMapping(value = "get")
    public Chapter get(String chapterId){
        return chapterService.get(chapterId);
    }
}
