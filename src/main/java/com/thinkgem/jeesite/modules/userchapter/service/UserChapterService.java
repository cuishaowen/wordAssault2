/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.userchapter.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.thinkgem.jeesite.common.utils.DateUtils;
import com.thinkgem.jeesite.modules.chapter.entity.Chapter;
import com.thinkgem.jeesite.modules.chapter.pojo.ChapterInformation;
import com.thinkgem.jeesite.modules.chapter.service.ChapterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.userchapter.entity.UserChapter;
import com.thinkgem.jeesite.modules.userchapter.dao.UserChapterDao;

/**
 * userenguserService
 * @author cuisw
 * @version 2019-08-06
 */
@Service
@Transactional(readOnly = true)
public class UserChapterService extends CrudService<UserChapterDao, UserChapter> {

	@Autowired
	private ChapterService chapterService;
	@Autowired
	private UserChapterDao userChapterDao;

	public UserChapter get(String id) {
		return super.get(id);
	}
	
	public List<UserChapter> findList(UserChapter userChapter) {
		return super.findList(userChapter);
	}
	
	public Page<UserChapter> findPage(Page<UserChapter> page, UserChapter userChapter) {
		return super.findPage(page, userChapter);
	}
	
	@Transactional(readOnly = false)
	public void save(UserChapter userChapter) {
		super.save(userChapter);
	}
	
	@Transactional(readOnly = false)
	public void delete(UserChapter userChapter) {
		super.delete(userChapter);
	}

	// 查询课程下的所有章节，已及用户对每个章节的学习状态
	public List<ChapterInformation> getUserChapterList(String courseId, String userId){
		List<ChapterInformation> chapterInformations = new ArrayList<ChapterInformation>();

		// 获取课程下所有章节信息
		Chapter chapter = new Chapter();
		chapter.setParentId(courseId);
		List<Chapter> chapters = chapterService.findList(chapter);

		// 遍历所有章节信息，对所有章节进行
		for (Chapter chapterInf : chapters){
			ChapterInformation chapterInformation = new ChapterInformation();

			// 获取用户章节信息
			UserChapter userChapterInf = userChapterDao.getByChapterIdAndUserId(chapterInf.getId(),userId);
			Date date = userChapterInf.getCreateDate();
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(date);
			calendar.add(Calendar.DAY_OF_MONTH, +120);
			String dateOpen = DateUtils.formatDate(date);
			String dateClose = DateUtils.formatDate(calendar.getTime());
			userChapterInf.setBlankOne(dateOpen);
			userChapterInf.setBlankTwo(dateClose);
			chapterInformation.setChapter(chapterInf);
			chapterInformation.setUserChapter(userChapterInf);
			chapterInformations.add(chapterInformation);
		}
		return chapterInformations;
	}

	@Transactional(readOnly = false)
	public void updateStatus(String chapterId, String userId, String studyStatus, String isOpen){
		userChapterDao.updateStatus(chapterId,userId,studyStatus,isOpen);
	}

}