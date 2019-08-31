/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.chapter.service;

import java.util.List;

import com.sun.org.apache.bcel.internal.generic.L2I;
import com.thinkgem.jeesite.modules.course.entity.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.chapter.entity.Chapter;
import com.thinkgem.jeesite.modules.chapter.dao.ChapterDao;

/**
 * 章节CUDRService
 * @author cuisw
 * @version 2019-07-27
 */
@Service
@Transactional(readOnly = true)
public class ChapterService extends CrudService<ChapterDao, Chapter> {

	public Chapter get(String id) {
		return super.get(id);
	}
	
	public List<Chapter> findList(Chapter chapter) {
		return super.findList(chapter);
	}
	
	public Page<Chapter> findPage(Page<Chapter> page, Chapter chapter) {
		return super.findPage(page, chapter);
	}
	
	@Transactional(readOnly = false)
	public void save(Chapter chapter) {
		super.save(chapter);
	}
	
	@Transactional(readOnly = false)
	public void delete(Chapter chapter) {
		super.delete(chapter);
	}

	public Chapter getNextChapter(String courseId,String chapterId){
		// 通过章节id 找到当前章节
		Chapter chapter = this.get(chapterId);
		Chapter chapterNext = new Chapter();
		chapterNext.setSort(chapter.getSort() + 5);
		chapterNext.setParentId(courseId);
		List<Chapter> chapters = this.findList(chapterNext);
		if (chapters == null || chapters.size() < 1){
			return null;
		}
		return chapters.get(0);
	}
}