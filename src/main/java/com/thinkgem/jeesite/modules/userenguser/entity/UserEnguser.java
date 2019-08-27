/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.userenguser.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * userenguserEntity
 * @author cuisw
 * @version 2019-08-06
 */
public class UserEnguser extends DataEntity<UserEnguser> {
	
	private static final long serialVersionUID = 1L;
	private String userId;		// 校长id
	private String enguserId;		// 用户id
	private String blankOne;		// blank_one_
	private String blankTwo;		// blank_two_
	
	public UserEnguser() {
		super();
	}

	public UserEnguser(String id){
		super(id);
	}

	@Length(min=0, max=64, message="校长id长度必须介于 0 和 64 之间")
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	@Length(min=0, max=64, message="用户id长度必须介于 0 和 64 之间")
	public String getEnguserId() {
		return enguserId;
	}

	public void setEnguserId(String enguserId) {
		this.enguserId = enguserId;
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