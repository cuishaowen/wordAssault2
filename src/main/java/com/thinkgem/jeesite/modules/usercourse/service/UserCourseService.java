/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.usercourse.service;

import java.util.*;

import com.thinkgem.jeesite.common.utils.DateUtils;
import com.thinkgem.jeesite.modules.chapter.entity.Chapter;
import com.thinkgem.jeesite.modules.chapter.service.ChapterService;
import com.thinkgem.jeesite.modules.chapterword.entity.ChapterWord;
import com.thinkgem.jeesite.modules.chapterword.service.ChapterWordService;
import com.thinkgem.jeesite.modules.course.entity.Course;
import com.thinkgem.jeesite.modules.course.service.CourseService;
import com.thinkgem.jeesite.modules.userchapter.entity.UserChapter;
import com.thinkgem.jeesite.modules.userchapter.service.UserChapterService;
import com.thinkgem.jeesite.modules.userchapterword.entity.UserChapterWord;
import com.thinkgem.jeesite.modules.userchapterword.service.UserChapterWordService;
import com.thinkgem.jeesite.modules.usercourse.pojo.CourseAndUserCourse;
import com.thinkgem.jeesite.modules.usercourse.pojo.CourseIsOpen;
import com.thinkgem.jeesite.modules.word.entity.Word;
import com.thinkgem.jeesite.modules.word.pojo.AllWordInfomation;
import com.thinkgem.jeesite.modules.word.service.WordService;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.usercourse.entity.UserCourse;
import com.thinkgem.jeesite.modules.usercourse.dao.UserCourseDao;

import javax.servlet.http.HttpSession;

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
    @Autowired
	private ChapterWordService chapterWordService;
    @Autowired
	private WordService wordService;
    @Autowired
	private UserChapterWordService userChapterWordService;
    @Autowired
	private UserCourseDao userCourseDao;

	// 课程已开通
	private static final String isOpen = "1";

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

	// 获取用户每节课程的使用情况
	public List<AllWordInfomation> getAllWordInformation(HttpSession httpSession){
		List<AllWordInfomation> allWordInfomations = new ArrayList<AllWordInfomation>();
		String userId=httpSession.getAttribute("id").toString();
		UserCourse userCourse = new UserCourse();
		userCourse.setEngUserId(userId);
		userCourse.setIsOpen(isOpen);
		List<UserCourse> userCourses = this.findList(userCourse);
		for (UserCourse userCourseInf : userCourses) {
			AllWordInfomation allWordInfomation = this.getwordInformation(userCourseInf.getCourseId(),userCourseInf.getEngUserId());
			allWordInfomation.setCourseName(userCourseInf.getName());
			allWordInfomation.setScore(userCourseInf.getScore());
			allWordInfomations.add(allWordInfomation);
		}
		return allWordInfomations;
	}

	// 获取用户课程下单词的学习情况
	public AllWordInfomation getwordInformation(String courseId,String userId){
		AllWordInfomation allWordInfomation = new AllWordInfomation();
		UserChapterWord userChapterWord = new UserChapterWord();
		userChapterWord.setEngUserId(userId);
		userChapterWord.setCourseId(courseId);
		List<UserChapterWord> userChapterWords = userChapterWordService.findList(userChapterWord);

		int waitLearningWords = 0;
		int completionWords = 0;
		int skilledWords = 0;
		int strengthenMemoryWords = 0;
		int hardKilledWords = 0;
		int hardWords = 0;
		for (UserChapterWord userChapterWordInf : userChapterWords) {
			if (userChapterWordInf.getStudyStatus() != null && userChapterWordInf.getStudyStatus().equals("1")) {
				waitLearningWords++;
			}
			if (userChapterWordInf.getStudyStatus() != null && !userChapterWordInf.getStudyStatus().equals("1")) {
				completionWords++;
			}
			if (userChapterWordInf.getSkilledWord() != null && userChapterWordInf.getSkilledWord().equals("T")) {
				skilledWords++;
			}
			if (userChapterWordInf.getIsMemo() != null && userChapterWordInf.getIsMemo().equals("T")) {
				strengthenMemoryWords++;
			}
			if (userChapterWordInf.getWrongTime() != null && userChapterWordInf.getStrangeWord() != null) {
				if (userChapterWordInf.getWrongTime() >= 2 && userChapterWordInf.getStrangeWord().equals("F")) {
					hardKilledWords++;
				}
				if (userChapterWordInf.getWrongTime() >= 2 && userChapterWordInf.getStrangeWord().equals("T")){
					hardWords++;
				}
			}
		}
		allWordInfomation.setCompletionWords(completionWords);
		allWordInfomation.setHardKilledWords(hardKilledWords);
		allWordInfomation.setHardWords(hardWords);
		allWordInfomation.setSkilledWords(skilledWords);
		allWordInfomation.setStrengthenMemoryWords(strengthenMemoryWords);
		allWordInfomation.setWaitLearningWords(waitLearningWords);
		return  allWordInfomation;
	}



	// 获取用户已开通课程和未开通课程
	public CourseIsOpen getUserOpenCoursesAndNot(String enguserId){
		CourseIsOpen courseIsOpen = new CourseIsOpen();
		List<CourseAndUserCourse> courseOpenList = new ArrayList<CourseAndUserCourse>();

		// 用户课程开通且状态正常
		UserCourse userCourse = new UserCourse();
		userCourse.setEngUserId(enguserId);
		userCourse.setIsOpen("1");

		// 获取所有课程
		List<Course> courseList = courseService.findList(null);

		// 获取用户已开通课程
		List<UserCourse> userCourses = this.findList(userCourse);
		for (UserCourse userCourseInf : userCourses){
			CourseAndUserCourse courseAndUserCourse = new CourseAndUserCourse();
			Course course = courseService.get(userCourseInf.getCourseId());
			courseAndUserCourse.setCourse(course);

			Calendar calendar = Calendar.getInstance();
			calendar.setTime(userCourseInf.getCreateDate());
			calendar.add(Calendar.DAY_OF_MONTH,120);
			userCourseInf.setBlankOne(DateUtils.formatDate(userCourseInf.getCreateDate(),"yyyy-MM-dd"));
			userCourseInf.setBlankTwo(DateUtils.formatDate(calendar.getTime(),"yyyy-MM-dd"));
			courseAndUserCourse.setUserCourse(userCourseInf);
			courseOpenList.add(courseAndUserCourse);
		}

		// 在所有课程中移除所有已开通课程
		Iterator<Course> iterator = courseList.iterator();
		while (iterator.hasNext()) {
			Course course = iterator.next();
			for (int i = 0; i < courseOpenList.size(); i++){
				if (course.getId().equals(courseOpenList.get(i).getCourse().getId())){
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
        this.openChapterWord(userCourse.getCourseId(),userCourse.getEngUserId());
    }

    /**
     * 开通章节与单词
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

	/**
	 * 为用户新增该课程下的所有单词
	 * @param courseId
	 * @param userId
	 */
	@Transactional(readOnly = false)
    public void openChapterWord(String courseId, String userId){
    	ChapterWord chapterWord = new ChapterWord();
    	chapterWord.setCourseId(courseId);
		List<ChapterWord> list = chapterWordService.findList(chapterWord);
		for (ChapterWord chapterWordInf : list){
			String wordIds = chapterWordInf.getWordIds();
			String[] arr = wordIds.split(",");
			for (int i = 0; i < arr.length; i++){
				UserChapterWord userChapterWord = new UserChapterWord();
				userChapterWord.setCourseId(courseId);
				userChapterWord.setEngUserId(userId);
				userChapterWord.setChapterId(chapterWordInf.getChapterId());
				userChapterWord.setWordId(arr[i]);
				userChapterWord.setStudyStatus("1"); // 待学习
				userChapterWord.setCreateDate(new Date());
				userChapterWordService.save(userChapterWord);
			}
		}

	}

	@Transactional(readOnly = false)
	public void updateScore(String score, String userId, String courseId) {
		userCourseDao.updateScore(score, userId, courseId);
	}

}