/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.chapterword.entity;

import com.thinkgem.jeesite.modules.word.entity.Word;
import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

import java.util.List;

/**
 * 章节单词Entity
 * @author cuisw
 * @version 2019-08-02
 */
public class ChapterWord extends DataEntity<ChapterWord> {
	
	private static final long serialVersionUID = 1L;
	private String courseId;  	// 课程id
	private String chapterId; 	// 章节id
	private String wordIds;		// 单词id
	private String blankOne;	// blank_one_
	private String blankTwo;	// blank_two_

	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public ChapterWord() {
		super();
	}

	public ChapterWord(String id){
		super(id);
	}

	@Length(min=0, max=64, message="章节id长度必须介于 0 和 64 之间")
	public String getChapterId() {
		return chapterId;
	}

	public void setChapterId(String chapterId) {
		this.chapterId = chapterId;
	}
	
	@Length(min=0, max=4000, message="单词id长度必须介于 0 和 4000 之间")
	public String getWordIds() {
		return wordIds;
	}

	public void setWordIds(String wordIds) {
		this.wordIds = wordIds;
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