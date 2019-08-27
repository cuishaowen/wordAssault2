/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.userenguser.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.userenguser.entity.UserEnguser;

/**
 * userenguserDAO接口
 * @author cuisw
 * @version 2019-08-06
 */
@MyBatisDao
public interface UserEnguserDao extends CrudDao<UserEnguser> {
	
}