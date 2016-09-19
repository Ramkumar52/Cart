package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.User;
import com.service.LoginService;

@Controller
public class HomeController {

	//@Autowired(required=true)//inject the object dependency
	//LoginService ls;
	
	@RequestMapping(value={"/","/home"})
	public String initial(){
		return "index";
	}
	@RequestMapping(value="/login")
	public String getlogin(){
		return "login";
	}
		@RequestMapping(value="/submit",method=RequestMethod.GET)
		public String getsubmit(){
			return "index";
	}
		@RequestMapping(value="/prodviewz",method=RequestMethod.GET)
		public String getall(){
			return "prodviewz";
	}
		/*@RequestMapping(value="/viewall1",method=RequestMethod.GET)
		public String getall1(){
			return "viewalls";
	}	*/
	@RequestMapping(value="/contact",method=RequestMethod.GET)
	public String getcontact(){
		return "contact";
	}
	@RequestMapping(value="/about",method=RequestMethod.GET)
	public String getabout(){
		return "about";
	}
	
	@RequestMapping(value="/header",method=RequestMethod.GET)
	public String getheader(){
		return "header";
	}
	@RequestMapping(value="/frontpage",method=RequestMethod.GET)
	public String getfrontpage(){
		return "frontpage";
	}
	@RequestMapping(value="/upload",method=RequestMethod.GET)
	public String getupload(){
		return "FileUploadForm";
	}
	
	/*@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView loginuser(@RequestParam("name") String name,@RequestParam("pwd") String pwd){
		boolean isvaliduser =false;
		User u=new User();
		u.setName(name);
		u.setPassword(pwd);
		isvaliduser =ls.checkUser(u);
		ModelAndView mv=new ModelAndView("index");
		if(isvaliduser==true)
		{
		mv.addObject("msg", "hello welcome");
		mv.addObject("name", u.getName());
		}
		return mv;
	}*/
	/*@RequestMapping(value = "user/register", method=RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute UserDetails userDetails){
		userDao.saveOrUpdate(userDetails);
		ModelAndView mv = new ModelAndView("/home");
		mv.addObject("succesMessage", "You are successfully register");
		
		return mv;
	}*/
}