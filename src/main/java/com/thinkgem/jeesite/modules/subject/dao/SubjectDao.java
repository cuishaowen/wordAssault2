/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.subject.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.subject.entity.Subject;

/**
 * subjectDAO接口
 * @author cuisw
 * @version 2019-08-06
 */
@MyBatisDao
public interface SubjectDao extends CrudDao<Subject> {
	
}