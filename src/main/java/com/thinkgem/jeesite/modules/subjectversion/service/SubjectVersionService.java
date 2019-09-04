/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.subjectversion.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.subjectversion.entity.SubjectVersion;
import com.thinkgem.jeesite.modules.subjectversion.dao.SubjectVersionDao;

/**
 * 语法题版本Service
 * @author cuisw
 * @version 2019-09-04
 */
@Service
@Transactional(readOnly = true)
public class SubjectVersionService extends CrudService<SubjectVersionDao, SubjectVersion> {

	@Autowired
	private SubjectVersionDao subjectVersionDao;

	public SubjectVersion get(String id) {
		return super.get(id);
	}
	
	public List<SubjectVersion> findList(SubjectVersion subjectVersion) {
		return super.findList(subjectVersion);
	}
	
	public Page<SubjectVersion> findPage(Page<SubjectVersion> page, SubjectVersion subjectVersion) {
		return super.findPage(page, subjectVersion);
	}
	
	@Transactional(readOnly = false)
	public void save(SubjectVersion subjectVersion) {
		super.save(subjectVersion);
	}
	
	@Transactional(readOnly = false)
	public void delete(SubjectVersion subjectVersion) {
		super.delete(subjectVersion);
	}

	@Transactional(readOnly = false)
	public void insert(SubjectVersion subjectVersion){
		subjectVersionDao.insert(subjectVersion);
	}
}