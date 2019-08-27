/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.subject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.subject.entity.Subject;
import com.thinkgem.jeesite.modules.subject.dao.SubjectDao;

/**
 * subjectService
 * @author cuisw
 * @version 2019-08-06
 */
@Service
@Transactional(readOnly = true)
public class SubjectService extends CrudService<SubjectDao, Subject> {

	@Autowired
	private SubjectDao subjectDao;

	public Subject get(String id) {
		return super.get(id);
	}
	
	public List<Subject> findList(Subject subject) {
		return super.findList(subject);
	}
	
	public Page<Subject> findPage(Page<Subject> page, Subject subject) {
		return super.findPage(page, subject);
	}
	
	@Transactional(readOnly = false)
	public void save(Subject subject) {
		super.save(subject);
	}
	
	@Transactional(readOnly = false)
	public void delete(Subject subject) {
		super.delete(subject);
	}

	@Transactional(readOnly = false)
	public void insert(Subject subject){
		subjectDao.insert(subject);
	}
}