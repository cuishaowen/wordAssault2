/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.wordexample.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thinkgem.jeesite.modules.wordexample.entity.WordExample;
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
import com.thinkgem.jeesite.modules.wordexample.service.WordExampleService;

/**
 * 单词例句Controller
 * @author cuisw
 * @version 2019-08-06
 */
@Controller
@RequestMapping(value = "${adminPath}/wordexample/wordExamlpe")
public class WordExampleController extends BaseController {

	@Autowired
	private WordExampleService wordExampleService;
	
	@ModelAttribute
	public WordExample get(@RequestParam(required=false) String id) {
		WordExample entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = wordExampleService.get(id);
		}
		if (entity == null){
			entity = new WordExample();
		}
		return entity;
	}
	
	@RequiresPermissions("wordexample:wordExample:view")
	@RequestMapping(value = {"list", ""})
	public String list(WordExample wordExample, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<WordExample> page = wordExampleService.findPage(new Page<WordExample>(request, response), wordExample);
		model.addAttribute("page", page);
		return "modules/wordexample/wordExamlpeList";
	}

	@RequiresPermissions("wordexample:wordExample:view")
	@RequestMapping(value = "form")
	public String form(WordExample wordExample, Model model) {
		model.addAttribute("wordExamlpe", wordExample);
		return "modules/wordexample/wordExamlpeForm";
	}

	@RequiresPermissions("wordexample:wordExample:edit")
	@RequestMapping(value = "save")
	public String save(WordExample wordExample, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, wordExample)){
			return form(wordExample, model);
		}
		wordExampleService.save(wordExample);
		addMessage(redirectAttributes, "保存wordexample成功");
		return "redirect:"+Global.getAdminPath()+"/wordexample/wordExample/?repage";
	}
	
	@RequiresPermissions("wordexample:wordExample:edit")
	@RequestMapping(value = "delete")
	public String delete(WordExample wordExample, RedirectAttributes redirectAttributes) {
		wordExampleService.delete(wordExample);
		addMessage(redirectAttributes, "删除wordexample成功");
		return "redirect:"+Global.getAdminPath()+"/wordexample/wordExample/?repage";
	}

}