/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.usersubject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.usersubject.entity.UserSubject;
import com.thinkgem.jeesite.modules.usersubject.dao.UserSubjectDao;

/**
 * 用户语法题Service
 * @author cuisw
 * @version 2019-09-04
 */
@Service
@Transactional(readOnly = true)
public class UserSubjectService extends CrudService<UserSubjectDao, UserSubject> {

	@Autowired
	private UserSubjectDao userSubjectDao;

	public UserSubject get(String id) {
		return super.get(id);
	}
	
	public List<UserSubject> findList(UserSubject userSubject) {
		return super.findList(userSubject);
	}
	
	public Page<UserSubject> findPage(Page<UserSubject> page, UserSubject userSubject) {
		return super.findPage(page, userSubject);
	}
	
	@Transactional(readOnly = false)
	public void save(UserSubject userSubject) {
		super.save(userSubject);
	}
	
	@Transactional(readOnly = false)
	public void delete(UserSubject userSubject) {
		userSubjectDao.delete(userSubject);
	}

	public List<UserSubject> findErrorList(UserSubject userSubject){
		return userSubjectDao.findErrorList(userSubject);
	}
}