/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.usersubject.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.usersubject.entity.UserSubject;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 用户语法题DAO接口
 * @author cuisw
 * @version 2019-09-04
 */
@MyBatisDao
public interface UserSubjectDao extends CrudDao<UserSubject> {

    List<UserSubject> findErrorList(UserSubject userSubject);
}