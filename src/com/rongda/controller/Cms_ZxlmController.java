package com.rongda.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rongda.model.CMS_ZXLM;
import com.rongda.service.ICms_ZxlmService;



@Controller
@RequestMapping("/zxlm") 
public class Cms_ZxlmController {
	private ICms_ZxlmService cms_ZxlmService;

	public ICms_ZxlmService getCms_ZxlmService() {
		return cms_ZxlmService;
	}
	@Resource
	public void setCms_ZxlmService(ICms_ZxlmService cmsZxlmService) {
		cms_ZxlmService = cmsZxlmService;
	}
	@RequestMapping("/cmszxlm")
	public String list(Model model){
		model.addAttribute("zxlm",cms_ZxlmService.listZLGL());
		return "zxlm/SGshow";
	}
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String add(Model model)
	{
		model.addAttribute(new CMS_ZXLM());
		return "zxlm/add";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(@Validated CMS_ZXLM zxlm, BindingResult br, Model model)
	{
		if (br.hasErrors())
		{
			return "zxlm/add";
		}
		cms_ZxlmService.addZLGL(zxlm);
		return "redirect:/zxlm/cmszxlm";
	}
	
	@RequestMapping(value="/delete/{LMFL}", method=RequestMethod.GET)
	public String delete(@PathVariable String YWXH)
	{
		cms_ZxlmService.deleteZLGL(YWXH);
		return "redirect:/zxlm/cmszxlm";
	}

	@RequestMapping(value="/update/{LMFL}", method=RequestMethod.GET)
	public String update(@PathVariable String LMFL,Model model)
	{
		CMS_ZXLM zl=(CMS_ZXLM) cms_ZxlmService.queryLMFL(LMFL);
		model.addAttribute("zl",zl);
	//	cms_ZxlmService.updateZLGL(zl);
		return "zxlm/SGshow";
	}
	
	
	@RequestMapping(value="/update/{LMFL}", method=RequestMethod.POST)
	public String update(@PathVariable String LMFL, @Validated CMS_ZXLM zxlm, BindingResult br)
	{
		if (br.hasErrors()) return "zxlm/SGshow";
		CMS_ZXLM zl=cms_ZxlmService.queryLMFL(LMFL);
	//	model.addAttribute("zl",zl);
		zl.setLMBT(zxlm.getLMBT());
		zl.setLMNR(zxlm.getLMNR());
		zl.setFBSJ(zxlm.getFBSJ());
		zl.setFBR(zxlm.getFBR());
		zl.setCQSJ(zxlm.getCQSJ());
		zl.setCQR(zxlm.getCQR());
		zl.setXGSJ(zxlm.getXGSJ());
		zl.setXGR(zxlm.getXGR());
		zl.setZT(zxlm.getZT());

		cms_ZxlmService.updateZLGL(zl);
		return "admin/mainfra";
	}
	@RequestMapping("/lmfl/{LMFL}")
	public String lmfl(@PathVariable String LMFL, Model model, HttpSession session)
	{
		model.addAttribute("zxlm", cms_ZxlmService.queryLMFL(LMFL));
		session.setAttribute("zxlm", LMFL);
		return "zxlm/SGshow";
	}
	
	@RequestMapping(value="query/{YWXH}", method=RequestMethod.GET)
	public String show(@PathVariable String YWXH, Model model)
	{
		model.addAttribute(cms_ZxlmService.queryZLGL(YWXH));
		return "zxlm/SGshow";
	}
	@RequestMapping("/query2")
	public String query2(Model model){
		model.addAttribute("zxlm",cms_ZxlmService.queryZLGL2());
		return "zxlm/inshow";
	}
	@RequestMapping("/query3")
	public String query3(Model model){
		model.addAttribute("zxlm",cms_ZxlmService.queryZLGL3());
		return "zxlm/inshow";
	}
	@RequestMapping("/query4")
	public String query4(Model model){
		model.addAttribute("zxlm",cms_ZxlmService.queryZLGL4());
		return "zxlm/inshow";
	}
	@RequestMapping("/query5")
	public String query5(Model model){
		model.addAttribute("zxlm",cms_ZxlmService.queryZLGL5());
		return "zxlm/inshow";
	}
}
