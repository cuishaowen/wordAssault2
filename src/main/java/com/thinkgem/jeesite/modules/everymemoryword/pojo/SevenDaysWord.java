package com.thinkgem.jeesite.modules.everymemoryword.pojo;

import java.util.Date;

public class SevenDaysWord {

    private Integer wordsnum ;

    private String studyDate;

    private Integer totalTime;

    public Integer getTotalTime() {
        return totalTime;
    }

    public void setTotalTime(Integer totalTime) {
        this.totalTime = totalTime;
    }

    public Integer getWordsnum() {
        return wordsnum;
    }

    public void setWordsnum(Integer wordsnum) {
        this.wordsnum = wordsnum;
    }

    public String getStudyDate() {
        return studyDate;
    }

    public void setStudyDate(String studyDate) {
        this.studyDate = studyDate;
    }
}
