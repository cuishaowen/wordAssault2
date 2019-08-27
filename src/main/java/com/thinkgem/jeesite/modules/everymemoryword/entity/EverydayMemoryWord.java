/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.everymemoryword.entity;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * everymemorywordEntity
 * @author cuisw
 * @version 2019-08-10
 */
public class EverydayMemoryWord extends DataEntity<EverydayMemoryWord> {
	
	private static final long serialVersionUID = 1L;
	private Date everyday;		// 每日日期
	private String enguserId;		// 用户id
	private String courseId;		// 课程id
	private String chapterId;		// 章节id
	private String wordId;		// 单词id
	private String blankOne;		// blank_one_
	private String blankTwo;		// blank_two_
	
	public EverydayMemoryWord() {
		super();
	}

	public EverydayMemoryWord(String id){
		super(id);
	}

	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="每日日期不能为空")
	public Date getEveryday() {
		return everyday;
	}

	public void setEveryday(Date everyday) {
		this.everyday = everyday;
	}
	
	@Length(min=0, max=64, message="用户id长度必须介于 0 和 64 之间")
	public String getEnguserId() {
		return enguserId;
	}

	public void setEnguserId(String enguserId) {
		this.enguserId = enguserId;
	}
	
	@Length(min=0, max=64, message="课程id长度必须介于 0 和 64 之间")
	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	
	@Length(min=0, max=64, message="章节id长度必须介于 0 和 64 之间")
	public String getChapterId() {
		return chapterId;
	}

	public void setChapterId(String chapterId) {
		this.chapterId = chapterId;
	}
	
	@Length(min=0, max=64, message="单词id长度必须介于 0 和 64 之间")
	public String getWordId() {
		return wordId;
	}

	public void setWordId(String wordId) {
		this.wordId = wordId;
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