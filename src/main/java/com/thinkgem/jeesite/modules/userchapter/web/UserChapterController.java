/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.userchapter.web;

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
import com.thinkgem.jeesite.modules.userchapter.entity.UserChapter;
import com.thinkgem.jeesite.modules.userchapter.service.UserChapterService;

/**
 * userenguserController
 * @author cuisw
 * @version 2019-08-06
 */
@Controller
@RequestMapping(value = "${adminPath}/userchapter/userChapter")
public class UserChapterController extends BaseController {

	@Autowired
	private UserChapterService userChapterService;
	
	@ModelAttribute
	public UserChapter get(@RequestParam(required=false) String id) {
		UserChapter entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = userChapterService.get(id);
		}
		if (entity == null){
			entity = new UserChapter();
		}
		return entity;
	}
	
	@RequiresPermissions("userchapter:userChapter:view")
	@RequestMapping(value = {"list", ""})
	public String list(UserChapter userChapter, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<UserChapter> page = userChapterService.findPage(new Page<UserChapter>(request, response), userChapter); 
		model.addAttribute("page", page);
		return "modules/userchapter/userChapterList";
	}

	@RequiresPermissions("userchapter:userChapter:view")
	@RequestMapping(value = "form")
	public String form(UserChapter userChapter, Model model) {
		model.addAttribute("userChapter", userChapter);
		return "modules/userchapter/userChapterForm";
	}

	@RequiresPermissions("userchapter:userChapter:edit")
	@RequestMapping(value = "save")
	public String save(UserChapter userChapter, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, userChapter)){
			return form(userChapter, model);
		}
		userChapterService.save(userChapter);
		addMessage(redirectAttributes, "保存userenguser成功");
		return "redirect:"+Global.getAdminPath()+"/userchapter/userChapter/?repage";
	}
	
	@RequiresPermissions("userchapter:userChapter:edit")
	@RequestMapping(value = "delete")
	public String delete(UserChapter userChapter, RedirectAttributes redirectAttributes) {
		userChapterService.delete(userChapter);
		addMessage(redirectAttributes, "删除userenguser成功");
		return "redirect:"+Global.getAdminPath()+"/userchapter/userChapter/?repage";
	}

}