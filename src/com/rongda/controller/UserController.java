package com.rongda.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rongda.model.User;
import com.rongda.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	private IUserService userService;

	public IUserService getUserService() {
		return userService;
	}
	@Resource
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping("/users")
	public String list(Model model)
	{
		model.addAttribute("users",userService.listUser());
		return "user/list";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String add(Model model)
	{
		model.addAttribute(new User());
		return "user/add";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(@Validated User user, BindingResult br, Model model)
	{
		if (br.hasErrors())
		{
			return "user/add";
		}
		userService.addUser(user);
		return "redirect:/user/users";
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String delete(@PathVariable int id)
	{
		userService.deleteUser(id);
		return "redirect:/user/users";
	}
	
	@RequestMapping(value="/update/{id}", method=RequestMethod.GET)
	public String update(@PathVariable int id, Model model)
	{
		User u = userService.loadUser(id);
		model.addAttribute("user",u);
		return "user/update";
	}
	
	@RequestMapping(value="/update/{id}", method=RequestMethod.POST)
	public String update(@PathVariable int id, @Validated User user, BindingResult br)
	{
		if (br.hasErrors())
		{
			return "user/update";
		}
		User u = userService.loadUser(id);
		u.setUsername(user.getUsername());
		u.setPassword(user.getPassword());
		u.setPhone(user.getPhone());
		userService.updateUser(u);
		return "redirect:/user/users";
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public String show(@PathVariable int id, Model model)
	{
		model.addAttribute(userService.loadUser(id));
		return "user/show";
	}
}
