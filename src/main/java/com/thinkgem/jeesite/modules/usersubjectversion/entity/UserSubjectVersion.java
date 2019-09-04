/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.usersubjectversion.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 用户题目版本Entity
 * @author cuisw
 * @version 2019-09-03
 */
public class UserSubjectVersion extends DataEntity<UserSubjectVersion> {
	
	private static final long serialVersionUID = 1L;
	private String userId;		// 用户id
	private String subjectVersionName;		// 题目版本名称
	private String subjectType;		// 题目类型
	private String score;		// 得分
	private String blankOne;		// blank_one_
	private String blankTwo;		// blank_two_
	
	public UserSubjectVersion() {
		super();
	}

	public UserSubjectVersion(String id){
		super(id);
	}

	@Length(min=0, max=64, message="用户id长度必须介于 0 和 64 之间")
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	@Length(min=0, max=100, message="题目版本名称长度必须介于 0 和 100 之间")
	public String getSubjectVersionName() {
		return subjectVersionName;
	}

	public void setSubjectVersionName(String subjectVersionName) {
		this.subjectVersionName = subjectVersionName;
	}
	
	@Length(min=0, max=20, message="题目类型长度必须介于 0 和 20 之间")
	public String getSubjectType() {
		return subjectType;
	}

	public void setSubjectType(String subjectType) {
		this.subjectType = subjectType;
	}
	
	@Length(min=0, max=20, message="得分长度必须介于 0 和 20 之间")
	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}
	
	@Length(min=0, max=255, message="blank_one_长度必须介于 0 和 255 之间")
	public String getBlankOne() {
		return blankOne;
	}

	public void setBlankOne(String blankOne) {
		this.blankOne = blankOne;
	}
	
	@Length(min=0, max=255, message="blank_two_长度必须介于 0 和 255 之间")
	public String getBlankTwo() {
		return blankTwo;
	}

	public void setBlankTwo(String blankTwo) {
		this.blankTwo = blankTwo;
	}
	
}