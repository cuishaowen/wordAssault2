/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.chapterexample.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.chapterexample.entity.ChapterExample;
import com.thinkgem.jeesite.modules.chapterexample.dao.ChapterExampleDao;

/**
 * chapterexampleService
 * @author cuisw
 * @version 2019-08-07
 */
@Service
@Transactional(readOnly = true)
public class ChapterExampleService extends CrudService<ChapterExampleDao, ChapterExample> {

	public ChapterExample get(String id) {
		return super.get(id);
	}
	
	public List<ChapterExample> findList(ChapterExample chapterExample) {
		return super.findList(chapterExample);
	}
	
	public Page<ChapterExample> findPage(Page<ChapterExample> page, ChapterExample chapterExample) {
		return super.findPage(page, chapterExample);
	}
	
	@Transactional(readOnly = false)
	public void save(ChapterExample chapterExample) {
		super.save(chapterExample);
	}
	
	@Transactional(readOnly = false)
	public void delete(ChapterExample chapterExample) {
		super.delete(chapterExample);
	}
	
}