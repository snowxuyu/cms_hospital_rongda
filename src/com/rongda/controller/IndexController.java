package com.rongda.controller;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rongda.service.ICmsBzmcService;
import com.rongda.service.ICmsDxlmService;

@Controller
@RequestMapping("/cmsIndex")
public class IndexController {
	
	private ICmsDxlmService cmsDxlmService;
	
	public ICmsDxlmService getCmsDxlmService() {
		return cmsDxlmService;
	}
	@Resource
	public void setCmsDxlmService(ICmsDxlmService cmsDxlmService) {
		this.cmsDxlmService = cmsDxlmService;
	}
	public ICmsBzmcService getBzmcService() {
		return bzmcService;
	}
	@Resource
	public void setBzmcService(ICmsBzmcService bzmcService) {
		this.bzmcService = bzmcService;
	}
	@RequestMapping("/index")
	public String index(Model model)
	{
		model.addAttribute("dxlm", cmsDxlmService.listDxlm('A'));
		model.addAttribute("bzmc",bzmcService.listBzmc());
		return "index/index";
	}
	private ICmsBzmcService bzmcService;

	
}
