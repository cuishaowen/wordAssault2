/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.userchapter.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.userchapter.entity.UserChapter;
import org.apache.ibatis.annotations.Param;

/**
 * userenguserDAO接口
 * @author cuisw
 * @version 2019-08-06
 */
@MyBatisDao
public interface UserChapterDao extends CrudDao<UserChapter> {

    public UserChapter getByChapterIdAndUserId(@Param("chapterId")String chapterId,@Param("userId")String userId);

    public void updateStatus(
            @Param("chapterId")String chapterId,@Param("userId")String userId,
            @Param("studyStatus")String studyStatus,@Param("isOpen")String isOpen
    );
}