/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.chapter.entity;

import com.thinkgem.jeesite.modules.course.entity.Course;
import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

import java.util.List;

/**
 * 章节CUDREntity
 * @author cuisw
 * @version 2019-07-27
 */
public class Chapter extends DataEntity<Chapter> {
	
	private static final long serialVersionUID = 1L;
	private String parentId;	// 父级id (课程id)
	private Integer sort;		// 排序
	private String name;		// 章节名称
	private String detail;		// 简述
	private String status;		// 章节状态
	private String blankOne;	// blank_one_
	private String blankTwo;	// blank_two_
	private String num;			//新增个数
	
	public Chapter() {
		super();
	}

	public Chapter(String id){
		super(id);
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	@Length(min=0, max=64, message="父级id (课程id)长度必须介于 0 和 64 之间")
	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	
	@Length(min=0, max=20, message="章节名称长度必须介于 0 和 20 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=50, message="简述长度必须介于 0 和 50 之间")
	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	@Length(min=0, max=2, message="章节状态长度必须介于 0 和 2 之间")
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

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }
}