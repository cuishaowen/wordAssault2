/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.chaptersubject.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.chaptersubject.entity.ChapterSubject;
import com.thinkgem.jeesite.modules.chaptersubject.dao.ChapterSubjectDao;

/**
 * chapterSubjectService
 * @author cuisw
 * @version 2019-08-10
 */
@Service
@Transactional(readOnly = true)
public class ChapterSubjectService extends CrudService<ChapterSubjectDao, ChapterSubject> {

	public ChapterSubject get(String id) {
		return super.get(id);
	}
	
	public List<ChapterSubject> findList(ChapterSubject chapterSubject) {
		return super.findList(chapterSubject);
	}
	
	public Page<ChapterSubject> findPage(Page<ChapterSubject> page, ChapterSubject chapterSubject) {
		return super.findPage(page, chapterSubject);
	}
	
	@Transactional(readOnly = false)
	public void save(ChapterSubject chapterSubject) {
		super.save(chapterSubject);
	}
	
	@Transactional(readOnly = false)
	public void delete(ChapterSubject chapterSubject) {
		super.delete(chapterSubject);
	}
	
}