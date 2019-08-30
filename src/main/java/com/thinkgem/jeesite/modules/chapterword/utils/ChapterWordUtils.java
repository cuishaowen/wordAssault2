package com.thinkgem.jeesite.modules.chapterword.utils;

import com.thinkgem.jeesite.common.utils.SpringContextHolder;
import com.thinkgem.jeesite.modules.chapter.entity.Chapter;
import com.thinkgem.jeesite.modules.chapter.service.ChapterService;
import com.thinkgem.jeesite.modules.chapterword.entity.ChapterWord;
import com.thinkgem.jeesite.modules.chapterword.entity.CourseChapterWord;
import com.thinkgem.jeesite.modules.chapterword.service.ChapterWordService;
import com.thinkgem.jeesite.modules.course.entity.Course;
import com.thinkgem.jeesite.modules.course.service.CourseService;
import com.thinkgem.jeesite.modules.word.entity.Word;
import com.thinkgem.jeesite.modules.word.service.WordService;

import java.util.ArrayList;
import java.util.List;

public class ChapterWordUtils {


    public static CourseChapterWord getCourseChapterWordList(ChapterWord chapterWord){
        //获取所有的课程信息 章节信息 以及 单词信息
        CourseService courseService = SpringContextHolder.getBean(CourseService.class);
        ChapterService chapterService = SpringContextHolder.getBean(ChapterService.class);
        WordService wordService = SpringContextHolder.getBean(WordService.class);
        CourseChapterWord courseChapterWordInf = new CourseChapterWord();
        courseChapterWordInf.setChapterWord(chapterWord);

        String chapterId = chapterWord.getChapterId();
        String wordIds = chapterWord.getWordIds();

        // 查询章节信息
        Chapter chapter = chapterService.get(chapterId);
        courseChapterWordInf.setChapter(chapter);

        // 查询课程信息
        Course course = courseService.get(chapter.getParentId());
        courseChapterWordInf.setCourse(course);

        // 获取单词信息
        List<Word> words = new ArrayList<Word>();
        if (wordIds == null){
            wordIds = "";
        }
        String[] arr = wordIds.split(",");
        for (int i = 0; i < arr.length; i++){
            Word word = wordService.get(arr[i]);
            words.add(word);
        }
        courseChapterWordInf.setWords(words);
        return courseChapterWordInf;
    }
}
