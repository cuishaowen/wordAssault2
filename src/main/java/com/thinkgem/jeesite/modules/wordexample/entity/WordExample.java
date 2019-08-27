/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.wordexample.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 单词例句Entity
 * @author cuisw
 * @version 2019-08-06
 */
public class WordExample extends DataEntity<WordExample> {
	
	private static final long serialVersionUID = 1L;
	private String wordId;		// 单词id
	private String example;		// 例句
	private String blankOne;		// blank_one_
	private String blankTwo;		// blank_two_
	
	public WordExample() {
		super();
	}

	public WordExample(String id){
		super(id);
	}

	@Length(min=0, max=64, message="单词id长度必须介于 0 和 64 之间")
	public String getWordId() {
		return wordId;
	}

	public void setWordId(String wordId) {
		this.wordId = wordId;
	}
	
	@Length(min=0, max=64, message="例句id长度必须介于 0 和 64 之间")
	public String getExample() {
		return example;
	}

	public void setExample(String exampleId) {
		this.example = exampleId;
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