/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.word.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.word.entity.Word;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 单词管理DAO接口
 * @author cuisw
 * @version 2019-07-30
 */
@MyBatisDao
public interface WordDao extends CrudDao<Word> {


    public List<Word> selectRandWordWithoutThis(@Param("id") String id);

}