/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.usercourse.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.usercourse.entity.UserCourse;
import com.thinkgem.jeesite.modules.usercourse.service.UserCourseService;

/**
 * usercourseController
 * @author cuisw
 * @version 2019-08-07
 */
@Controller
@RequestMapping(value = "${adminPath}/usercourse/userCourse")
public class UserCourseController extends BaseController {

	@Autowired
	private UserCourseService userCourseService;
	
	@ModelAttribute
	public UserCourse get(@RequestParam(required=false) String id) {
		UserCourse entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = userCourseService.get(id);
		}
		if (entity == null){
			entity = new UserCourse();
		}
		return entity;
	}
	
	@RequiresPermissions("usercourse:userCourse:view")
	@RequestMapping(value = {"list", ""})
	public String list(UserCourse userCourse, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<UserCourse> page = userCourseService.findPage(new Page<UserCourse>(request, response), userCourse); 
		model.addAttribute("page", page);
		return "modules/usercourse/userCourseList";
	}

	@RequiresPermissions("usercourse:userCourse:view")
	@RequestMapping(value = "form")
	public String form(UserCourse userCourse, Model model) {
		model.addAttribute("userCourse", userCourse);
		return "modules/usercourse/userCourseForm";
	}

	@RequiresPermissions("usercourse:userCourse:edit")
	@RequestMapping(value = "save")
	public String save(UserCourse userCourse, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, userCourse)){
			return form(userCourse, model);
		}
		userCourseService.save(userCourse);
		addMessage(redirectAttributes, "保存usercourse成功");
		return "redirect:"+Global.getAdminPath()+"/usercourse/userCourse/?repage";
	}
	
	@RequiresPermissions("usercourse:userCourse:edit")
	@RequestMapping(value = "delete")
	public String delete(UserCourse userCourse, RedirectAttributes redirectAttributes) {
		userCourseService.delete(userCourse);
		addMessage(redirectAttributes, "删除usercourse成功");
		return "redirect:"+Global.getAdminPath()+"/usercourse/userCourse/?repage";
	}



}