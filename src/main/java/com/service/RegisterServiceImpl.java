package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.RegisterDao;
import com.model.NewUser;

//Implementing the Service method or abstract class
@Service
@Transactional
public class RegisterServiceImpl implements RegisterService{
        
	//Calling the DAO method
	    @Autowired
		private RegisterDao registerdao;
		
	    //Implementing the Service class with the annotation @override
	    @Override
		public void checkNewUser(NewUser newUser){
			
			registerdao.checkNewUsers(newUser);
		}
	    
	
}
