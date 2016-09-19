package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.NewUser;
import com.service.RegisterService;

@Controller
public class RegisterController {
	
	@Autowired
	RegisterService rs;
	@ModelAttribute("Registration")
	public NewUser getNewuser() {
		return new NewUser();
	}

	@RequestMapping(value = "/rt")
	public String getReg() {
		return "registration";
		
	}
	@RequestMapping(value = "/fregister", method = RequestMethod.POST)
	public ModelAndView reguser(@ModelAttribute("Registration") NewUser newuser) {
		System.out.println(newuser);
		rs.checkNewUser(newuser);
		ModelAndView mv =new ModelAndView("login");
		return mv;	
	}
}
