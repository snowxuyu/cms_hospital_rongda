package com.rongda.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rongda.model.CMS_DXLM;
import com.rongda.service.ICmsDxlmService;
import com.rongda.util.Util;

@Controller
@RequestMapping("/cmsdxlm")
public class CmsDxlmController {
	
	private ICmsDxlmService cmsDxlmService;
	
	public ICmsDxlmService getCmsDxlmService() {
		return cmsDxlmService;
	}
	@Resource
	public void setCmsDxlmService(ICmsDxlmService cmsDxlmService) {
		this.cmsDxlmService = cmsDxlmService;
	}


	@RequestMapping("/list")
	public String list(Model model)
	{
		List<CMS_DXLM> dxlm = cmsDxlmService.listDxlm();
		model.addAttribute("dxlm", dxlm);
		return "dxlm/list";
	}
	
	@RequestMapping("/show/{YWXH}")
	public String show(@PathVariable String YWXH, Model model)
	{
		model.addAttribute("dxlm", cmsDxlmService.loadDxlm(YWXH));
		return "dxlm/show";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String add(Model model)
	{
		model.addAttribute("dxlm", new CMS_DXLM());
		return "dxlm/add";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(@Validated CMS_DXLM dxlm, BindingResult br, Model model, HttpSession session)
	{
		if (br.hasErrors()) return "dxlm/add";
		Date date = null;
		if (dxlm.getFBSJSTR().equals("") || dxlm.getFBSJSTR().equals(null))
		{
			date = new Date();
		}
		else
		{
			date = Util.string2Data(dxlm.getFBSJSTR());
		}
		dxlm.setCJR("superadmin");
		dxlm.setFBSJ(date);
		dxlm.setCJSJ(new Date());
		/*
		dxlm.setLMFL('A');
		
		dxlm.setZT('1');
		dxlm.setXGSJ(date);
		dxlm.setXGR("superadmin");*/
		
		cmsDxlmService.addDxlm(dxlm);
		return "admin/index";
	}
	
	@RequestMapping(value="/update/{YWXH}", method=RequestMethod.GET)
	public String update(@PathVariable String YWXH, Model model)
	{
		CMS_DXLM dm = cmsDxlmService.loadDxlm(YWXH);
		 Date date = new Date();  
	     System.out.println(date);  
	     SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");  
	          
	     String formatDate = df.format(dm.getFBSJ()); 
	     dm.setFBSJSTR(formatDate);
		model.addAttribute("dm", dm);
		return "dxlm/update";
	}
	
	@RequestMapping(value="/update/{YWXH}", method=RequestMethod.POST)
	public String update(@PathVariable String YWXH, @Validated CMS_DXLM dxlm, BindingResult br)
	{
		if (br.hasErrors())
			return "dxlm/update";
		CMS_DXLM dm = cmsDxlmService.loadDxlm(YWXH);
		
		Date date = null;
		if (dxlm.getFBSJSTR().equals("") || dxlm.getFBSJSTR().equals(null))
		{
			date = new Date();
		}
		else
		{
			date = Util.string2Data(dxlm.getFBSJSTR());
		}
		dm.setFBSJ(date);
		dm.setCJSJ(new Date());
		dm.setCJR("superadmin");
		dm.setFBR(dxlm.getFBR());
		dm.setLMBT(dxlm.getLMBT());
		dm.setLMNR(dxlm.getLMNR());
		/*
		dm.setLMFL('A');
		dm.setXGR("superadmin");
		dm.setXGSJ(date);
		dm.setZT('1');*/
		cmsDxlmService.updateDxlm(dm);
		return "admin/index";
	}
	
	@RequestMapping("/delete/{YWXH}")
	public String delete(@PathVariable String YWXH)
	{
		CMS_DXLM dm = cmsDxlmService.loadDxlm(YWXH);
		
		cmsDxlmService.deleteDxlm(YWXH);
		return "redirect:/cmsdxlm/lmList/"+dm.getLMFL();
	}
	
	@RequestMapping("/lmList/{LMFL}")
	public String LMlist(@PathVariable char LMFL, Model model, HttpSession session)
	{
		model.addAttribute("dxlm", cmsDxlmService.listDxlm(LMFL));
		session.setAttribute("lmfl", LMFL);
		return "dxlm/list";
	}
	
	@RequestMapping("/qtlist/{LMFL}")
	public String QTlist(@PathVariable char LMFL, Model model, HttpSession session)
	{
		model.addAttribute("dxlm", cmsDxlmService.listDxlm(LMFL));
		session.setAttribute("lmfl", LMFL);
		return "dxlm/qtlist";
	}
}
