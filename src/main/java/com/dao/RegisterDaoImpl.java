package com.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.NewUser;
import com.model.Role;

//Implementing the abstract class of DAO
@Repository
@Transactional
public class RegisterDaoImpl implements RegisterDao{

	//Creating the Session to save or update the data in the DataBase
	@Autowired
	private SessionFactory session;
	
	//For saving the currently registered details in the database
	public void checkNewUsers(NewUser newUser){
			
		newUser.setEnabled(true);
		Role role = new Role();
	    role.setNs(newUser);
	    role.setRole("ROLE_USER");
	    session.getCurrentSession().saveOrUpdate(newUser);
		session.getCurrentSession().saveOrUpdate(role);
		
	}
	/*public List<ChatUser> getAllUsers() {
		 System.out.println("in chat user - dao - get all user ");
		 
		  List<ChatUser> l= sf.getCurrentSession().createQuery("from ChatUser").list();
		  //t.commit();
		  System.out.println("---- in all prod"+l.get(0).getMailId());
		  return l;
		 }
	*/
}
