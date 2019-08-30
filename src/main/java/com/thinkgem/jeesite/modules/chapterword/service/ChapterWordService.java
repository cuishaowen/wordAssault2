/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.chapterword.service;

import java.util.List;

import com.thinkgem.jeesite.common.utils.IdGen;
import com.thinkgem.jeesite.modules.chapter.entity.Chapter;
import com.thinkgem.jeesite.modules.word.entity.Word;
import com.thinkgem.jeesite.modules.word.untils.WordUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.chapterword.entity.ChapterWord;
import com.thinkgem.jeesite.modules.chapterword.dao.ChapterWordDao;

/**
 * 章节单词Service
 * @author cuisw
 * @version 2019-08-02
 */
@Service
@Transactional(readOnly = true)
public class ChapterWordService extends CrudService<ChapterWordDao, ChapterWord> {
    @Autowired
    private ChapterWordDao chapterWordDao;

	public ChapterWord get(String id) {
		return super.get(id);
	}
	
	public List<ChapterWord> findList(ChapterWord chapterWord) {
		return super.findList(chapterWord);
	}
	
	public Page<ChapterWord> findPage(Page<ChapterWord> page, ChapterWord chapterWord) {
		return super.findPage(page, chapterWord);
	}
	
	@Transactional(readOnly = false)
	public void save(ChapterWord chapterWord){
		super.save(chapterWord);
	}
	
	@Transactional(readOnly = false)
	public void delete(ChapterWord chapterWord) {
		super.delete(chapterWord);
	}

	// 根据章节id 查询章节单词信息
    public List<ChapterWord> getByChapterId(String chapterId){
	    return chapterWordDao.getByChapterId(chapterId);
    }


    /**
     *  删除章节下的具体单词id
     *  获取章节下的所有单词，将
     */
    @Transactional(readOnly = false)
    public void updateByWordId(String id, String wordId){

	    // 查询章节单词信息
	    ChapterWord chapterWord = chapterWordDao.get(id);

	    // 获取章节单词下的单词id,并删除
        String words = chapterWord.getWordIds();
        String words_new = "";
        String[] arr = words.split(",");
        for (int i = 0; i < arr.length; i++){

            // 如果该单词不在数组中，就存入新的字符串中
            if (!wordId.equals(arr[i])) {

                // 如果wordId不是是最后一个单词id 那么
                if (i != arr.length -1){
                    words_new += arr[i] + ",";
                }else{
                    words_new += arr[i];
                }
            }
        }

        // 修建字符串
        if(words_new.endsWith(",")){
            words_new = words_new.substring(0,words_new.length() - 1);
        }
        chapterWord.setWordIds(words_new);
        chapterWordDao.update(chapterWord);
    }

    // 新增的时候 需要验证章节单词是否存在重复章节
    public Boolean validateChapterIsExistence(String chapterId){
        List<ChapterWord> chapterWords = getByChapterId(chapterId);
        if (chapterWords.size() >= 1){
            return true;
        }else {
            return false;
        }
    }

    // 新增
    @Transactional(readOnly = false)
    public void insert(ChapterWord chapterWord){
        // 生成id 信息
	    String id = IdGen.uuid();
	    chapterWord.setId(id);
        chapterWordDao.insert(chapterWord);
    }

    // 修改
    @Transactional(readOnly = false)
    public void update(ChapterWord chapterWord){
        List<Word> wordList = WordUtils.getWordByChapter(chapterWord.getChapterId());
	    String wordIds = chapterWord.getWordIds();
	    for (Word word : wordList){
	        if (word == wordList.get(0)){
                wordIds += ','+ word.getId() + ",";
            }else{
                wordIds += word.getId() + ",";
            }
        }

	    // 修剪字符串
        if(wordIds.endsWith(",")){
            wordIds = wordIds.substring(0,wordIds.length() - 1);
        }
        chapterWord.setWordIds(wordIds);
        chapterWordDao.update(chapterWord);
    }

}