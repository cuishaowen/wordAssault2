/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.enguseroption.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * enguseroptionEntity
 * @author cuisw
 * @version 2019-08-10
 */
public class EnguserOption extends DataEntity<EnguserOption> {
	
	private static final long serialVersionUID = 1L;
	private String engUserId;		// 用户id
	private Date loginInTime;		// 登入时间
	private Date loginOutTime;		// 登出时间
	private Date currentTime;		// 当前时间
	private String autoLoginOut;		// T 是 F 不是
	private Integer currentStudyTime;		// 本次学习时间
	private String blankOne;		// blank_one_
	private String blankTwo;		// blank_two_
	
	public EnguserOption() {
		super();
	}

	public EnguserOption(String id){
		super(id);
	}

	@Length(min=0, max=64, message="用户id长度必须介于 0 和 64 之间")
	public String getEngUserId() {
		return engUserId;
	}

	public void setEngUserId(String engUserId) {
		this.engUserId = engUserId;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getLoginInTime() {
		return loginInTime;
	}

	public void setLoginInTime(Date loginInTime) {
		this.loginInTime = loginInTime;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getLoginOutTime() {
		return loginOutTime;
	}

	public void setLoginOutTime(Date loginOutTime) {
		this.loginOutTime = loginOutTime;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getCurrentTime() {
		return currentTime;
	}

	public void setCurrentTime(Date currentTime) {
		this.currentTime = currentTime;
	}
	
	@Length(min=0, max=1, message="T 是 F 不是长度必须介于 0 和 1 之间")
	public String getAutoLoginOut() {
		return autoLoginOut;
	}

	public void setAutoLoginOut(String autoLoginOut) {
		this.autoLoginOut = autoLoginOut;
	}

	public Integer getCurrentStudyTime() {
		return currentStudyTime;
	}

	public void setCurrentStudyTime(Integer currentStudyTime) {
		this.currentStudyTime = currentStudyTime;
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