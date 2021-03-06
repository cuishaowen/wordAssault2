/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.enguseroption.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.enguseroption.entity.EnguserOption;
import com.thinkgem.jeesite.modules.enguseroption.dao.EnguserOptionDao;

/**
 * enguseroptionService
 * @author cuisw
 * @version 2019-08-10
 */
@Service
@Transactional(readOnly = true)
public class EnguserOptionService extends CrudService<EnguserOptionDao, EnguserOption> {

	@Autowired
	EnguserOptionDao enguserOptionDao;

	public EnguserOption get(String id) {
		return super.get(id);
	}
	
	public List<EnguserOption> findList(EnguserOption enguserOption) {
		return super.findList(enguserOption);
	}
	
	public Page<EnguserOption> findPage(Page<EnguserOption> page, EnguserOption enguserOption) {
		return super.findPage(page, enguserOption);
	}
	
	@Transactional(readOnly = false)
	public void save(EnguserOption enguserOption) {
		super.save(enguserOption);
	}
	
	@Transactional(readOnly = false)
	public void delete(EnguserOption enguserOption) {
		super.delete(enguserOption);
	}

	@Transactional(readOnly = false)
	public EnguserOption getByUserId(String userId) {
		return enguserOptionDao.getByUserId(userId);
	}

	@Transactional(readOnly = false)
	public Integer getLoginTimes(String UserId) {
		return enguserOptionDao.getLoginTimes(UserId);
	}

    public List<Map<String,String>> findLastWeekOption(String userId) {
		return enguserOptionDao.findLastWeekOption(userId);
    }
}