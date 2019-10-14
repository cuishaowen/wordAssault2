/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.userenguser.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thinkgem.jeesite.modules.enguser.entity.Enguser;
import com.thinkgem.jeesite.modules.enguser.service.EnguserService;
import com.thinkgem.jeesite.modules.sys.entity.Office;
import com.thinkgem.jeesite.modules.sys.entity.User;
import com.thinkgem.jeesite.modules.sys.service.SystemService;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;
import com.thinkgem.jeesite.modules.usercourse.pojo.CourseIsOpen;
import com.thinkgem.jeesite.modules.usercourse.service.UserCourseService;
import com.thinkgem.jeesite.modules.userenguser.pojo.EngUserJoinCourses;
import com.thinkgem.jeesite.modules.userenguser.pojo.UserEngUserPojo;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.session.Session;
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
import com.thinkgem.jeesite.modules.userenguser.entity.UserEnguser;
import com.thinkgem.jeesite.modules.userenguser.service.UserEnguserService;

import java.util.ArrayList;
import java.util.List;

/**
 * userenguserController
 * @author cuisw
 * @version 2019-08-06
 */
@Controller
@RequestMapping(value = "${adminPath}/userenguser/userEnguser")
public class UserEnguserController extends BaseController {

	@Autowired
	private UserEnguserService userEnguserService;

	
	@ModelAttribute
	public UserEnguser get(@RequestParam(required=false) String id) {
		UserEnguser entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = userEnguserService.get(id);
		}
		if (entity == null){
			entity = new UserEnguser();
		}
		return entity;
	}
	
	@RequiresPermissions("userenguser:userEnguser:view")
	@RequestMapping(value = {"list", ""})
	public String list(UserEnguser userEnguser, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<UserEnguser> page = userEnguserService.findPage(new Page<UserEnguser>(request, response), userEnguser);
		model.addAttribute("page", page);
		return "modules/userenguser/userEnguserList";
	}

	@RequiresPermissions("userenguser:userEnguser:view")
	@RequestMapping(value = "form")
	public String form(UserEnguser userEnguser, Model model) {
		model.addAttribute("userEnguser", userEnguser);
		return "modules/userenguser/userEnguserForm";
	}

	@RequiresPermissions("userenguser:userEnguser:edit")
	@RequestMapping(value = "save")
	public String save(UserEnguser userEnguser, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, userEnguser)){
			return form(userEnguser, model);
		}
		userEnguserService.save(userEnguser);
		addMessage(redirectAttributes, "保存userenguser成功");
		return "redirect:"+Global.getAdminPath()+"/userenguser/userEnguser/?repage";
	}
	
	@RequiresPermissions("userenguser:userEnguser:edit")
	@RequestMapping(value = "delete")
	public String delete(UserEnguser userEnguser, RedirectAttributes redirectAttributes) {
		userEnguserService.delete(userEnguser);
		addMessage(redirectAttributes, "删除userenguser成功");
		return "redirect:"+Global.getAdminPath()+"/userenguser/userEnguser/?repage";
	}

}