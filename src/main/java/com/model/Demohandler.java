package com.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.service.RegisterService;

@Component
public class Demohandler {

	@Autowired
	RegisterService registerService;

	public NewUser initFlow() {
		return new NewUser();
	}

	public String validateDetails(NewUser newUser, MessageContext messageContext) {
		String status = "success";
		if (newUser.getFirstname().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("firstname").defaultText("firstname cannot be Empty").build());
			status = "failure";
		}

		if (newUser.getLastname().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("lastname").defaultText("lastname cannot be Empty").build());
			status = "failure";
		}

		if (newUser.getEmail().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if (newUser.getPhonenumber().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("phonenumber")
					.defaultText("Phonenumber cannot be Empty").build());
			status = "failure";
		}
		if (newUser.getPassword().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("password").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
		if (newUser.getConfirmpassword().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("confirmpassword")
					.defaultText("confirmpassword cannot be Empty").build());
			status = "failure";
		}
		if (newUser.getAge() == null) {
			messageContext
					.addMessage(new MessageBuilder().error().source("age").defaultText("Age cannot be Empty").build());
			status = "failure";
		}
		registerService.checkNewUser(newUser);
		return status;
	}
}
