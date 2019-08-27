/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.usercourse.entity;

import com.thinkgem.jeesite.modules.course.entity.Course;
import com.thinkgem.jeesite.modules.usercourse.pojo.CourseIsOpen;
import org.hibernate.validator.constraints.Length;
import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * usercourseEntity
 * @author cuisw
 * @version 2019-08-07
 */
public class UserCourse extends DataEntity<UserCourse> {
	
	private static final long serialVersionUID = 1L;
	private String engUserId;		// 用户id
	private String courseId;		// 课程id
	private String isOpen;		// 是否开通 1 开通 2 未开通
	private String status;		// 用户课程状态
	private Date endDate;		// 结束时间
	private String blankOne;		// blank_one_
	private String blankTwo;		// blank_two_

	private CourseIsOpen courseIsOpen;  // 开通课程和未开通课程

	public CourseIsOpen getCourseIsOpen() {
		return courseIsOpen;
	}

	public void setCourseIsOpen(CourseIsOpen courseIsOpen) {
		this.courseIsOpen = courseIsOpen;
	}

	public UserCourse() {
		super();
	}

	public UserCourse(String id){
		super(id);
	}

	@Length(min=0, max=64, message="用户id长度必须介于 0 和 64 之间")
	public String getEngUserId() {
		return engUserId;
	}

	public void setEngUserId(String engUserId) {
		this.engUserId = engUserId;
	}
	
	@Length(min=0, max=64, message="课程id长度必须介于 0 和 64 之间")
	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	
	@Length(min=0, max=2, message="是否开通 1 开通 2 未开通长度必须介于 0 和 2 之间")
	public String getIsOpen() {
		return isOpen;
	}

	public void setIsOpen(String isOpen) {
		this.isOpen = isOpen;
	}
	
	@Length(min=0, max=2, message="用户课程状态长度必须介于 0 和 2 之间")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
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