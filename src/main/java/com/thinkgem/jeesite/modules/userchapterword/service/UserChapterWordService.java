/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.userchapterword.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.thinkgem.jeesite.common.utils.DateUtils;
import com.thinkgem.jeesite.modules.chapterexample.entity.ChapterExample;
import com.thinkgem.jeesite.modules.chapterexample.service.ChapterExampleService;
import com.thinkgem.jeesite.modules.chapterword.service.ChapterWordService;
import com.thinkgem.jeesite.modules.word.entity.Word;
import com.thinkgem.jeesite.modules.word.pojo.*;
import com.thinkgem.jeesite.modules.word.service.WordService;
import com.thinkgem.jeesite.modules.wordexample.entity.WordExample;
import com.thinkgem.jeesite.modules.wordexample.service.WordExampleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.userchapterword.entity.UserChapterWord;
import com.thinkgem.jeesite.modules.userchapterword.dao.UserChapterWordDao;

/**
 * userchapterwordService
 * @author cuisw
 * @version 2019-08-06
 */
@Service
@Transactional(readOnly = true)
public class UserChapterWordService extends CrudService<UserChapterWordDao, UserChapterWord> {

	@Autowired
	private ChapterWordService chapterWordService;
	@Autowired
	private WordService wordService;
	@Autowired
	private ChapterExampleService chapterExampleService;
	@Autowired
	private WordExampleService wordExampleService;
	@Autowired
	private UserChapterWordDao userChapterWordDao;

	public UserChapterWord get(String id) {
		return super.get(id);
	}
	
	public List<UserChapterWord> findList(UserChapterWord userChapterWord) {
		return super.findList(userChapterWord);
	}
	
	public Page<UserChapterWord> findPage(Page<UserChapterWord> page, UserChapterWord userChapterWord) {
		return super.findPage(page, userChapterWord);
	}
	
	@Transactional(readOnly = false)
	public void save(UserChapterWord userChapterWord) {
		super.save(userChapterWord);
	}
	
	@Transactional(readOnly = false)
	public void delete(UserChapterWord userChapterWord) {
		super.delete(userChapterWord);
	}


	// 根据章节获取所有章节单词信息  单词例句
	public List<WordInformation> getWordInformation(String chapterId){
		List<WordInformation> wordInformations = new ArrayList<WordInformation>();

		// 获取章节下所有的例子信息
		ChapterExample chapterExample = new ChapterExample();
		chapterExample.setChapterId(chapterId);
		List<ChapterExample> chapterExamples = chapterExampleService.findList(chapterExample);

		// 获取章节相关的例子信息
		for (ChapterExample chapterExampleInf : chapterExamples){
			WordInformation wordInformation = new WordInformation();
			List<String> errorCh = new ArrayList<String>();
			WordExample wordExample = wordExampleService.get(chapterExampleInf.getWordExampleId());
			Word word = wordService.get(wordExample.getWordId());
			List<Word> errorWords = wordService.selectRandWordWithoutThis(wordExample.getWordId());
			for (Word wordError : errorWords){
				errorCh.add(wordError.getChinese());
			}

			wordInformation.setErrorCh(errorCh);				// 错误单词释义
			wordInformation.setWord(word); 						// 单词信息
			wordInformation.setWordExample(wordExample); 		// 单词对应的例句信息
			wordInformation.setChapterExample(chapterExample);  // 例句和单词对应的课程和章节id
			wordInformations.add(wordInformation);
		}
		return wordInformations;
	}

	// 根据章节获取所有章节单词信息  单词例句
	public List<WordInformation> getCourseWordInformation(String courseId){
		List<WordInformation> wordInformations = new ArrayList<WordInformation>();

		// 获取章节下所有的例子信息
		ChapterExample chapterExample = new ChapterExample();
		chapterExample.setCourseId(courseId);
		List<ChapterExample> chapterExamples = chapterExampleService.findList(chapterExample);

		// 获取章节相关的例子信息
		for (ChapterExample chapterExampleInf : chapterExamples){
			WordInformation wordInformation = new WordInformation();
			List<String> errorCh = new ArrayList<String>();
			WordExample wordExample = wordExampleService.get(chapterExampleInf.getWordExampleId());
			Word word = wordService.get(wordExample.getWordId());
			List<Word> errorWords = wordService.selectRandWordWithoutThis(wordExample.getWordId());
			for (Word wordError : errorWords){
				errorCh.add(wordError.getChinese());
			}

			wordInformation.setErrorCh(errorCh);				// 错误单词释义
			wordInformation.setWord(word); 						// 单词信息
			wordInformation.setWordExample(wordExample); 		// 单词对应的例句信息
			wordInformation.setChapterExample(chapterExample);  // 例句和单词对应的课程和章节id
			wordInformations.add(wordInformation);
		}
		return wordInformations;
	}

	// 获取每日单词
	public List<EverydayMemoryWord> getEveryWord(String userId, String courseId, String date){
		List<EverydayMemoryWord> everydayMemoryWords = new ArrayList<EverydayMemoryWord>();
		UserChapterWord userChapterWord = new UserChapterWord();
		Date newDate = DateUtils.parseDate(date);
		userChapterWord.setCourseId(courseId);
		userChapterWord.setEngUserId(userId);
		userChapterWord.setUpdateDate(newDate);
		List<UserChapterWord> userChapterWords = this.findList(userChapterWord);
		for (UserChapterWord userChapterWordInf : userChapterWords){
			EverydayMemoryWord everydayMemoryWord = new EverydayMemoryWord();
			Word word = wordService.get(userChapterWordInf.getWordId());
			everydayMemoryWord.setWord(word);
			everydayMemoryWord.setUserChapterWord(userChapterWordInf);
			everydayMemoryWords.add(everydayMemoryWord);
		}
		return everydayMemoryWords;
	}

    // 难记词汇 如果错误两次以上 且依然被标记被生词
	public List<HardWord> getCourseHardWord(String userId, String courseId){
		List<HardWord> hardWordList = new ArrayList<HardWord>();
		List<UserChapterWord> userChapterWords = this.getUserChapterWordList(userId, courseId);
		for (UserChapterWord userChapterWordInf: userChapterWords){
			HardWord hardWord = new HardWord();

			// 如果错误次数大于两次，且记忆状态为生词
			if (userChapterWordInf.getWrongTime() != null && userChapterWordInf.getStrangeWord() != null) {
				if (userChapterWordInf.getWrongTime() >= 2 && userChapterWordInf.getStrangeWord().equals("T")) {
					Word word = wordService.get(userChapterWordInf.getWordId());
					hardWord.setWord(word);
					hardWord.setUserChapterWord(userChapterWordInf);
					hardWordList.add(hardWord);
				}
			}
		}
		return hardWordList;
	}

	// 消灭难记词汇  如果错误次数超过两次 且不是生词
    public List<HardKilledWord> getKillCourseHardWord(String userId, String courseId){
        List<HardKilledWord> hardWordList = new ArrayList<HardKilledWord>();
        List<UserChapterWord> userChapterWords = this.getUserChapterWordList(userId, courseId);
        for (UserChapterWord userChapterWordInf: userChapterWords){
            HardKilledWord hardKilledWord = new HardKilledWord();

            // 如果错误次数大于两次，且记忆状态不为生词
			if ( userChapterWordInf.getWrongTime() != null && userChapterWordInf.getStrangeWord() != null) {
				if (userChapterWordInf.getWrongTime() >= 2 && userChapterWordInf.getStrangeWord().equals("F")) {
					Word word = wordService.get(userChapterWordInf.getWordId());
					hardKilledWord.setWord(word);
					hardKilledWord.setUserChapterWord(userChapterWordInf);
					hardWordList.add(hardKilledWord);
				}
			}
        }
        return hardWordList;
    }

	// 备忘词汇
	public List<StrengthenMemoryWord> getStrengthenMemoryWord(String userId, String courseId){
		List<StrengthenMemoryWord> list = new ArrayList<StrengthenMemoryWord>();
		List<UserChapterWord> userChapterWords = this.getUserChapterWordList(userId, courseId);
		for (UserChapterWord userChapterWordInf : userChapterWords){
            StrengthenMemoryWord strengthenMemoryWord = new StrengthenMemoryWord();
			if (userChapterWordInf.getIsMemo() != null && userChapterWordInf.getIsMemo().equals("T")){
                Word word = wordService.get(userChapterWordInf.getWordId());
                strengthenMemoryWord.setWord(word);
                strengthenMemoryWord.setUserChapterWord(userChapterWordInf);
                list.add(strengthenMemoryWord);
			}
		}
		return list;
	}

	// 熟记词汇
    public List<SkilledWord> getSkilledWord(String userId, String courseId){
        List<SkilledWord> list = new ArrayList<SkilledWord>();
        List<UserChapterWord> userChapterWords = this.getUserChapterWordList(userId, courseId);
        for (UserChapterWord userChapterWordInf : userChapterWords){
            if (userChapterWordInf.getSkilledWord() != null && userChapterWordInf.getSkilledWord().equals("T")){
            	SkilledWord skilledWord = new SkilledWord();
                Word word = wordService.get(userChapterWordInf.getWordId());
                skilledWord.setWord(word);
                skilledWord.setUserChapterWord(userChapterWordInf);
                list.add(skilledWord);
            }
        }
        return list;
    }

    // 已学词汇
    public List<CompletionWord> getCompletionWord(String userId, String courseId){
        List<CompletionWord> list = new ArrayList<CompletionWord>();
        List<UserChapterWord> userChapterWords = this.getUserChapterWordList(userId, courseId);
        for (UserChapterWord userChapterWordInf : userChapterWords){
            CompletionWord completionWord = new CompletionWord();
            if (userChapterWordInf.getStudyStatus() != null && !userChapterWordInf.getStudyStatus().equals("1")){
                Word word = wordService.get(userChapterWordInf.getWordId());
                completionWord.setWord(word);
                completionWord.setUserChapterWord(userChapterWordInf);
                list.add(completionWord);
            }
        }
        return list;
    }

    // 未学词汇
    public List<WaitLearningWord> getWaitLearningWord(String userId, String courseId){
        List<WaitLearningWord> list = new ArrayList<WaitLearningWord>();
        List<UserChapterWord> userChapterWords = this.getUserChapterWordList(userId,courseId);
        for (UserChapterWord userChapterWordInf : userChapterWords){
            WaitLearningWord waitLearningWord = new WaitLearningWord();
            if (userChapterWordInf.getStudyStatus() != null && userChapterWordInf.getStudyStatus().equals("1")){
                Word word = wordService.get(userChapterWordInf.getWordId());
				waitLearningWord.setWord(word);
				waitLearningWord.setUserChapterWord(userChapterWordInf);
                list.add(waitLearningWord);
            }
        }
        return list;
    }

    // 每日词汇
//    public List<EverydayMemoryWord> getEveryDayMemoryWord(String courseId,Date date){
//        List<EverydayMemoryWord> list = new ArrayList<EverydayMemoryWord>();
//        List<UserChapterWord> userChapterWords = this.getUserChapterWordList(courseId);
//        for (UserChapterWord userChapterWordInf : userChapterWords){
//            String studyTime = DateUtils.formatDate(userChapterWordInf);
//            String selectTime = "";
//            String today = DateUtils.formatDate(new Date());
//            if(date != null && date.toString().equals("")){
//                selectTime = DateUtils.formatDate(date);
//            }else{
//                selectTime = today;
//            }
//            EverydayMemoryWord completionWord = new EverydayMemoryWord();
//            if (studyTime.equals(selectTime)){
//                Word word = wordService.get(userChapterWordInf.getWordId());
//                completionWord.setWord(word);
//                completionWord.setUserChapterWord(userChapterWordInf);
//                list.add(completionWord);
//            }
//        }
//        return list;
//    }



	// 通过courseId 获取userChapterWord表数据
	public List<UserChapterWord> getUserChapterWordList(String userId, String courseId){
		UserChapterWord userChapterWord = new UserChapterWord();
		userChapterWord.setCourseId(courseId);
		userChapterWord.setEngUserId(userId);
		return this.findList(userChapterWord);
	}
}