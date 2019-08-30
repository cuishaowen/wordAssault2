package com.thinkgem.jeesite.modules.wx.pojo;

import java.io.Serializable;

public class courseInfoEntity implements Serializable {

    private String courseName;//课程名称
    private String completeword;//已学词汇
    private String waitLearningword;//未学词汇
    private String skilledWord;//熟词集
    private String strengthenMemoryWord;//备忘词汇
    private String killCourseHard;//消灭词汇
    private String courseHardWord;//生词本

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCompleteword() {
        return completeword;
    }

    public void setCompleteword(String completeword) {
        this.completeword = completeword;
    }

    public String getWaitLearningword() {
        return waitLearningword;
    }

    public void setWaitLearningword(String waitLearningword) {
        this.waitLearningword = waitLearningword;
    }

    public String getSkilledWord() {
        return skilledWord;
    }

    public void setSkilledWord(String skilledWord) {
        this.skilledWord = skilledWord;
    }

    public String getStrengthenMemoryWord() {
        return strengthenMemoryWord;
    }

    public void setStrengthenMemoryWord(String strengthenMemoryWord) {
        this.strengthenMemoryWord = strengthenMemoryWord;
    }

    public String getKillCourseHard() {
        return killCourseHard;
    }

    public void setKillCourseHard(String killCourseHard) {
        this.killCourseHard = killCourseHard;
    }

    public String getCourseHardWord() {
        return courseHardWord;
    }

    public void setCourseHardWord(String courseHardWord) {
        this.courseHardWord = courseHardWord;
    }
}
