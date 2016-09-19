/*package com.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.model.Cart;
import com.model.NewUser;

public class CartDaoImpl implements CartDao {

	@Autowired(required=true)
	private SessionFactory session;
	
	@Override
	public void add(Cart cart,String firstname) {
		
		List<NewUser> regdet=session.getCurrentSession().createQuery("from NewUser where firstname='"+firstname+"'").list();
		for(int i=0;i<regdet.size();i++)
		{
			NewUser nu=(NewUser) regdet.get(i);
		nu.setCart(cart);
		}
		session.getCurrentSession().saveOrUpdate(cart);
		//sessionFactory.getCurrentSession().update(r);
	}

	@Override
	public List getAllProductModel() {
		return  session.getCurrentSession().createQuery("from Cart ").list();
	
	}
	
	
	@Override
	public void update(Cart cart) {
		session.getCurrentSession().update(cart);
	}
	@Override
	public Cart getProductById(String id) {
		return (Cart)session.getCurrentSession().get(Cart.class, id);
	}

	@Override
	public void delete(String id) {
		session.getCurrentSession().delete(getProductById(id));
		
	}
}
*/