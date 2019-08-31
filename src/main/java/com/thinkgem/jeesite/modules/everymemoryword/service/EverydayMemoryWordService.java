/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.everymemoryword.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.thinkgem.jeesite.common.utils.DateUtils;
import com.thinkgem.jeesite.modules.enguseroption.entity.EnguserOption;
import com.thinkgem.jeesite.modules.enguseroption.service.EnguserOptionService;
import com.thinkgem.jeesite.modules.everymemoryword.pojo.SEverydayMemoryWord;
import com.thinkgem.jeesite.modules.everymemoryword.pojo.SevenDaysTime;
import com.thinkgem.jeesite.modules.everymemoryword.pojo.SevenDaysWord;
import com.thinkgem.jeesite.modules.userchapterword.pojo.UserCourseStudySituation;
import com.thinkgem.jeesite.modules.userchapterword.service.UserChapterWordService;
import com.thinkgem.jeesite.modules.word.entity.Word;
import com.thinkgem.jeesite.modules.word.service.WordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.everymemoryword.entity.EverydayMemoryWord;
import com.thinkgem.jeesite.modules.everymemoryword.dao.EverydayMemoryWordDao;

/**
 * everymemorywordService
 * @author cuisw
 * @version 2019-08-10
 */
@Service
@Transactional(readOnly = true)
public class EverydayMemoryWordService extends CrudService<EverydayMemoryWordDao, EverydayMemoryWord> {

	@Autowired
	private WordService wordService;
	@Autowired
	private EnguserOptionService enguserOptionService;
	@Autowired
	private UserChapterWordService userChapterWordService;

	public EverydayMemoryWord get(String id) {
		return super.get(id);
	}
	
	public List<EverydayMemoryWord> findList(EverydayMemoryWord everydayMemoryWord) {
		return super.findList(everydayMemoryWord);
	}
	
	public Page<EverydayMemoryWord> findPage(Page<EverydayMemoryWord> page, EverydayMemoryWord everydayMemoryWord) {
		return super.findPage(page, everydayMemoryWord);
	}
	
	@Transactional(readOnly = false)
	public void save(EverydayMemoryWord everydayMemoryWord) {
		super.save(everydayMemoryWord);
	}
	
	@Transactional(readOnly = false)
	public void delete(EverydayMemoryWord everydayMemoryWord) {
		super.delete(everydayMemoryWord);
	}


	// 每日记忆单词
	public List<SEverydayMemoryWord> getEverydayMemoryWord(String userId, String selectTime){
		List<SEverydayMemoryWord> sEverydayMemoryWords = new ArrayList<SEverydayMemoryWord>();

		// 获取当前时间 如果selectTime 为null 就查询今日的记忆
		String today = DateUtils.formatDate(new Date());
		if(selectTime == null || selectTime.equals("")){
			selectTime = today;
		}
		Date date = DateUtils.parseDate(selectTime);

		EverydayMemoryWord e = new EverydayMemoryWord();
		e.setEnguserId(userId);
		e.setEveryday(date);
		List<EverydayMemoryWord> everydayMemoryWords = this.findList(e);

		for (EverydayMemoryWord everydayMemoryWord : everydayMemoryWords){
			SEverydayMemoryWord sEverydayMemoryWord = new SEverydayMemoryWord();
			Word word = wordService.get(everydayMemoryWord.getWordId());
			sEverydayMemoryWord.setWord(word);
			sEverydayMemoryWord.setEverydayMemoryWord(everydayMemoryWord);
			sEverydayMemoryWords.add(sEverydayMemoryWord);
		}

		return sEverydayMemoryWords;
	}

	// 查询用户过去7天每日单词的学习量,累积学习时间
	public List<SevenDaysWord> getSevenDaysWordsNum(String userId){
		Date selectTime = new Date();
		List<SevenDaysWord> sevenDaysWords = new ArrayList<SevenDaysWord>();

		for (int i = 0; i < 7; i--){
			selectTime = DateUtils.addDays(selectTime,-i);
			String selectTime_str = DateUtils.formatDate(selectTime);

			List<SEverydayMemoryWord> list = this.getEverydayMemoryWord(userId, selectTime_str);

			// 单词学习量
			SevenDaysWord sevenDaysWord = new SevenDaysWord();
			sevenDaysWord.setWordsnum(list.size());
			sevenDaysWord.setStudyDate(selectTime_str);

			// 每日累积学习时间
			EnguserOption e = new EnguserOption();
			e.setEngUserId(userId);
			e.setCurrentTime(new Date());
			int totalTime = 0;
			List<EnguserOption> enguserOptions = enguserOptionService.findList(e);
			for (EnguserOption enguserOption : enguserOptions){
				totalTime += Integer.parseInt(enguserOption.getCurrentStudyTime());
			}
			sevenDaysWord.setTotalTime(totalTime);
			sevenDaysWords.add(sevenDaysWord);
		}
		return sevenDaysWords;
	}

	// 本课程已学单词 未学 熟词 备忘词 生词，已消灭生词，以及 各次单元测试成绩本书测试成绩
	public UserCourseStudySituation getUserCourseStudySituation(String userId, String courseId){
		UserCourseStudySituation userCourseStudySituation = new UserCourseStudySituation();

		// 已完成词汇
		int completionWord = userChapterWordService.getCompletionWord(userId, courseId).size();

		// 生词
		int courseHardWord = userChapterWordService.getCourseHardWord(userId, courseId).size();

		// 熟记词汇
		int skilledWord = userChapterWordService.getSkilledWord(userId, courseId).size();

		// 备忘词汇
		int strengthenMemrtyWord = userChapterWordService.getStrengthenMemoryWord(userId, courseId).size();

		// 未完成词汇
		int waitLearningWord = userChapterWordService.getWaitLearningWord(userId, courseId).size();

		// 消灭生词
        int killCourseHardWord = userChapterWordService.getKillCourseHardWord(userId,courseId).size();

        userCourseStudySituation.setCompletionWordNum(completionWord);
        userCourseStudySituation.setCourseHardWordNum(courseHardWord);
        userCourseStudySituation.setSkilledWordNum(skilledWord);
        userCourseStudySituation.setStrengthenMemoryWordNum(strengthenMemrtyWord);
        userCourseStudySituation.setWaitLearningWordNum(waitLearningWord);
        userCourseStudySituation.setKillCourseHardWordNum(killCourseHardWord);

        return userCourseStudySituation;
	}


}