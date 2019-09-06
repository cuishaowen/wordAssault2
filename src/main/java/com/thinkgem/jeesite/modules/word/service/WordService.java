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
    @Autowired
	private WordExampleService wordExampleService;
    @Autowired
	private UserChapterWordService userChapterWordService;


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
		for (int i = 0; i < wordList.size(); i++){
			int index = (int)(Math.random()*(wordList.size()-1));
			wordListRes.add(wordList.get(index));
			if (wordListRes.size() == 10){
				break;
			}
		}
		return wordListRes;
	}

	// 难记词汇 如果错误两次以上 且依然被标记被生词
	public WordDccx getWordDccx(String userId, String courseId, String wordId){
		List<UserChapterWord> userChapterWords = userChapterWordService.getUserChapterWordList(userId, courseId);
		WordDccx wordDccx = new WordDccx();
		for (UserChapterWord userChapterWordInf: userChapterWords){
				// 如果错误次数大于两次，且记忆状态为生词
			if (userChapterWordInf.getWordId().equals(wordId)) {
				Word word = wordDao.get(wordId);
				WordExample wordExample = new WordExample();
				wordExample.setWordId(wordId);
				List<WordExample> wordExamples = wordExampleService.findList(wordExample);
				wordDccx.setUserChapterWord(userChapterWordInf);
				wordDccx.setWord(word);
				wordDccx.setWordExamples(wordExamples);
				break;
			}
		}
		return wordDccx;
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

}