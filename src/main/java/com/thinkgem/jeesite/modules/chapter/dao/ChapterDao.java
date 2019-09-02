/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.chapter.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.chapter.entity.Chapter;
import org.apache.ibatis.annotations.Param;

/**
 * 章节CUDRDAO接口
 * @author cuisw
 * @version 2019-07-27
 */
@MyBatisDao
public interface ChapterDao extends CrudDao<Chapter> {

    public Integer selectCount(@Param("parentId")String parentId);
}