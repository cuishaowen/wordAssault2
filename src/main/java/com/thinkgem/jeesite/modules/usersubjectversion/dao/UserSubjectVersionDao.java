/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.usersubjectversion.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.usersubjectversion.entity.UserSubjectVersion;

/**
 * 用户题目版本DAO接口
 * @author cuisw
 * @version 2019-09-03
 */
@MyBatisDao
public interface UserSubjectVersionDao extends CrudDao<UserSubjectVersion> {
	
}