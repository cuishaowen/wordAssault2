/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.usersubjectversion.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.usersubjectversion.entity.UserSubjectVersion;
import com.thinkgem.jeesite.modules.usersubjectversion.service.UserSubjectVersionService;

/**
 * 用户题目版本Controller
 * @author cuisw
 * @version 2019-09-03
 */
@Controller
@RequestMapping(value = "${adminPath}/usersubjectversion/userSubjectVersion")
public class UserSubjectVersionController extends BaseController {

	@Autowired
	private UserSubjectVersionService userSubjectVersionService;
	
	@ModelAttribute
	public UserSubjectVersion get(@RequestParam(required=false) String id) {
		UserSubjectVersion entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = userSubjectVersionService.get(id);
		}
		if (entity == null){
			entity = new UserSubjectVersion();
		}
		return entity;
	}
	
	@RequiresPermissions("usersubjectversion:userSubjectVersion:view")
	@RequestMapping(value = {"list", ""})
	public String list(UserSubjectVersion userSubjectVersion, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<UserSubjectVersion> page = userSubjectVersionService.findPage(new Page<UserSubjectVersion>(request, response), userSubjectVersion); 
		model.addAttribute("page", page);
		return "modules/usersubjectversion/userSubjectVersionList";
	}

	@RequiresPermissions("usersubjectversion:userSubjectVersion:view")
	@RequestMapping(value = "form")
	public String form(UserSubjectVersion userSubjectVersion, Model model) {
		model.addAttribute("userSubjectVersion", userSubjectVersion);
		return "modules/usersubjectversion/userSubjectVersionForm";
	}

	@RequiresPermissions("usersubjectversion:userSubjectVersion:edit")
	@RequestMapping(value = "save")
	public String save(UserSubjectVersion userSubjectVersion, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, userSubjectVersion)){
			return form(userSubjectVersion, model);
		}
		userSubjectVersionService.save(userSubjectVersion);
		addMessage(redirectAttributes, "保存保存用户题目版本成功成功");
		return "redirect:"+Global.getAdminPath()+"/usersubjectversion/userSubjectVersion/?repage";
	}
	
	@RequiresPermissions("usersubjectversion:userSubjectVersion:edit")
	@RequestMapping(value = "delete")
	public String delete(UserSubjectVersion userSubjectVersion, RedirectAttributes redirectAttributes) {
		userSubjectVersionService.delete(userSubjectVersion);
		addMessage(redirectAttributes, "删除保存用户题目版本成功成功");
		return "redirect:"+Global.getAdminPath()+"/usersubjectversion/userSubjectVersion/?repage";
	}

}