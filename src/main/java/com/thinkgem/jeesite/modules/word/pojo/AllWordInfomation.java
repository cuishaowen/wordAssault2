package com.thinkgem.jeesite.modules.word.pojo;

import java.util.List;

public class AllWordInfomation {

    private String score;

    private String courseName;

    private String courseScore;//测试分数

    public String getCourseScore() {
        return courseScore;
    }

    public void setCourseScore(String courseScore) {
        this.courseScore = courseScore;
    }

    private int waitLearningWords;

    // 完成单词
    private int completionWords;

    // 消灭生词
    private int hardKilledWords;

    // 难记词汇
    private int hardWords;

    // 熟记词汇
    private int skilledWords;

    // 备忘词汇
    private int strengthenMemoryWords;

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public int getWaitLearningWords() {
        return waitLearningWords;
    }

    public void setWaitLearningWords(int waitLearningWords) {
        this.waitLearningWords = waitLearningWords;
    }

    public int getCompletionWords() {
        return completionWords;
    }

    public void setCompletionWords(int completionWords) {
        this.completionWords = completionWords;
    }

    public int getHardKilledWords() {
        return hardKilledWords;
    }

    public void setHardKilledWords(int hardKilledWords) {
        this.hardKilledWords = hardKilledWords;
    }

    public int getHardWords() {
        return hardWords;
    }

    public void setHardWords(int hardWords) {
        this.hardWords = hardWords;
    }

    public int getSkilledWords() {
        return skilledWords;
    }

    public void setSkilledWords(int skilledWords) {
        this.skilledWords = skilledWords;
    }

    public int getStrengthenMemoryWords() {
        return strengthenMemoryWords;
    }

    public void setStrengthenMemoryWords(int strengthenMemoryWords) {
        this.strengthenMemoryWords = strengthenMemoryWords;
    }
}
