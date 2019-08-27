/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.enguseroption.web;

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
import com.thinkgem.jeesite.modules.enguseroption.entity.EnguserOption;
import com.thinkgem.jeesite.modules.enguseroption.service.EnguserOptionService;

/**
 * enguseroptionController
 * @author cuisw
 * @version 2019-08-10
 */
@Controller
@RequestMapping(value = "${adminPath}/enguseroption/enguserOption")
public class EnguserOptionController extends BaseController {

	@Autowired
	private EnguserOptionService enguserOptionService;
	
	@ModelAttribute
	public EnguserOption get(@RequestParam(required=false) String id) {
		EnguserOption entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = enguserOptionService.get(id);
		}
		if (entity == null){
			entity = new EnguserOption();
		}
		return entity;
	}
	
	@RequiresPermissions("enguseroption:enguserOption:view")
	@RequestMapping(value = {"list", ""})
	public String list(EnguserOption enguserOption, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<EnguserOption> page = enguserOptionService.findPage(new Page<EnguserOption>(request, response), enguserOption); 
		model.addAttribute("page", page);
		return "modules/enguseroption/enguserOptionList";
	}

	@RequiresPermissions("enguseroption:enguserOption:view")
	@RequestMapping(value = "form")
	public String form(EnguserOption enguserOption, Model model) {
		model.addAttribute("enguserOption", enguserOption);
		return "modules/enguseroption/enguserOptionForm";
	}

	@RequiresPermissions("enguseroption:enguserOption:edit")
	@RequestMapping(value = "save")
	public String save(EnguserOption enguserOption, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, enguserOption)){
			return form(enguserOption, model);
		}
		enguserOptionService.save(enguserOption);
		addMessage(redirectAttributes, "保存enguseroption成功");
		return "redirect:"+Global.getAdminPath()+"/enguseroption/enguserOption/?repage";
	}
	
	@RequiresPermissions("enguseroption:enguserOption:edit")
	@RequestMapping(value = "delete")
	public String delete(EnguserOption enguserOption, RedirectAttributes redirectAttributes) {
		enguserOptionService.delete(enguserOption);
		addMessage(redirectAttributes, "删除enguseroption成功");
		return "redirect:"+Global.getAdminPath()+"/enguseroption/enguserOption/?repage";
	}

}