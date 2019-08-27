package com.thinkgem.jeesite.modules.chapterword.entity;

import com.thinkgem.jeesite.common.persistence.DataEntity;
import com.thinkgem.jeesite.modules.chapter.entity.Chapter;
import com.thinkgem.jeesite.modules.course.entity.Course;
import com.thinkgem.jeesite.modules.word.entity.Word;

import java.util.List;

public class CourseChapterWord extends DataEntity<CourseChapterWord> {

    private Course course;
    private Chapter chapter;
    private List<Word> words;
    private ChapterWord chapterWord;

    public ChapterWord getChapterWord() {
        return chapterWord;
    }

    public void setChapterWord(ChapterWord chapterWord) {
        this.chapterWord = chapterWord;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public Chapter getChapter() {
        return chapter;
    }

    public void setChapter(Chapter chapter) {
        this.chapter = chapter;
    }

    public List<Word> getWords() {
        return words;
    }

    public void setWords(List<Word> words) {
        this.words = words;
    }
}
