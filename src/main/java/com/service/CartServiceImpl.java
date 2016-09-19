/*package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CartDao;
import com.model.Cart;

public class CartServiceImpl implements CartService{

	@Autowired
	private CartDao cartDao;
	
	@Transactional
	public void add(Cart cart,String uname) {
		System.out.println("adding in cart service");
		cartDao.add(cart,uname);
		
	}

	@Transactional
	public List getAllProduct() {
		return cartDao.getAllProduct();
	}

	@Transactional
	public void update(Cart cart) {
		cartDao.update(cart);
	}

	@Transactional
	public Cart getProductById(int id) {
		
		return cartDao.getProductById(id);
	}

	@Transactional
	public void delete(int id) {
		 cartDao.delete(id);
	}

}*/