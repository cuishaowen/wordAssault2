/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.chapterword.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thinkgem.jeesite.modules.chapter.entity.Chapter;
import com.thinkgem.jeesite.modules.chapter.service.ChapterService;
import com.thinkgem.jeesite.modules.chapterword.entity.CourseChapterWord;
import com.thinkgem.jeesite.modules.course.entity.Course;
import com.thinkgem.jeesite.modules.course.service.CourseService;
import com.thinkgem.jeesite.modules.word.entity.Word;
import com.thinkgem.jeesite.modules.word.service.WordService;
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
import com.thinkgem.jeesite.modules.chapterword.entity.ChapterWord;
import com.thinkgem.jeesite.modules.chapterword.service.ChapterWordService;

import java.util.ArrayList;
import java.util.List;

/**
 * 章节单词Controller
 * @author cuisw
 * @version 2019-08-02
 */
@Controller
@RequestMapping(value = "${adminPath}/chapterword/chapterWord")
public class ChapterWordController extends BaseController {

	@Autowired
	private ChapterWordService chapterWordService;
	@Autowired
	private ChapterService chapterService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private WordService wordService;

	
	@ModelAttribute
	public ChapterWord get(@RequestParam(required=false) String id) {
		ChapterWord entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = chapterWordService.get(id);
		}
		if (entity == null){
			entity = new ChapterWord();
		}
		return entity;
	}


	@RequiresPermissions("chapterword:chapterWord:view")
	@RequestMapping(value = {"list", ""})
	public String list(ChapterWord chapterWord, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<ChapterWord> page = chapterWordService.findPage(new Page<ChapterWord>(request, response), chapterWord);
		model.addAttribute("page", page);
		return "modules/chapterword/chapterWordList";
	}

	@RequiresPermissions("chapterword:chapterWord:view")
	@RequestMapping(value = "form")
	public String form(ChapterWord chapterWord, Model model) {
		model.addAttribute("chapterWord", chapterWord);
		return "modules/chapterword/chapterWordForm";
	}

	/**
	 * 1.如果是新增操作则需要校验该章节是否已经存在
	 * 2.如果是修改操作 不校验
	 * 3.新增和修改方法重写
	 */
	@RequiresPermissions("chapterword:chapterWord:edit")
	@RequestMapping(value = "save")
	public String save(ChapterWord chapterWord, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, chapterWord)){
			return form(chapterWord, model);
		}
		if (StringUtils.isNotBlank(chapterWord.getId())){
			chapterWordService.update(chapterWord);
			addMessage(redirectAttributes, "修改章节单词成功");
			return "redirect:"+Global.getAdminPath()+"/chapterword/chapterWord/?repage";
		}else {
			boolean flag = chapterWordService.validateChapterIsExistence(chapterWord.getChapterId());
			if (!flag) {
				chapterWordService.insert(chapterWord);
				addMessage(redirectAttributes, "保存章节单词成功");
				return "redirect:"+Global.getAdminPath()+"/chapterword/chapterWord/?repage";
			}else {
				addMessage(redirectAttributes, "该章节已存在，请在修改页进行修改");
				return "modules/chapterword/chapterWordForm";
			}
		}
	}
	
	@RequiresPermissions("chapterword:chapterWord:edit")
	@RequestMapping(value = "delete")
	public String delete(ChapterWord chapterWord, RedirectAttributes redirectAttributes) {
		chapterWordService.delete(chapterWord);
		addMessage(redirectAttributes, "删除章节单词成功");
		return "redirect:"+Global.getAdminPath()+"/chapterword/chapterWord/?repage";
	}

	// 删除具体的单词
	@RequiresPermissions("chapterword:chapterWord:edit")
	@RequestMapping(value = "updateByWordId")
	public String updateByWordId(String id, String wordId, RedirectAttributes redirectAttributes) {
		chapterWordService.updateByWordId(id, wordId);
		addMessage(redirectAttributes, "删除章节单词成功");
		return "redirect:"+Global.getAdminPath()+"/chapterword/chapterWord/?repage";
	}

}