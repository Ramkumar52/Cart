package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.dao.loginDao;
import com.model.User;

//Implementing the abstract class 
@Service
@Transactional
public class LoginServiceImpl implements LoginService{

	//Calling the DAO method with it object
	@Autowired(required=true)
	private loginDao ld;
	
	//Implementing the LoginService method
	@Override
	public boolean checkUser(User u) {
		boolean b=false;
		b=ld.checkUser(u);
		if(b==true){
			b=true;
		}
		return b;
	}
	
}
