/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.chapterexample.web;

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
import com.thinkgem.jeesite.modules.chapterexample.entity.ChapterExample;
import com.thinkgem.jeesite.modules.chapterexample.service.ChapterExampleService;

/**
 * chapterexampleController
 * @author cuisw
 * @version 2019-08-07
 */
@Controller
@RequestMapping(value = "${adminPath}/chapterexample/chapterExample")
public class ChapterExampleController extends BaseController {

	@Autowired
	private ChapterExampleService chapterExampleService;
	
	@ModelAttribute
	public ChapterExample get(@RequestParam(required=false) String id) {
		ChapterExample entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = chapterExampleService.get(id);
		}
		if (entity == null){
			entity = new ChapterExample();
		}
		return entity;
	}
	
	@RequiresPermissions("chapterexample:chapterExample:view")
	@RequestMapping(value = {"list", ""})
	public String list(ChapterExample chapterExample, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<ChapterExample> page = chapterExampleService.findPage(new Page<ChapterExample>(request, response), chapterExample); 
		model.addAttribute("page", page);
		return "modules/chapterexample/chapterExampleList";
	}

	@RequiresPermissions("chapterexample:chapterExample:view")
	@RequestMapping(value = "form")
	public String form(ChapterExample chapterExample, Model model) {
		model.addAttribute("chapterExample", chapterExample);
		return "modules/chapterexample/chapterExampleForm";
	}

	@RequiresPermissions("chapterexample:chapterExample:edit")
	@RequestMapping(value = "save")
	public String save(ChapterExample chapterExample, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, chapterExample)){
			return form(chapterExample, model);
		}
		chapterExampleService.save(chapterExample);
		addMessage(redirectAttributes, "保存chapterexample成功");
		return "redirect:"+Global.getAdminPath()+"/chapterexample/chapterExample/?repage";
	}
	
	@RequiresPermissions("chapterexample:chapterExample:edit")
	@RequestMapping(value = "delete")
	public String delete(ChapterExample chapterExample, RedirectAttributes redirectAttributes) {
		chapterExampleService.delete(chapterExample);
		addMessage(redirectAttributes, "删除chapterexample成功");
		return "redirect:"+Global.getAdminPath()+"/chapterexample/chapterExample/?repage";
	}

}