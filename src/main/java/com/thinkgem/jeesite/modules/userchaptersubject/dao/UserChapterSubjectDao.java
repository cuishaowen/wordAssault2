/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.userchaptersubject.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.userchaptersubject.entity.UserChapterSubject;

/**
 * userchaptersubjectDAO接口
 * @author cuisw
 * @version 2019-08-06
 */
@MyBatisDao
public interface UserChapterSubjectDao extends CrudDao<UserChapterSubject> {
	
}