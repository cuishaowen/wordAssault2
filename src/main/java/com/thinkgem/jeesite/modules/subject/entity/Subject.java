/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.subject.entity;

import com.thinkgem.jeesite.common.utils.excel.annotation.ExcelField;
import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * subjectEntity
 * @author cuisw
 * @version 2019-08-06
 */
public class Subject extends DataEntity<Subject> {
	
	private static final long serialVersionUID = 1L;
    private String sort;        // 题目分类 1 名词 2 代词 3 形容词 4 动词
	private String version;     // 版本编号
	private String question;	// 问题
	private String selectA;		// 选择a
	private String selectB;		// 选择b
	private String selectC;		// 选择c
	private String selectD;		// 选择d
	private String answer;		// 正确答案 A B C D
	private String analysis;	// 答案解析
	private String blankOne;	// blank_one_
	private String blankTwo;	// blank_two_
	
	public Subject() {
		super();
	}

	public Subject(String id){
		super(id);
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	@ExcelField(title = "问题", align = 1, sort = 10)
	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@ExcelField(title = "分类", align = 1, sort = 5)
    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    @Length(min=0, max=64, message="选择a长度必须介于 0 和 64 之间")
	@ExcelField(title = "A", align = 1, sort = 15)
	public String getSelectA() {
		return selectA;
	}

	public void setSelectA(String selectA) {
		this.selectA = selectA;
	}
	
	@Length(min=0, max=64, message="选择b长度必须介于 0 和 64 之间")
	@ExcelField(title = "B", align = 1, sort = 20)
	public String getSelectB() {
		return selectB;
	}

	public void setSelectB(String selectB) {
		this.selectB = selectB;
	}
	
	@Length(min=0, max=64, message="选择c长度必须介于 0 和 64 之间")
	@ExcelField(title = "C", align = 1, sort = 25)
	public String getSelectC() {
		return selectC;
	}

	public void setSelectC(String selectC) {
		this.selectC = selectC;
	}
	
	@Length(min=0, max=64, message="选择d长度必须介于 0 和 64 之间")
	@ExcelField(title = "D", align = 1, sort = 30)
	public String getSelectD() {
		return selectD;
	}

	public void setSelectD(String selectD) {
		this.selectD = selectD;
	}
	
	@Length(min=0, max=2, message="正确答案 A B C D长度必须介于 0 和 2 之间")
	@ExcelField(title = "答案", align = 1, sort = 35)
	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	@Length(min=0, max=255, message="答案解析长度必须介于 0 和 255 之间")
	@ExcelField(title = "解析", align = 1, sort = 40)
	public String getAnalysis() {
		return analysis;
	}

	public void setAnalysis(String analysis) {
		this.analysis = analysis;
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