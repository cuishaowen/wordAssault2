/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.chapterword.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.chapterword.entity.ChapterWord;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 章节单词DAO接口
 * @author cuisw
 * @version 2019-08-02
 */
@MyBatisDao
public interface ChapterWordDao extends CrudDao<ChapterWord> {

    public List<ChapterWord> getByChapterId(@Param("chapterId")String chapterId);
}