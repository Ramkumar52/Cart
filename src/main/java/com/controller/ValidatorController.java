package com.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Validator.RegistrationValidator;
import com.model.NewUser;

public class ValidatorController {

	    RegistrationValidator validator = null;
	    public RegistrationValidator getValidator() {
	        return validator;
	    }

	    @Autowired
	    public void setValidator(RegistrationValidator validator) {
	        this.validator = validator;
	    }
	
	    @RequestMapping(value="/registration.htm",method=RequestMethod.GET)
	    public String showForm(ModelMap model){
	    	NewUser userRegis = new NewUser();
	        model.addAttribute("Registration", userRegis);
	        return "registration";
	
	    }
	
	    @RequestMapping(value="/registration.htm",method=RequestMethod.POST)
	    public String processForm(@ModelAttribute(value="Registration") @Valid NewUser userRegis,BindingResult result){
	        validator.validate(userRegis, result);
	        if(result.hasErrors()){
	            return "registration";
	        }else{
	            return "success";
	        }
	
	    }
}
