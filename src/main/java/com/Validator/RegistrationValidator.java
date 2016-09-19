package com.Validator;

import java.util.Set;


import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.model.NewUser;

@Component
public class RegistrationValidator implements Validator {
		
		  @Override
		    public boolean supports(Class<?> c) {
		        return NewUser.class.isAssignableFrom(c);
		    }
		
		    @Override
		    public void validate(Object command, Errors errors) {
		        NewUser regBean = (NewUser)command;
		        if(!regBean.getPassword().equals(regBean.getConfirmpassword()))
		            errors.rejectValue("rePassword","password.notmatch");
		        }

		
}
