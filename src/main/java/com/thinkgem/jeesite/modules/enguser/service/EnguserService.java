/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.enguser.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import com.thinkgem.jeesite.common.utils.IdGen;
import com.thinkgem.jeesite.modules.course.entity.Course;
import com.thinkgem.jeesite.modules.course.service.CourseService;
import com.thinkgem.jeesite.modules.sys.utils.MD5Util;
import com.thinkgem.jeesite.modules.usercourse.entity.UserCourse;
import com.thinkgem.jeesite.modules.usercourse.service.UserCourseService;
import com.thinkgem.jeesite.modules.userenguser.dao.UserEnguserDao;
import com.thinkgem.jeesite.modules.userenguser.entity.UserEnguser;
import org.activiti.engine.impl.util.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.enguser.entity.Enguser;
import com.thinkgem.jeesite.modules.enguser.dao.EnguserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 用户Service
 * @author cuisw
 * @version 2019-08-06
 */
@Service
@Transactional(readOnly = true)
public class EnguserService extends CrudService<EnguserDao, Enguser> {

	@Autowired
	private UserEnguserDao userEnguserDao;
	@Autowired
	private EnguserDao enguserDao;
	@Autowired
	private CourseService courseService;
	@Autowired
	private UserCourseService userCourseService;

	public Enguser get(String id) {
		return super.get(id);
	}
	
	public List<Enguser> findList(Enguser enguser) {
		return super.findList(enguser);
	}
	
	public Page<Enguser> findPage(Page<Enguser> page, Enguser enguser) {
		return super.findPage(page, enguser);
	}

	@Transactional(readOnly = false)
	public void update(Enguser enguser){
		enguserDao.update(enguser);
	}
	
	@Transactional(readOnly = false)
	public void save(Enguser enguser) {
		super.save(enguser);
	}
	
	@Transactional(readOnly = false)
	public void delete(Enguser enguser) {
		super.delete(enguser);
	}

	public Enguser getEnguser(String loginName, String password){
		return enguserDao.getEnguser(loginName,password);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String username=request.getParameter("loginName");
		String password=request.getParameter("password");
		PrintWriter out=response.getWriter();
		//1.把账号、密码分别设置为root、123
		if(username.equals("root")&&password.equals("123")){
			//2.创建User对象保存账号、密码
			Enguser user=new Enguser();
			user.setLoginName(username);
			user.setPassword(password);

			//3.创建Session对象保存User对象
			request.getSession().setAttribute("enguser", user);

			//4.登陆成功跳转指定页面
			response.sendRedirect("./index");
		}
		else{
			out.println("账号或密码错误，请从新输入....");
		}
	}


	// 查询校长下所有的客户信息
	public List<Enguser> getAllEnguserByUserId(String userId){

		// 获取校长id下的所有校长用户关联表
		UserEnguser userEnguser = new UserEnguser();
		userEnguser.setUserId(userId);

		List<UserEnguser> userEnguserList = userEnguserDao.findList(userEnguser);

		// 定义用户列表
		List<Enguser> engusers = new ArrayList<Enguser>();

		// 循环遍历获取所有的用户信息
		for (UserEnguser userEnguserEx : userEnguserList){
			Enguser enguser = this.get(userEnguserEx.getEnguserId());
			engusers.add(enguser);
		}
		return engusers;
	}

	// 为校长新增用户,并给每一个用户新增体验课程
	@Transactional(readOnly = false)
	public void insertEnguserForUser(String userId, String loginName, int insertNum){
		for (int i = 0; i < insertNum; i++){
			Enguser enguser = new Enguser();
			String id = IdGen.uuid();
			String password = MD5Util.encode2hex("1111") ;
			String login = loginName + "00" + i;

			// 新增用户
			enguser.setLoginName(login);
			enguser.setPassword(password);
			enguser.setId(id);
			enguserDao.insert(enguser);

			// 新增校长用户关联表
			UserEnguser userEnguser = new UserEnguser();
			userEnguser.setUserId(userId);
			userEnguser.setEnguserId(id);
			userEnguser.setId(IdGen.uuid());
			userEnguserDao.insert(userEnguser);

			Course course = new Course();

			// 课程状态 0,体验 1,热销 2,折扣
			course.setStatus("0");

			// 获取所有的体验课程,并为用户开通这些体验课程
			List<Course> freeCourseList = courseService.findList(course);
			for (Course courseFree : freeCourseList){
				UserCourse userCourse = new UserCourse();

				// 课程状态 1 开通 2 未开通
				userCourse.setIsOpen("1");
				userCourse.setEngUserId(id);
				userCourse.setCourseId(courseFree.getId());
				userCourseService.save(userCourse);
			}
		}
	}



}