package com.thinkgem.jeesite.modules.chapter.utils;

import com.thinkgem.jeesite.common.utils.SpringContextHolder;
import com.thinkgem.jeesite.modules.chapter.entity.Chapter;
import com.thinkgem.jeesite.modules.chapter.service.ChapterService;

import java.util.List;

public class ChapterUtils {

    public static List<Chapter> getChapter(){
        ChapterService chapterService = SpringContextHolder.getBean(ChapterService.class);
        return chapterService.findList(null);
    }

    public static List<Chapter> getChapterByCourseId(String courseId){
        ChapterService chapterService = SpringContextHolder.getBean(ChapterService.class);
        Chapter c = new Chapter();
        c.setParentId(courseId);
        return chapterService.findList(c);
    }

    public static Chapter getChapterByChapterId(String chapter){
        ChapterService chapterService = SpringContextHolder.getBean(ChapterService.class);
        return chapterService.get(chapter);
    }
}
