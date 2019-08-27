/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.word.web;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ConstraintViolationException;
import com.google.common.collect.Lists;
import com.thinkgem.jeesite.common.beanvalidator.BeanValidators;
import com.thinkgem.jeesite.common.utils.DateUtils;
import com.thinkgem.jeesite.common.utils.IdGen;
import com.thinkgem.jeesite.common.utils.TimeUtils;
import com.thinkgem.jeesite.common.utils.excel.ExportExcel;
import com.thinkgem.jeesite.common.utils.excel.ImportExcel;
import com.thinkgem.jeesite.modules.wordexample.entity.WordExample;
import com.thinkgem.jeesite.modules.wordexample.service.WordExampleService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.word.entity.Word;
import com.thinkgem.jeesite.modules.word.service.WordService;

import java.util.*;

/**
 * 单词管理Controller
 * @author cuisw
 * @version 2019-07-30
 */
@Controller
@RequestMapping(value = "${adminPath}/word/word")
public class WordController extends BaseController {

	@Autowired
	private WordService wordService;
	@Autowired
    private WordExampleService wordExampleService;
	
	@ModelAttribute
	public Word get(@RequestParam(required=false) String id) {
		Word entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = wordService.get(id);
		}
		if (entity == null){
			entity = new Word();
		}
		return entity;
	}

    @RequiresPermissions("word:word:edit")
    @RequestMapping(value = "import", method= RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes){
        try {
            int successNum=0;
            int failureNum=0;
            StringBuilder failureMsg=new StringBuilder();
            ImportExcel ei=new ImportExcel(file, 1, 0);
            List<Word> list=ei.getDataList(Word.class);
            for(Word word:list){
                try {
                    String id = IdGen.uuid();
                    word.setId(id);
                    wordService.insert(word);
                    String examples = word.getExamples();
                    String[] arr = examples.split("###");
                    for (int i = 0; i < arr.length; i++){
                        WordExample wordExample = new WordExample();
                        wordExample.setWordId(id);
                        wordExample.setExample(arr[i]);
                        wordExampleService.save(wordExample);
                    }
                    successNum++;
                    addMessage(redirectAttributes, "已成功导入 "+successNum+" 条单词"+failureMsg);
                } catch (ConstraintViolationException ex) {

                    failureMsg.append("<br/>单词 "+word.getEnglish()+" 导入失败：");
                    List<String> messageList = BeanValidators.extractPropertyAndMessageAsList(ex, ": ");
                    for (String message : messageList){
                        failureMsg.append(message+"; ");
                        failureNum++;
                    }

                }catch (Exception ex) {
                    failureMsg.append("<br/>单词 "+word.getEnglish()+" 导入失败："+ex.getMessage());
                }
            }
            if (failureNum>0){
                failureMsg.insert(0, "，失败 "+failureNum+" 条单词，导入信息如下：");
            }
            addMessage(redirectAttributes, "已成功导入 "+successNum+" 条单词"+failureMsg);
        } catch (Exception e) {
            addMessage(redirectAttributes, "导入单词表失败！失败信息："+e.getMessage());
        }
        return "redirect:" + adminPath + "/word/word?repage";
    }

    /**
     * 下载导入课程表数据模板
     * @param response
     * @param redirectAttributes
     * @return
     */
    @RequiresPermissions("word:word:view")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
        try {
            String fileName = "单词表数据导入模板.xlsx";
            Word word = new Word();
            word.setEnglish("demo");
            word.setChinese("测试");
            List<Word> list = Lists.newArrayList();
            list.add(new Word());
            new ExportExcel("单词表数据", Word.class, 2).setDataList(list).write(response, fileName).dispose();
            return null;
        } catch (Exception e) {
            addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
        }
        return "redirect:" + adminPath + "/word/word?repage";
    }



	@RequiresPermissions("word:word:view")
	@RequestMapping(value = {"list", ""})
	public String list(Word word, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Word> page = wordService.findPage(new Page<Word>(request, response), word); 
		model.addAttribute("page", page);
		return "modules/word/wordList";
	}

	@RequiresPermissions("word:word:view")
	@RequestMapping(value = "form")
	public String form(Word word, Model model) {
		model.addAttribute("word", word);
		return "modules/word/wordForm";
	}

	@RequiresPermissions("word:word:edit")
	@RequestMapping(value = "save")
	public String save(Word word, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, word)){
			return form(word, model);
		}
		wordService.save(word);
		addMessage(redirectAttributes, "保存单词成功");
		return "redirect:"+Global.getAdminPath()+"/word/word/?repage";
	}
	
	@RequiresPermissions("word:word:edit")
	@RequestMapping(value = "delete")
	public String delete(Word word, RedirectAttributes redirectAttributes) {
		wordService.delete(word);
		addMessage(redirectAttributes, "删除单词成功");
		return "redirect:"+Global.getAdminPath()+"/word/word/?repage";
	}

    @RequestMapping(value = "imgImport")
    public String  imgImport() {
        List<Word> words = wordService.findList(null);
        String  date = DateUtils.formatDate(new Date(),"yyyy/MM");
        for (Word word : words){
            if (word.getImg() == null || word.getImg().equals("")){
                word.setImg("/wordassault/userfiles/1/images/img/" + date  + "/" + word.getEnglish() + ".jpg");

            }
            if (word.getEngVoice() == null || word.getAmeVoice() == null || word.getEngVoice().equals("") || word.getAmeVoice().equals("")){
                word.setEngVoice("/wordassault/userfiles/engVoice/" + date  + "/"  + word.getEnglish() + ".mp3");
                word.setAmeVoice("/wordassault/userfiles/ameVoice/" + date  + "/"  + word.getEnglish() + ".mp3");
            }
            wordService.save(word);
        }
        return "redirect:"+Global.getAdminPath()+"/word/word/?repage";
    }

}
