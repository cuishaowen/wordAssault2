/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.chaptersubject.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.chaptersubject.entity.ChapterSubject;

/**
 * chapterSubjectDAO接口
 * @author cuisw
 * @version 2019-08-10
 */
@MyBatisDao
public interface ChapterSubjectDao extends CrudDao<ChapterSubject> {
	
}