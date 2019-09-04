/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.usersubject.web;

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
import com.thinkgem.jeesite.modules.usersubject.entity.UserSubject;
import com.thinkgem.jeesite.modules.usersubject.service.UserSubjectService;

/**
 * 用户语法题Controller
 * @author cuisw
 * @version 2019-09-04
 */
@Controller
@RequestMapping(value = "${adminPath}/usersubject/userSubject")
public class UserSubjectController extends BaseController {

	@Autowired
	private UserSubjectService userSubjectService;
	
	@ModelAttribute
	public UserSubject get(@RequestParam(required=false) String id) {
		UserSubject entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = userSubjectService.get(id);
		}
		if (entity == null){
			entity = new UserSubject();
		}
		return entity;
	}
	
	@RequiresPermissions("usersubject:userSubject:view")
	@RequestMapping(value = {"list", ""})
	public String list(UserSubject userSubject, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<UserSubject> page = userSubjectService.findPage(new Page<UserSubject>(request, response), userSubject); 
		model.addAttribute("page", page);
		return "modules/usersubject/userSubjectList";
	}

	@RequiresPermissions("usersubject:userSubject:view")
	@RequestMapping(value = "form")
	public String form(UserSubject userSubject, Model model) {
		model.addAttribute("userSubject", userSubject);
		return "modules/usersubject/userSubjectForm";
	}

	@RequiresPermissions("usersubject:userSubject:edit")
	@RequestMapping(value = "save")
	public String save(UserSubject userSubject, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, userSubject)){
			return form(userSubject, model);
		}
		userSubjectService.save(userSubject);
		addMessage(redirectAttributes, "保存保存用户语法题成功成功");
		return "redirect:"+Global.getAdminPath()+"/usersubject/userSubject/?repage";
	}
	
	@RequiresPermissions("usersubject:userSubject:edit")
	@RequestMapping(value = "delete")
	public String delete(UserSubject userSubject, RedirectAttributes redirectAttributes) {
		userSubjectService.delete(userSubject);
		addMessage(redirectAttributes, "删除保存用户语法题成功成功");
		return "redirect:"+Global.getAdminPath()+"/usersubject/userSubject/?repage";
	}

}