/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.enguser.entity;

import com.thinkgem.jeesite.modules.course.entity.Course;
import com.thinkgem.jeesite.modules.usercourse.pojo.CourseIsOpen;
import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

import java.util.List;

/**
 * 用户Entity
 * @author cuisw
 * @version 2019-08-06
 */
public class Enguser extends DataEntity<Enguser> {
	
	private static final long serialVersionUID = 1L;
	private String img;		// 头像
	private String name;		// 姓名
	private String sex;		// 性别
	private int age;		// 年龄
	private String tel;		// 手机号码
	private String weChat;		// 微信号
	private String loginName;		// 登录名
	private String password;		// 密码
	private String school;		// 学校
	private String classR;		// 班级
	private String city;		// 城市
	private String province;		// 省份
	private String blankOne;		// 预留字段1
	private String blankTwo;		// 预留字段2
	private String num;//编号
	private CourseIsOpen courseIsOpen;
	private String mp3Type;		// blank_two_

	public String getMp3Type() {
		return mp3Type;
	}

	public void setMp3Type(String mp3Type) {
		this.mp3Type = mp3Type;
	}

	public String getjPanType() {
		return jPanType;
	}

	public void setjPanType(String jPanType) {
		this.jPanType = jPanType;
	}

	private String jPanType;		// blank_two_

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public Enguser() {
		super();
	}

	public Enguser(String id){
		super(id);
	}

	public CourseIsOpen getCourseIsOpen() {
		return courseIsOpen;
	}

	public void setCourseIsOpen(CourseIsOpen courseIsOpen) {
		this.courseIsOpen = courseIsOpen;
	}

	@Length(min=0, max=255, message="头像长度必须介于 0 和 255 之间")
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	@Length(min=0, max=20, message="姓名长度必须介于 0 和 20 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=1, message="性别长度必须介于 0 和 1 之间")
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}
	
	@Length(min=0, max=11, message="年龄长度必须介于 0 和 11 之间")
	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	@Length(min=0, max=20, message="手机号码长度必须介于 0 和 20 之间")
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
	@Length(min=0, max=20, message="微信号长度必须介于 0 和 20 之间")
	public String getWeChat() {
		return weChat;
	}

	public void setWeChat(String weChat) {
		this.weChat = weChat;
	}
	
	@Length(min=0, max=50, message="登录名长度必须介于 0 和 50 之间")
	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	
	@Length(min=0, max=50, message="密码长度必须介于 0 和 50 之间")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	@Length(min=0, max=20, message="学校长度必须介于 0 和 20 之间")
	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}
	
	@Length(min=0, max=20, message="班级长度必须介于 0 和 20 之间")
	public String getClassR() {
		return classR;
	}

	public void setClassR(String classR) {
		this.classR = classR;
	}
	
	@Length(min=0, max=20, message="城市长度必须介于 0 和 20 之间")
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	@Length(min=0, max=20, message="省份长度必须介于 0 和 20 之间")
	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
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