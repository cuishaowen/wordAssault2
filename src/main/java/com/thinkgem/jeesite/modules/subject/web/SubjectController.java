/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.subject.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ConstraintViolationException;

import com.google.common.collect.Lists;
import com.thinkgem.jeesite.common.beanvalidator.BeanValidators;
import com.thinkgem.jeesite.common.utils.excel.ExportExcel;
import com.thinkgem.jeesite.common.utils.excel.ImportExcel;
import org.apache.poi.ss.usermodel.Row;
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
import com.thinkgem.jeesite.modules.subject.entity.Subject;
import com.thinkgem.jeesite.modules.subject.service.SubjectService;

import java.util.List;

/**
 * subjectController
 * @author cuisw
 * @version 2019-08-06
 */
@Controller
@RequestMapping(value = "${adminPath}/subject/subject")
public class SubjectController extends BaseController {

	@Autowired
	private SubjectService subjectService;
	
	@ModelAttribute
	public Subject get(@RequestParam(required=false) String id) {
		Subject entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = subjectService.get(id);
		}
		if (entity == null){
			entity = new Subject();
		}
		return entity;
	}
	
	@RequiresPermissions("subject:subject:view")
	@RequestMapping(value = {"list", ""})
	public String list(Subject subject, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Subject> page = subjectService.findPage(new Page<Subject>(request, response), subject); 
		model.addAttribute("page", page);
		return "modules/subject/subjectList";
	}

	@RequiresPermissions("subject:subject:view")
	@RequestMapping(value = "form")
	public String form(Subject subject, Model model) {
		model.addAttribute("subject", subject);
		return "modules/subject/subjectForm";
	}

	@RequiresPermissions("subject:subject:edit")
	@RequestMapping(value = "save")
	public String save(Subject subject, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, subject)){
			return form(subject, model);
		}
		subjectService.save(subject);
		addMessage(redirectAttributes, "保存subject成功");
		return "redirect:"+Global.getAdminPath()+"/subject/subject/?repage";
	}
	
	@RequiresPermissions("subject:subject:edit")
	@RequestMapping(value = "delete")
	public String delete(Subject subject, RedirectAttributes redirectAttributes) {
		subjectService.delete(subject);
		addMessage(redirectAttributes, "删除subject成功");
		return "redirect:"+Global.getAdminPath()+"/subject/subject/?repage";
	}


    @RequiresPermissions("subject:subject:edit")
    @RequestMapping(value = "import", method= RequestMethod.POST)
    public String importFile(MultipartFile file, RedirectAttributes redirectAttributes){
        try {
            int successNum=0;
            int failureNum=0;
            int i = 1;
            StringBuilder failureMsg=new StringBuilder();
            ImportExcel ei=new ImportExcel(file, 1, 0);
            List<Subject> list=ei.getDataList(Subject.class);
            for(Subject subject:list){
                try {
                    Row row = ei.getRow(0);
                    subject.setVersion(ei.getCellValue(row,0).toString());
                    subjectService.save(subject);
                    i++;
                    successNum++;
                    addMessage(redirectAttributes, "已成功导入 "+successNum+" 个语法题"+failureMsg);
                } catch (ConstraintViolationException ex) {

                    failureMsg.append("<br/>语法题 "+subject.getQuestion()+" 导入失败：");
                    List<String> messageList = BeanValidators.extractPropertyAndMessageAsList(ex, ": ");
                    for (String message : messageList){
                        failureMsg.append(message+"; ");
                        failureNum++;
                    }

                }catch (Exception ex) {
                    failureMsg.append("<br/>语法题 "+subject.getQuestion()+" 导入失败："+ex.getMessage());
                }
            }
            if (failureNum>0){
                failureMsg.insert(0, "，失败 "+failureNum+" 个语法题，导入信息如下：");
            }
            addMessage(redirectAttributes, "已成功导入 "+successNum+" 个语法题"+failureMsg);
        } catch (Exception e) {
            addMessage(redirectAttributes, "导入语法题列表失败！失败信息："+e.getMessage());
        }
        return "redirect:" + adminPath + "/subject/subject?repage";
    }

    /**
     * 下载导入课程表数据模板
     * @param response
     * @param redirectAttributes
     * @return
     */
    @RequiresPermissions("subject:subject:view")
    @RequestMapping(value = "import/template")
    public String importFileTemplate(HttpServletResponse response, RedirectAttributes redirectAttributes) {
        try {
            String fileName = "语法题数据导入模板.xlsx";
            Subject subject = new Subject();
            subject.setQuestion("what's your name?");
            subject.setSelectA("A. 嘻嘻");
            subject.setSelectB("B. 哈哈");
            subject.setSelectC("C. 呵呵");
            subject.setSelectD("D. 吼吼");
            subject.setAnswer("B");
            subject.setAnalysis("[B]你是个正常人");
            List<Subject> list = Lists.newArrayList();
            list.add(subject);
            new ExportExcel("语法题数据", Subject.class, 2).setDataList(list).write(response, fileName).dispose();
            return null;
        } catch (Exception e) {
            addMessage(redirectAttributes, "导入模板下载失败！失败信息："+e.getMessage());
        }
        return "redirect:" + adminPath + "/subject/subject?repage";
    }
}