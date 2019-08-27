/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.word.service;

import java.util.List;

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