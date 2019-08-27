/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.userchapter.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * userenguserEntity
 * @author cuisw
 * @version 2019-08-06
 */
public class UserChapter extends DataEntity<UserChapter> {
	
	private static final long serialVersionUID = 1L;
	private String engUserId;		// 用户id
	private String chapterId;		// 章节id
	private String studyStatus;		// 学习状态 1未开始 2 学习中 3 完成
	private String isOpen; 			// open_statu 1.open 2. close
	private String blankOne;		// blank_one_
	private String blankTwo;		// blank_two_
	
	public UserChapter() {
		super();
	}

	public UserChapter(String id){
		super(id);
	}

	public String getIsOpen() {
		return isOpen;
	}

	public void setIsOpen(String isOpen) {
		this.isOpen = isOpen;
	}

	@Length(min=0, max=64, message="用户id长度必须介于 0 和 64 之间")
	public String getEngUserId() {
		return engUserId;
	}

	public void setEngUserId(String engUserId) {
		this.engUserId = engUserId;
	}
	
	@Length(min=0, max=64, message="章节id长度必须介于 0 和 64 之间")
	public String getChapterId() {
		return chapterId;
	}

	public void setChapterId(String chapterId) {
		this.chapterId = chapterId;
	}
	
	@Length(min=0, max=2, message="学习状态 1未开始 2 学习中 3 完成长度必须介于 0 和 2 之间")
	public String getStudyStatus() {
		return studyStatus;
	}

	public void setStudyStatus(String studyStatus) {
		this.studyStatus = studyStatus;
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