package com.thinkgem.jeesite.modules.wx.pojo;

import java.util.Date;

public class enguserEntity {
    private String id;//id
    private String userName;//用户昵称
    private Date createDate;//开发日期
    private int numNo;//创建编号
    private int courseNum;//开通课程数目
    //当前日期
    private Date nowDate=new Date();

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public int getNumNo() {
        return numNo;
    }

    public void setNumNo(int numNo) {
        this.numNo = numNo;
    }

    public int getCourseNum() {
        return courseNum;
    }

    public void setCourseNum(int courseNum) {
        this.courseNum = courseNum;
    }

    public Date getNowDate() {
        return nowDate;
    }

    public void setNowDate(Date nowDate) {
        this.nowDate = nowDate;
    }
}
