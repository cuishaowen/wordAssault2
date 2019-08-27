/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.usercourse.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.thinkgem.jeesite.modules.chapter.entity.Chapter;
import com.thinkgem.jeesite.modules.chapter.service.ChapterService;
import com.thinkgem.jeesite.modules.course.entity.Course;
import com.thinkgem.jeesite.modules.course.service.CourseService;
import com.thinkgem.jeesite.modules.userchapter.entity.UserChapter;
import com.thinkgem.jeesite.modules.userchapter.service.UserChapterService;
import com.thinkgem.jeesite.modules.usercourse.pojo.CourseIsOpen;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.usercourse.entity.UserCourse;
import com.thinkgem.jeesite.modules.usercourse.dao.UserCourseDao;

/**
 * usercourseService
 * @author cuisw
 * @version 2019-08-07
 */
@Service
@Transactional(readOnly = true)
public class UserCourseService extends CrudService<UserCourseDao, UserCourse> {

	@Autowired
	private CourseService courseService;
	@Autowired
    private ChapterService chapterService;
    @Autowired
    private UserChapterService userChapterService;

	public UserCourse get(String id) {
		return super.get(id);
	}
	
	public List<UserCourse> findList(UserCourse userCourse) {
		return super.findList(userCourse);
	}
	
	public Page<UserCourse> findPage(Page<UserCourse> page, UserCourse userCourse) {
		return super.findPage(page, userCourse);
	}
	
	@Transactional(readOnly = false)
	public void save(UserCourse userCourse) {
		super.save(userCourse);
	}
	
	@Transactional(readOnly = false)
	public void delete(UserCourse userCourse) {
		super.delete(userCourse);
	}

	// 获取用户已开通课程和未开通课程
	public CourseIsOpen getUserOpenCoursesAndNot(String enguserId){

		CourseIsOpen courseIsOpen = new CourseIsOpen();
		List<Course> courseOpenList = new ArrayList<Course>();
		List<Course> courseCloseList = new ArrayList<Course>();

		// 用户课程开通且状态正常
		UserCourse userCourse = new UserCourse();
		userCourse.setEngUserId(enguserId);
		userCourse.setIsOpen("1");

		// 获取所有课程
		List<Course> courseList = courseService.findList(null);

		// 获取用户已开通课程
		List<UserCourse> userCourses = this.findList(userCourse);
		for (UserCourse userCourseInf : userCourses){
			Course course = courseService.get(userCourseInf.getCourseId());
			courseOpenList.add(course);
		}

		// 在所有课程中移除所有已开通课程
		Iterator<Course> iterator = courseList.iterator();
		while (iterator.hasNext()) {
			Course course = iterator.next();
			for (int i = 0; i < courseOpenList.size(); i++){
				if (course.getId().equals(courseOpenList.get(i).getId())){
					iterator.remove();
				}
			}
		}
		courseIsOpen.setOpenCourseList(courseOpenList);
		courseIsOpen.setNotOpenCouseList(courseList);
		return courseIsOpen;
	}

    /**
     * 为用户开通课程
     * @param userCourse
     */
	@Transactional(readOnly = false)
    public void openCourse(UserCourse userCourse){
        this.save(userCourse);
        this.openChapter(userCourse.getCourseId(),userCourse.getEngUserId());
    }

    /**
     * 开通章节
     * @param courseId
     * @param userId
     */
    @Transactional(readOnly = false)
    public void openChapter(String courseId, String userId) {

        // 查询课程下的所有章节
        Chapter chapter = new Chapter();
        chapter.setParentId(courseId);
        List<Chapter> chapters = chapterService.findList(chapter);

        // 遍历所有章节,为第一章节开通，其余不开通,
        for (Chapter chapter1 : chapters) {
            UserChapter userChapter = new UserChapter();
			userChapter.setStudyStatus("1");
            if (chapter1 == chapters.get(0)){
                userChapter.setIsOpen("1");
                userChapter.setChapterId(chapter1.getId());
                userChapter.setEngUserId(userId);
            }else{
                userChapter.setChapterId(chapter1.getId());
                userChapter.setEngUserId(userId);
            }
            userChapterService.save(userChapter);
        }
    }
}