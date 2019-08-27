/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.userchapterword.web;

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
import com.thinkgem.jeesite.modules.userchapterword.entity.UserChapterWord;
import com.thinkgem.jeesite.modules.userchapterword.service.UserChapterWordService;

/**
 * userchapterwordController
 * @author cuisw
 * @version 2019-08-06
 */
@Controller
@RequestMapping(value = "${adminPath}/userchapterword/userChapterWord")
public class UserChapterWordController extends BaseController {

	@Autowired
	private UserChapterWordService userChapterWordService;
	
	@ModelAttribute
	public UserChapterWord get(@RequestParam(required=false) String id) {
		UserChapterWord entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = userChapterWordService.get(id);
		}
		if (entity == null){
			entity = new UserChapterWord();
		}
		return entity;
	}
	
	@RequiresPermissions("userchapterword:userChapterWord:view")
	@RequestMapping(value = {"list", ""})
	public String list(UserChapterWord userChapterWord, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<UserChapterWord> page = userChapterWordService.findPage(new Page<UserChapterWord>(request, response), userChapterWord); 
		model.addAttribute("page", page);
		return "modules/userchapterword/userChapterWordList";
	}

	@RequiresPermissions("userchapterword:userChapterWord:view")
	@RequestMapping(value = "form")
	public String form(UserChapterWord userChapterWord, Model model) {
		model.addAttribute("userChapterWord", userChapterWord);
		return "modules/userchapterword/userChapterWordForm";
	}

	@RequiresPermissions("userchapterword:userChapterWord:edit")
	@RequestMapping(value = "save")
	public String save(UserChapterWord userChapterWord, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, userChapterWord)){
			return form(userChapterWord, model);
		}
		userChapterWordService.save(userChapterWord);
		addMessage(redirectAttributes, "保存userchapterword成功");
		return "redirect:"+Global.getAdminPath()+"/userchapterword/userChapterWord/?repage";
	}
	
	@RequiresPermissions("userchapterword:userChapterWord:edit")
	@RequestMapping(value = "delete")
	public String delete(UserChapterWord userChapterWord, RedirectAttributes redirectAttributes) {
		userChapterWordService.delete(userChapterWord);
		addMessage(redirectAttributes, "删除userchapterword成功");
		return "redirect:"+Global.getAdminPath()+"/userchapterword/userChapterWord/?repage";
	}

}