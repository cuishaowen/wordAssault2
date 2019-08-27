/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.everymemoryword.web;

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
import com.thinkgem.jeesite.modules.everymemoryword.entity.EverydayMemoryWord;
import com.thinkgem.jeesite.modules.everymemoryword.service.EverydayMemoryWordService;

/**
 * everymemorywordController
 * @author cuisw
 * @version 2019-08-10
 */
@Controller
@RequestMapping(value = "${adminPath}/everymemoryword/everydayMemoryWord")
public class EverydayMemoryWordController extends BaseController {

	@Autowired
	private EverydayMemoryWordService everydayMemoryWordService;
	
	@ModelAttribute
	public EverydayMemoryWord get(@RequestParam(required=false) String id) {
		EverydayMemoryWord entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = everydayMemoryWordService.get(id);
		}
		if (entity == null){
			entity = new EverydayMemoryWord();
		}
		return entity;
	}
	
	@RequiresPermissions("everymemoryword:everydayMemoryWord:view")
	@RequestMapping(value = {"list", ""})
	public String list(EverydayMemoryWord everydayMemoryWord, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<EverydayMemoryWord> page = everydayMemoryWordService.findPage(new Page<EverydayMemoryWord>(request, response), everydayMemoryWord); 
		model.addAttribute("page", page);
		return "modules/everymemoryword/everydayMemoryWordList";
	}

	@RequiresPermissions("everymemoryword:everydayMemoryWord:view")
	@RequestMapping(value = "form")
	public String form(EverydayMemoryWord everydayMemoryWord, Model model) {
		model.addAttribute("everydayMemoryWord", everydayMemoryWord);
		return "modules/everymemoryword/everydayMemoryWordForm";
	}

	@RequiresPermissions("everymemoryword:everydayMemoryWord:edit")
	@RequestMapping(value = "save")
	public String save(EverydayMemoryWord everydayMemoryWord, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, everydayMemoryWord)){
			return form(everydayMemoryWord, model);
		}
		everydayMemoryWordService.save(everydayMemoryWord);
		addMessage(redirectAttributes, "保存everymemoryword成功");
		return "redirect:"+Global.getAdminPath()+"/everymemoryword/everydayMemoryWord/?repage";
	}
	
	@RequiresPermissions("everymemoryword:everydayMemoryWord:edit")
	@RequestMapping(value = "delete")
	public String delete(EverydayMemoryWord everydayMemoryWord, RedirectAttributes redirectAttributes) {
		everydayMemoryWordService.delete(everydayMemoryWord);
		addMessage(redirectAttributes, "删除everymemoryword成功");
		return "redirect:"+Global.getAdminPath()+"/everymemoryword/everydayMemoryWord/?repage";
	}

}