/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.usercourse.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.usercourse.entity.UserCourse;
import org.apache.ibatis.annotations.Param;

/**
 * usercourseDAO接口
 * @author cuisw
 * @version 2019-08-07
 */
@MyBatisDao
public interface UserCourseDao extends CrudDao<UserCourse> {


}