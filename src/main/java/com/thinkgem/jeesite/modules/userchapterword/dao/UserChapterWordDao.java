/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.userchapterword.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.userchapterword.entity.UserChapterWord;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * userchapterwordDAO接口
 * @author cuisw
 * @version 2019-08-06
 */
@MyBatisDao
public interface UserChapterWordDao extends CrudDao<UserChapterWord> {

    List<Map<String,String>> findWeekStudyWords(String userId);

    String getCourseScoreByIds(@Param("userId")String userId,@Param("courseId") String courseId);

    void updateSelectById(
            @Param("ids") String[] ids,
            @Param("strangeWord") String strangeWord,
            @Param("skilledWord") String skilledWord,
            @Param("studyStatus") String studyStatus,
            @Param("isMemo") String isMemo,
            @Param("updateDate") Date updateDate
            );
}