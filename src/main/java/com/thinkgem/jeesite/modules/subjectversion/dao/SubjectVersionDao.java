/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.subjectversion.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.subjectversion.entity.SubjectVersion;

/**
 * 语法题版本DAO接口
 * @author cuisw
 * @version 2019-09-04
 */
@MyBatisDao
public interface SubjectVersionDao extends CrudDao<SubjectVersion> {


}