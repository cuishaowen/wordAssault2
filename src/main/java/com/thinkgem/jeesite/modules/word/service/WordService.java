/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.word.service;

import java.util.ArrayList;
import java.util.List;

import com.thinkgem.jeesite.modules.chapterword.dao.ChapterWordDao;
import com.thinkgem.jeesite.modules.chapterword.entity.ChapterWord;
import com.thinkgem.jeesite.modules.userchapterword.entity.UserChapterWord;
import com.thinkgem.jeesite.modules.userchapterword.service.UserChapterWordService;
import com.thinkgem.jeesite.modules.word.pojo.HardWord;
import com.thinkgem.jeesite.modules.word.pojo.WordDccx;
import com.thinkgem.jeesite.modules.word.pojo.WordInformation;
import com.thinkgem.jeesite.modules.wordexample.entity.WordExample;
import com.thinkgem.jeesite.modules.wordexample.service.WordExampleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.word.entity.Word;
import com.thinkgem.jeesite.modules.word.dao.WordDao;

/**
 * 单词管理Service
 * @author cuisw
 * @version 2019-07-30
 */
@Service
@Transactional(readOnly = true)
public class WordService extends CrudService<WordDao, Word> {

    @Autowired
    private WordDao wordDao;
    @Autowired
	private ChapterWordDao chapterWordDao;

	public Word get(String id) {
		return super.get(id);
	}
	
	public List<Word> findList(Word word) {
		return super.findList(word);
	}
	
	public Page<Word> findPage(Page<Word> page, Word word) {
		return super.findPage(page, word);
	}

	public List<Word> selectRandWordWithoutThis(String id){
		return wordDao.selectRandWordWithoutThis(id);
	}

	public List<Word> selectTenRandWord(String courseId){
		ChapterWord chapterWord = new ChapterWord();
		chapterWord.setCourseId(courseId);

		// 查询课程关联的所有章节单词信息
		List<ChapterWord> chapterWords = chapterWordDao.findList(chapterWord);
		List<Word> wordList = new ArrayList<Word>();
		List<Word> wordListRes = new ArrayList<Word>();

		for (ChapterWord chapterWord1 : chapterWords){
			String wordIds = chapterWord1.getWordIds();
			String[] arr = wordIds.split(",");
			for (String wordId : arr){
				Word word = wordDao.get(wordId);
				wordList.add(word);
			}
		}
		int[] indexs = randomCommon(0,wordList.size()-1,10);
		for (int i = 0; i < 10; i++){
			wordListRes.add(wordList.get(indexs[i]));
		}
		return wordListRes;
	}

	@Transactional(readOnly = false)
	public void save(Word word) {
		super.save(word);
	}
	
	@Transactional(readOnly = false)
	public void delete(Word word) {
		super.delete(word);
	}

	@Transactional(readOnly = false)
    public void insert(Word word){
	    wordDao.insert(word);
    }

	/**
	 * 随机指定范围内N个不重复的数
	 * 最简单最基本的方法
	 * @param min 指定范围最小值
	 * @param max 指定范围最大值
	 * @param n 随机数个数
	 */
	public int[] randomCommon(int min, int max, int n){
		if (n > (max - min + 1) || max < min) {
			return null;
		}
		int[] result = new int[n];
		int count = 0;
		while(count < n) {
			int num = (int) (Math.random() * (max - min)) + min;
			boolean flag = true;
			for (int j = 0; j < n; j++) {
				if(num == result[j]){
					flag = false;
					break;
				}
			}
			if(flag){
				result[count] = num;
				count++;
			}
		}
		return result;
	}
}