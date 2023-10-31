package com.enomy.project.controller;

import java.io.IOException;


import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.enomy.project.model.User;
import com.enomy.project.service.UserService;


@Controller
public class UserController {
	
	@Autowired
	UserService uservice;

	@RequestMapping(value="/")
	public ModelAndView home(HttpServletResponse response) throws IOException{
		return new ModelAndView("home");
	}
	
	
	@RequestMapping(value="/login")
	public ModelAndView login(HttpServletResponse response) throws IOException{
		return new ModelAndView("login");
	}
	
	
	@RequestMapping(value="/profile")
	public ModelAndView profile(HttpServletResponse response,@ModelAttribute("userRegister") User user) throws IOException{
		return new ModelAndView("profile");
	}
	
	@RequestMapping(value="/register")
	public ModelAndView registration(HttpServletResponse response,@ModelAttribute("userRegister") User user) throws IOException{
		return new ModelAndView("register");
	}
	@RequestMapping(value="/success")
	public ModelAndView success(HttpServletResponse response) throws IOException{
		return new ModelAndView("success");
	}
	
	
	
	@RequestMapping(value = "/save", method = RequestMethod.POST) 
	public String saveUser(@ModelAttribute("userRegister") User user,BindingResult result)
	{
		uservice.save(user);
	return "redirect:/success"; 
	}
	
	@RequestMapping(value="/userLogin")
	public ModelAndView userLogin(@RequestParam String email, @RequestParam String password){
		User user = uservice.findByEmailAndPassword(email, password);
		System.out.print(user);
		if ( user != null) {
			
		return new ModelAndView("profile");
		}
		else {
			return new ModelAndView ("error");
		}
	}
	


}
