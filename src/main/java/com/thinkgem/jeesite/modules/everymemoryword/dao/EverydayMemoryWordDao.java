/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.everymemoryword.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.everymemoryword.entity.EverydayMemoryWord;

/**
 * everymemorywordDAO接口
 * @author cuisw
 * @version 2019-08-10
 */
@MyBatisDao
public interface EverydayMemoryWordDao extends CrudDao<EverydayMemoryWord> {
	
}