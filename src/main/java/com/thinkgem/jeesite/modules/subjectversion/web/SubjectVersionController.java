/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.subjectversion.web;

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
import com.thinkgem.jeesite.modules.subjectversion.entity.SubjectVersion;
import com.thinkgem.jeesite.modules.subjectversion.service.SubjectVersionService;

/**
 * 语法题版本Controller
 * @author cuisw
 * @version 2019-09-04
 */
@Controller
@RequestMapping(value = "${adminPath}/subjectversion/subjectVersion")
public class SubjectVersionController extends BaseController {

	@Autowired
	private SubjectVersionService subjectVersionService;
	
	@ModelAttribute
	public SubjectVersion get(@RequestParam(required=false) String id) {
		SubjectVersion entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = subjectVersionService.get(id);
		}
		if (entity == null){
			entity = new SubjectVersion();
		}
		return entity;
	}
	
	@RequiresPermissions("subjectversion:subjectVersion:view")
	@RequestMapping(value = {"list", ""})
	public String list(SubjectVersion subjectVersion, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<SubjectVersion> page = subjectVersionService.findPage(new Page<SubjectVersion>(request, response), subjectVersion); 
		model.addAttribute("page", page);
		return "modules/subjectversion/subjectVersionList";
	}

	@RequiresPermissions("subjectversion:subjectVersion:view")
	@RequestMapping(value = "form")
	public String form(SubjectVersion subjectVersion, Model model) {
		model.addAttribute("subjectVersion", subjectVersion);
		return "modules/subjectversion/subjectVersionForm";
	}

	@RequiresPermissions("subjectversion:subjectVersion:edit")
	@RequestMapping(value = "save")
	public String save(SubjectVersion subjectVersion, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, subjectVersion)){
			return form(subjectVersion, model);
		}
		subjectVersionService.save(subjectVersion);
		addMessage(redirectAttributes, "保存保存语法题成功成功");
		return "redirect:"+Global.getAdminPath()+"/subjectversion/subjectVersion/?repage";
	}
	
	@RequiresPermissions("subjectversion:subjectVersion:edit")
	@RequestMapping(value = "delete")
	public String delete(SubjectVersion subjectVersion, RedirectAttributes redirectAttributes) {
		subjectVersionService.delete(subjectVersion);
		addMessage(redirectAttributes, "删除保存语法题成功成功");
		return "redirect:"+Global.getAdminPath()+"/subjectversion/subjectVersion/?repage";
	}

}