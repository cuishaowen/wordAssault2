/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.usersubjectversion.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.usersubjectversion.entity.UserSubjectVersion;
import com.thinkgem.jeesite.modules.usersubjectversion.dao.UserSubjectVersionDao;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 用户题目版本Service
 * @author cuisw
 * @version 2019-09-03
 */
@Service
@Transactional(readOnly = true)
public class UserSubjectVersionService extends CrudService<UserSubjectVersionDao, UserSubjectVersion> {

	public UserSubjectVersion get(String id) {
		return super.get(id);
	}
	
	public List<UserSubjectVersion> findList(UserSubjectVersion userSubjectVersion) {
		return super.findList(userSubjectVersion);
	}
	
	public Page<UserSubjectVersion> findPage(Page<UserSubjectVersion> page, UserSubjectVersion userSubjectVersion) {
		return super.findPage(page, userSubjectVersion);
	}
	
	@Transactional(readOnly = false)
	public void save(UserSubjectVersion userSubjectVersion) {
		super.save(userSubjectVersion);
	}
	
	@Transactional(readOnly = false)
	public void delete(UserSubjectVersion userSubjectVersion) {
		super.delete(userSubjectVersion);
	}

}