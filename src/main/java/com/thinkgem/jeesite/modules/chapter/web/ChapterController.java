/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.chapter.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thinkgem.jeesite.modules.chapter.entity.CourseList;
import com.thinkgem.jeesite.modules.course.entity.Course;
import com.thinkgem.jeesite.modules.course.service.CourseService;
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
import com.thinkgem.jeesite.modules.chapter.entity.Chapter;
import com.thinkgem.jeesite.modules.chapter.service.ChapterService;

import java.util.List;

/**
 * 章节CUDRController
 * @author cuisw
 * @version 2019-07-27
 */
@Controller
@RequestMapping(value = "${adminPath}/chapter/chapter")
public class ChapterController extends BaseController {

	@Autowired
	private ChapterService chapterService;
	@Autowired
	private CourseService courseService;
	
	@ModelAttribute
	public Chapter get(@RequestParam(required=false) String id) {
		Chapter entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = chapterService.get(id);
		}
		if (entity == null){
			entity = new Chapter();
		}
		return entity;
	}
	
	@RequiresPermissions("chapter:chapter:view")
	@RequestMapping(value = {"list", ""})
	public String list(Chapter chapter, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Chapter> page = chapterService.findPage(new Page<Chapter>(request, response), chapter); 
		model.addAttribute("page", page);
		return "modules/chapter/chapterList";
	}

	@RequiresPermissions("chapter:chapter:view")
	@RequestMapping(value = "form")
	public String form(Chapter chapter, Model model) {
		model.addAttribute("chapter", chapter);
		return "modules/chapter/chapterForm";
	}

	@RequiresPermissions("chapter:chapter:edit")
	@RequestMapping(value = "save")
	public String save(Chapter chapter, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, chapter)){
			return form(chapter, model);
		}
		chapterService.save(chapter);
		addMessage(redirectAttributes, "保存章节成功");
		return "redirect:"+Global.getAdminPath()+"/chapter/chapter/?repage";
	}
	
	@RequiresPermissions("chapter:chapter:edit")
	@RequestMapping(value = "delete")
	public String delete(Chapter chapter, RedirectAttributes redirectAttributes) {
		chapterService.delete(chapter);
		addMessage(redirectAttributes, "删除章节成功");
		return "redirect:"+Global.getAdminPath()+"/chapter/chapter/?repage";
	}

}