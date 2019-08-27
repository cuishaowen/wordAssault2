/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.chapterexample.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * chapterexampleEntity
 * @author cuisw
 * @version 2019-08-07
 */
public class ChapterExample extends DataEntity<ChapterExample> {
	
	private static final long serialVersionUID = 1L;
	private String courseId;		// 课程id
	private String chapterId;		// 章节id
	private String wordExampleId;		// 单词例句id
	private String blankOne;		// blank_one_
	private String blankTwo;		// blank_two_
	
	public ChapterExample() {
		super();
	}

	public ChapterExample(String id){
		super(id);
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
	
	@Length(min=0, max=64, message="单词例句id长度必须介于 0 和 64 之间")
	public String getWordExampleId() {
		return wordExampleId;
	}

	public void setWordExampleId(String wordExampleId) {
		this.wordExampleId = wordExampleId;
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