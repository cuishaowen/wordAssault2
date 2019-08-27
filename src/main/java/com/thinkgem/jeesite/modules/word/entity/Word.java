/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.word.entity;

import com.thinkgem.jeesite.common.utils.excel.annotation.ExcelField;
import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

import java.io.Serializable;

/**
 * 单词管理Entity
 * @author cuisw
 * @version 2019-07-30
 */
public class Word extends DataEntity<Word> implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private String english;			// 英语单词
	private String phoneticTranscription;		// 音标
	private String engVoice;		// 英式语音
	private String ameVoice;		// 美式语音
	private String img;				// 图片
	private String examples;		// 例句
	private String chinese;			// 中文释义
	private String blankOne;		// blank_one_
	private String blankTwo;		// blank_two_
	private String blankThree;		// blank_three_
	private String blankFour;		// blank_four_
	
	public Word() {
		super();
	}

	public Word(String id){
		super(id);
	}

	@Length(min=0, max=255, message="英语单词长度必须介于 0 和 255 之间")
	@ExcelField(title = "英文单词", align = 1, sort = 20)
	public String getEnglish() {
		return english;
	}

	public void setEnglish(String english) {
		this.english = english;
	}
	
	@Length(min=0, max=255, message="音标长度必须介于 0 和 255 之间")
	@ExcelField(title = "音标", align = 1, sort = 25)
	public String getPhoneticTranscription() {
		return phoneticTranscription;
	}

	public void setPhoneticTranscription(String phoneticTranscription) {
		this.phoneticTranscription = phoneticTranscription;
	}
	
	@Length(min=0, max=64, message="英式语音长度必须介于 0 和 64 之间")
	public String getEngVoice() {
		return engVoice;
	}

	public void setEngVoice(String engVoice) {
		this.engVoice = engVoice;
	}
	
	@Length(min=0, max=64, message="美式语音长度必须介于 0 和 64 之间")
	public String getAmeVoice() {
		return ameVoice;
	}

	public void setAmeVoice(String ameVoice) {
		this.ameVoice = ameVoice;
	}


	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@ExcelField(title = "例句", align = 1, sort = 35)
	public String getExamples() {
		return examples;
	}

	public void setExamples(String examples) {
		this.examples = examples;
	}
	
	@Length(min=0, max=255, message="中文释义长度必须介于 0 和 255 之间")
	@ExcelField(title = "中文", align = 1, sort = 30)
	public String getChinese() {
		return chinese;
	}

	public void setChinese(String chinese) {
		this.chinese = chinese;
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
	
	public String getBlankThree() {
		return blankThree;
	}

	public void setBlankThree(String blankThree) {
		this.blankThree = blankThree;
	}
	
	public String getBlankFour() {
		return blankFour;
	}

	public void setBlankFour(String blankFour) {
		this.blankFour = blankFour;
	}
	
}