package com.rongda.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rongda.model.CMS_BZMC;
import com.rongda.service.ICmsBzmcService;

@Controller
@RequestMapping("/CmsBzmc")
public class CmsBzmcController {
	private ICmsBzmcService bzmcService;

	public ICmsBzmcService getBzmcService() {
		return bzmcService;
	}
	@Resource
	public void setBzmcService(ICmsBzmcService bzmcService) {
		this.bzmcService = bzmcService;
	}
	@RequestMapping("/querybzmc")
	public String list(Model model){
		model.addAttribute("bzmc",bzmcService.listBzmc());
		return "bzmc/list";
	}
	@RequestMapping("/index")
	public String indshow(Model model){
		model.addAttribute("bzmc",bzmcService.listBzmc());
		System.out.println("index");
		return "index/index";
	}
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String add(Model model)
	{
		model.addAttribute(new CMS_BZMC());
		return "bzmc/add";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(@Validated CMS_BZMC bzmc, BindingResult br, Model model)
	{
		if (br.hasErrors())
		{
			return "bzmc/add";
		}
		bzmc.setCJR("superadmin");
		bzmc.setCJSJ(new Date());
		bzmc.setZT("1");
		bzmcService.addBzmc(bzmc);
		return "admin/index";
	}
	
	@RequestMapping("/delete/{YWXH}" )
	public String delete(@PathVariable String YWXH)
	{
		bzmcService.deleteBzmc(YWXH);
		return "redirect:/CmsBzmc/bzlist";
	}
	
	@RequestMapping(value="/update/{YWXH}", method=RequestMethod.GET)
	public String update(@PathVariable String YWXH, Model model)
	{
		CMS_BZMC bz = bzmcService.queryBzmc(YWXH);
		model.addAttribute("bz",bz);
		return "bzmc/update";
	}
	
	@RequestMapping(value="/update/{YWXH}", method=RequestMethod.POST)
	public String update(@PathVariable String YWXH, @Validated CMS_BZMC bzmc, BindingResult br)
	{
		if (br.hasErrors())
		{
			return "bzmc/update";
		}
		CMS_BZMC bz = bzmcService.queryBzmc(YWXH);
		bz.setYWXH(bzmc.getYWXH());
		bz.setXM(bzmc.getXM());
		bz.setDW(bzmc.getDW());
		bz.setDJ(bzmc.getDJ());
		bz.setXGSJ(new Date());
		
		bzmcService.updateBzmc(bz);
		return "admin/index";
	}
	
	@RequestMapping(value="/{YWXH}", method=RequestMethod.GET)
	public String show(@PathVariable String YWXH, Model model)
	{
		model.addAttribute(bzmcService.queryBzmc(YWXH));
		return "CmsBzmc/show";
	}
	@RequestMapping("/bzlist")
	public String query(Model model,HttpSession session){
		model.addAttribute("bzmc",bzmcService.listBzmc());
		return "bzmc/bzlist";
	}
}
