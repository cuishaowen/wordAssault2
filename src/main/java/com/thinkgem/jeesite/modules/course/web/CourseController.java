/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.course.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.course.entity.Course;
import com.thinkgem.jeesite.modules.course.service.CourseService;

import java.util.List;

/**
 * 课程表Controller
 * @author cuisw
 * @version 2019-07-27
 */
@Controller
@RequestMapping(value = "${adminPath}/course/course")
public class CourseController extends BaseController {

	@Autowired
	private CourseService courseService;
	
	@ModelAttribute
	public Course get(@RequestParam(required=false) String id) {
		Course entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = courseService.get(id);
		}
		if (entity == null){
			entity = new Course();
		}
		return entity;
	}
	
	@RequiresPermissions("course:course:view")
	@RequestMapping(value = {"list", ""})
	public String list(Course course, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Course> page = courseService.findPage(new Page<Course>(request, response), course); 
		model.addAttribute("page", page);
		return "modules/course/courseList";
	}

	@RequiresPermissions("course:course:view")
	@RequestMapping(value = "form")
	public String form(Course course, Model model) {
		model.addAttribute("course", course);
		return "modules/course/courseForm";
	}

	@RequiresPermissions("course:course:edit")
	@RequestMapping(value = "save")
	public String save(Course course, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, course)){
			return form(course, model);
		}
		courseService.save(course);
		addMessage(redirectAttributes, "保存成功");
		return "redirect:"+Global.getAdminPath()+"/course/course/?repage";
	}
	
	@RequiresPermissions("course:course:edit")
	@RequestMapping(value = "delete")
	public String delete(Course course, RedirectAttributes redirectAttributes) {
		courseService.delete(course);
		addMessage(redirectAttributes, "删除成功");
		return "redirect:"+Global.getAdminPath()+"/course/course/?repage";
	}

}