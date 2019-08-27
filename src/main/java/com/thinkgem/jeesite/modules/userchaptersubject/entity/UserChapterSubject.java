/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.userchaptersubject.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * userchaptersubjectEntity
 * @author cuisw
 * @version 2019-08-06
 */
public class UserChapterSubject extends DataEntity<UserChapterSubject> {
	
	private static final long serialVersionUID = 1L;
	private String engUserId;			// 用户id
	private String courseId;			// 课程id
	private String chapterId;			// 章节id
	private String subjectId;	        // 题目id
	private String studyStatus;			// 用户章节题目的学习状态 1.待学习 2.待复习 3.已完成
	private String isMemo;				// 是否备忘 T 是 F 不是
	private String isWrong;				// 是否错题 T 是  F 不是
	private String wrongTime;			// 错误次数
	private String blankOne;			// blank_one_
	private String blankTwo;			// blank_two_
	
	public UserChapterSubject() {
		super();
	}

	public UserChapterSubject(String id){
		super(id);
	}

	@Length(min=0, max=64, message="用户id长度必须介于 0 和 64 之间")
	public String getEngUserId() {
		return engUserId;
	}

	public void setEngUserId(String engUserId) {
		this.engUserId = engUserId;
	}

	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public String getChapterId() {
		return chapterId;
	}

	public void setChapterId(String chapterId) {
		this.chapterId = chapterId;
	}

	public String getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}

	@Length(min=0, max=64, message = "状态长度必须介于 0 和 2 之间")
	public String getStudyStatus() {
		return studyStatus;
	}

	public void setStudyStatus(String studyStatus) {
		this.studyStatus = studyStatus;
	}
	
	@Length(min=0, max=1, message="是否备忘 true 是 false 不是长度必须介于 0 和 1 之间")
	public String getIsMemo() {
		return isMemo;
	}

	public void setIsMemo(String isMemo) {
		this.isMemo = isMemo;
	}
	
	@Length(min=0, max=1, message="是否错题 true 是  flase 不是长度必须介于 0 和 1 之间")
	public String getIsWrong() {
		return isWrong;
	}

	public void setIsWrong(String isWrong) {
		this.isWrong = isWrong;
	}
	
	@Length(min=0, max=11, message="错误次数长度必须介于 0 和 11 之间")
	public String getWrongTime() {
		return wrongTime;
	}

	public void setWrongTime(String wrongTime) {
		this.wrongTime = wrongTime;
	}
	
	public String getBlankOne() {
		return blankOne;
	}

	public void setBlankOne(String blankOne) {
		this.blankOne = blankOne;
	}
	
	public String getBlankTwo() {
		return blankTwo;
	}

	public void setBlankTwo(String blankTwo) {
		this.blankTwo = blankTwo;
	}
	
}