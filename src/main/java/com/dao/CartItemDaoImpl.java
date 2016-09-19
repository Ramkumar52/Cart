package com.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.CartItem;

@Repository
public class CartItemDaoImpl implements CartItemDao{

	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(CartItem cartItem) {
		session.getCurrentSession().save(cartItem);
	}

	@Override
	public List getAllProductModel() {
		return session.getCurrentSession().createQuery("from CartItem ").list();

	}

	@Override
	public void update(CartItem cartItem) {
		session.getCurrentSession().update(cartItem);
	}

	@Override
	public CartItem getProductById(String id) {
		return (CartItem)session.getCurrentSession().get(CartItem.class, id);
	}

	@Override
	public void delete(String id) {
		session.getCurrentSession().delete(getProductById(id));
		
	}
}
