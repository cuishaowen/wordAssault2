/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.enguser.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.thinkgem.jeesite.modules.enguser.pojo.Engusers;
import com.thinkgem.jeesite.modules.sys.entity.User;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;
import com.thinkgem.jeesite.modules.usercourse.entity.UserCourse;
import com.thinkgem.jeesite.modules.usercourse.pojo.CourseIsOpen;
import com.thinkgem.jeesite.modules.usercourse.service.UserCourseService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.enguser.entity.Enguser;
import com.thinkgem.jeesite.modules.enguser.service.EnguserService;

import java.util.ArrayList;
import java.util.List;

/**
 * 用户Controller
 * @author cuisw
 * @version 2019-08-06
 */
@Controller
@RequestMapping(value = "${adminPath}/enguser/enguser")
public class EnguserController extends BaseController {

	@Autowired
	private EnguserService enguserService;
	@Autowired
	private UserCourseService userCourseService;
	
	@ModelAttribute
	public Enguser get(@RequestParam(required=false) String id) {
		Enguser entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = enguserService.get(id);
		}
		if (entity == null){
			entity = new Enguser();
		}
		return entity;
	}

	@RequestMapping(value = "engUserList")
	@ResponseBody
	public List<Enguser> getAllEnguserByUserId(String userId){
		return enguserService.getAllEnguserByUserId(userId);
	}

	/**
	 * 只能查询到当前登录用户下的所有用户
	 * @param enguser
	 * @param request
	 * @param response
	 * @param model
	 * @return
	 */
	@RequiresPermissions("enguser:enguser:view")
	@RequestMapping(value = {"list", ""})
	public String list(Enguser enguser, HttpServletRequest request, HttpServletResponse response, Model model) {
		User user = UserUtils.getUser();
		String userId = user.getId();
		List<Enguser> enguserList = new ArrayList<Enguser>();
		List<Enguser> engusers = enguserService.getAllEnguserByUserId(userId);
		if (engusers != null && engusers.size() >= 1 ) {
			for (Enguser enguserInf : engusers) {
				CourseIsOpen courseIsOpen = userCourseService.getUserOpenCoursesAndNot(enguserInf.getId());
				enguserInf.setCourseIsOpen(courseIsOpen);
				enguserList.add(enguserInf);
			}
		}
		Page<Enguser> page = new Page<Enguser>(request,response);
		page.setList(enguserList);
		model.addAttribute("page", page);
		return "modules/enguser/enguserList";
	}

	@RequiresPermissions("enguser:enguser:view")
    @RequestMapping(value = "getEnguser")
    @ResponseBody
    public Enguser getEnguser(String id){
        Enguser entity = null;
        if (StringUtils.isNotBlank(id)){
            entity = enguserService.get(id);
        }
        if (entity == null){
            entity = new Enguser();
        }
        return entity;
    }

    @RequestMapping(value = "openCourse")
    public String openCourse(UserCourse userCourse,RedirectAttributes redirectAttributes) {
        userCourseService.openCourse(userCourse);
        addMessage(redirectAttributes, "课程开通成功");
        return "redirect:"+Global.getAdminPath()+"/enguser/enguser/list?repage";
    }

    @RequiresPermissions("enguser:enguser:edit")
    @RequestMapping(value = "update")
    public String update(Enguser enguser,RedirectAttributes redirectAttributes){
	    enguserService.update(enguser);
	    addMessage(redirectAttributes,"修改用户信息成功");
	    return "redirect:"+Global.getAdminPath()+"/enguser/enguser/?repage";
    }
	@RequiresPermissions("enguser:enguser:view")
	@RequestMapping(value = "form")
	public String form(Engusers engusers, Model model) {
		model.addAttribute("engusers", engusers);
		return "modules/enguser/enguserForm";
	}

	@RequiresPermissions("enguser:enguser:edit")
	@RequestMapping(value = "save")
	public String save(Enguser enguser, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, enguser)){
			return null;
		}
		enguserService.save(enguser);
		addMessage(redirectAttributes, "保存enguser成功");
		return "redirect:"+Global.getAdminPath()+"/enguser/enguser/?repage";
	}
	
	@RequiresPermissions("enguser:enguser:edit")
	@RequestMapping(value = "delete")
	public String delete(Enguser enguser, RedirectAttributes redirectAttributes) {
		enguserService.delete(enguser);
		addMessage(redirectAttributes, "删除enguser成功");
		return "redirect:"+Global.getAdminPath()+"/enguser/enguser/?repage";
	}

	@RequiresPermissions("enguser:enguser:edit")
	@RequestMapping(value = "insertMore")
	public String insertEnguserForUser(Engusers engusers, Model model, RedirectAttributes redirectAttributes){
		String id = engusers.getId();
		String loginName = engusers.getLogin();
		Integer insertNum = engusers.getInsertNum();
		enguserService.insertEnguserForUser(id, loginName, insertNum);
		addMessage(redirectAttributes, "批量新增用户成功");
		return "redirect:"+Global.getAdminPath()+"/enguser/enguser/?repage";
	}


}