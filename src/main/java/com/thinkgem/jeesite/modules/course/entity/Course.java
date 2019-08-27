/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.course.entity;

import com.thinkgem.jeesite.modules.chapter.entity.Chapter;
import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

import java.util.List;

/**
 * 课程表Entity
 * @author cuisw
 * @version 2019-07-27
 */
public class Course extends DataEntity<Course> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 课程名称
	private String detail;		// 详情
	private String status;		// 课程状态
	private String blankOne;		// blank_one_
	private String blankTwo;		// blank_two_
	private List<Chapter> chapters;

	public List<Chapter> getChapters() {
		return chapters;
	}

	public void setChapters(List<Chapter> chapters) {
		this.chapters = chapters;
	}

	public Course() {
		super();
	}

	public Course(String id){
		super(id);
	}

	@Length(min=0, max=20, message="课程名称长度必须介于 0 和 20 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=50, message="详情长度必须介于 0 和 50 之间")
	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	@Length(min=0, max=2, message="课程状态长度必须介于 0 和 2 之间")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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