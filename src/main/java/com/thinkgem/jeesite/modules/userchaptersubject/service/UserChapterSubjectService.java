/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.userchaptersubject.service;

import java.util.ArrayList;
import java.util.List;

import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.chaptersubject.entity.ChapterSubject;
import com.thinkgem.jeesite.modules.chaptersubject.service.ChapterSubjectService;
import com.thinkgem.jeesite.modules.subject.entity.Subject;
import com.thinkgem.jeesite.modules.subject.pojo.GrammarSubject;
import com.thinkgem.jeesite.modules.subject.service.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.userchaptersubject.entity.UserChapterSubject;
import com.thinkgem.jeesite.modules.userchaptersubject.dao.UserChapterSubjectDao;

/**
 * userchaptersubjectService
 * @author cuisw
 * @version 2019-08-06
 */
@Service
@Transactional(readOnly = true)
public class UserChapterSubjectService extends CrudService<UserChapterSubjectDao, UserChapterSubject> {

	@Autowired
	private SubjectService subjectService;

	public UserChapterSubject get(String id) {
		return super.get(id);
	}
	
	public List<UserChapterSubject> findList(UserChapterSubject userChapterSubject) {
		return super.findList(userChapterSubject);
	}
	
	public Page<UserChapterSubject> findPage(Page<UserChapterSubject> page, UserChapterSubject userChapterSubject) {
		return super.findPage(page, userChapterSubject);
	}
	
	@Transactional(readOnly = false)
	public void save(UserChapterSubject userChapterSubject) {
		super.save(userChapterSubject);
	}
	
	@Transactional(readOnly = false)
	public void delete(UserChapterSubject userChapterSubject) {
		super.delete(userChapterSubject);
	}

	// 语法突击和错题 约定 category 1.语法突击 2 错题本
	public List<Subject> getSubjects(String version,String category,String userId){
		List<Subject> wrongSubjectList = new ArrayList<Subject>();
		Subject subject = new Subject();
		subject.setVersion(version);
		List<Subject> subjectList = subjectService.findList(subject);
		if (category.equals("2")){
			for (Subject subjectInf : subjectList){
				UserChapterSubject u = new UserChapterSubject();
				u.setIsWrong("T");
				u.setEngUserId(userId);
				u.setSubjectId(subjectInf.getId());
				UserChapterSubject userChapterSubject = this.get(u);
				if (userChapterSubject != null){
					wrongSubjectList.add(subjectInf);
				}
			}
			return wrongSubjectList;
		}

		return subjectList;
	}

}