/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.wordexample.service;

import java.util.List;

import com.thinkgem.jeesite.modules.wordexample.entity.WordExample;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.wordexample.dao.WordExampleDao;

/**
 * 单词例句Service
 * @author cuisw
 * @version 2019-08-06
 */
@Service
@Transactional(readOnly = true)
public class WordExampleService extends CrudService<WordExampleDao, WordExample> {

	public WordExample get(String id) {
		return super.get(id);
	}
	
	public List<WordExample> findList(WordExample wordExample) {
		return super.findList(wordExample);
	}
	
	public Page<WordExample> findPage(Page<WordExample> page, WordExample wordExample) {
		return super.findPage(page, wordExample);
	}
	
	@Transactional(readOnly = false)
	public void save(WordExample wordExample) {
		super.save(wordExample);
	}
	
	@Transactional(readOnly = false)
	public void delete(WordExample wordExample) {
		super.delete(wordExample);
	}
	
}