/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.subjectversion.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 语法题版本Entity
 * @author cuisw
 * @version 2019-09-04
 */
public class SubjectVersion extends DataEntity<SubjectVersion> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 语法题名称
	private String type;		// 类型
	private String blankOne;		// blank_one_
	private String blankTwo;		// blank_two_
	
	public SubjectVersion() {
		super();
	}

	public SubjectVersion(String id){
		super(id);
	}

	@Length(min=0, max=64, message="语法题名称长度必须介于 0 和 64 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=10, message="类型长度必须介于 0 和 10 之间")
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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