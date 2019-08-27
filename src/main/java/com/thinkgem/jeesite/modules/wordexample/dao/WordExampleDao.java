/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.wordexample.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.wordexample.entity.WordExample;

/**
 * 单词例句DAO接口
 * @author cuisw
 * @version 2019-08-06
 */
@MyBatisDao
public interface WordExampleDao extends CrudDao<WordExample> {
	
}