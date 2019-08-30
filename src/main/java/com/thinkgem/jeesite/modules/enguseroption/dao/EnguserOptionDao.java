/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.enguseroption.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.enguseroption.entity.EnguserOption;
import org.apache.ibatis.annotations.Param;

/**
 * enguseroptionDAO接口
 * @author cuisw
 * @version 2019-08-10
 */
@MyBatisDao
public interface EnguserOptionDao extends CrudDao<EnguserOption> {

    EnguserOption getByUserId(@Param("userId")String userId);

    Integer getLoginTimes(@Param("id")String id);
}