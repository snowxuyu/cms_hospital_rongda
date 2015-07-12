package com.rongda.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rongda.model.CMS_USER;
import com.rongda.service.ICmsUserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	private ICmsUserService cmsUserService;

	public ICmsUserService getCmsUserService() {
		return cmsUserService;
	}
	@Resource
	public void setCmsUserService(ICmsUserService cmsUserService) {
		this.cmsUserService = cmsUserService;
	}

	@RequestMapping(value="/update/{YWXH}", method=RequestMethod.GET)
	public String updatePassword(@PathVariable String YWXH, Model model) {
		CMS_USER u = cmsUserService.loadById(YWXH);
		model.addAttribute("user", u);
		return "admin/update";
	}
	
	@RequestMapping(value="/update/{YWXH}", method=RequestMethod.POST)
	public String updatePassword(@PathVariable String YWXH, @Validated CMS_USER user, BindingResult br) {
		if (br.hasErrors())
		{
			return "admin/update";
		}
		CMS_USER u = cmsUserService.loadById(YWXH);
		u.setGLYMM(user.getGLYMM());
		cmsUserService.updateGlyPassword(u);
		return "admin/update";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(Model model,HttpSession session)
	{
		session.setAttribute("USER_KEY", null);
		return "admin/login";
	}
	
	@RequestMapping(value="/no_login", method=RequestMethod.GET)
	public String no_login(Model model)
	{
		return "admin/no_login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(String GLYZH, String GLYMM, Model model, HttpSession session)
	{
		if (GLYZH == null || GLYZH == "")
		{
			model.addAttribute("msg", "用户名或密码不能为空！");
			return "admin/login";
		}
			
		CMS_USER user = cmsUserService.loadByUsername(GLYZH);
		if (user == null) 
		{
			model.addAttribute("msg", "用户名或密码错误！");
			return "admin/login";
		}
			
		if (!user.getGLYMM().equals(GLYMM))
		{
			model.addAttribute("msg", "用户名或密码错误！");
			return "admin/login";
		}
		session.setAttribute("USER_KEY", user);
		session.setMaxInactiveInterval(300);
		model.addAttribute("USER_KEY", user);
		return "admin/index";
	}
}
