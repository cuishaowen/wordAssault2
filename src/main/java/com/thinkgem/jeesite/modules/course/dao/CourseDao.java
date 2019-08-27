/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.course.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.course.entity.Course;

/**
 * 课程表DAO接口
 * @author cuisw
 * @version 2019-07-27
 */
@MyBatisDao
public interface CourseDao extends CrudDao<Course> {
	
}