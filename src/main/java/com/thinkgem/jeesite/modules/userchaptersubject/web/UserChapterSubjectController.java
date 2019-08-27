/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.userchaptersubject.web;

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
import com.thinkgem.jeesite.modules.userchaptersubject.entity.UserChapterSubject;
import com.thinkgem.jeesite.modules.userchaptersubject.service.UserChapterSubjectService;

/**
 * userchaptersubjectController
 * @author cuisw
 * @version 2019-08-06
 */
@Controller
@RequestMapping(value = "${adminPath}/userchaptersubject/userChapterSubject")
public class UserChapterSubjectController extends BaseController {

	@Autowired
	private UserChapterSubjectService userChapterSubjectService;
	
	@ModelAttribute
	public UserChapterSubject get(@RequestParam(required=false) String id) {
		UserChapterSubject entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = userChapterSubjectService.get(id);
		}
		if (entity == null){
			entity = new UserChapterSubject();
		}
		return entity;
	}
	
	@RequiresPermissions("userchaptersubject:userChapterSubject:view")
	@RequestMapping(value = {"list", ""})
	public String list(UserChapterSubject userChapterSubject, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<UserChapterSubject> page = userChapterSubjectService.findPage(new Page<UserChapterSubject>(request, response), userChapterSubject); 
		model.addAttribute("page", page);
		return "modules/userchaptersubject/userChapterSubjectList";
	}

	@RequiresPermissions("userchaptersubject:userChapterSubject:view")
	@RequestMapping(value = "form")
	public String form(UserChapterSubject userChapterSubject, Model model) {
		model.addAttribute("userChapterSubject", userChapterSubject);
		return "modules/userchaptersubject/userChapterSubjectForm";
	}

	@RequiresPermissions("userchaptersubject:userChapterSubject:edit")
	@RequestMapping(value = "save")
	public String save(UserChapterSubject userChapterSubject, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, userChapterSubject)){
			return form(userChapterSubject, model);
		}
		userChapterSubjectService.save(userChapterSubject);
		addMessage(redirectAttributes, "保存userchaptersubject成功");
		return "redirect:"+Global.getAdminPath()+"/userchaptersubject/userChapterSubject/?repage";
	}
	
	@RequiresPermissions("userchaptersubject:userChapterSubject:edit")
	@RequestMapping(value = "delete")
	public String delete(UserChapterSubject userChapterSubject, RedirectAttributes redirectAttributes) {
		userChapterSubjectService.delete(userChapterSubject);
		addMessage(redirectAttributes, "删除userchaptersubject成功");
		return "redirect:"+Global.getAdminPath()+"/userchaptersubject/userChapterSubject/?repage";
	}

}