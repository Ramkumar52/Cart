package com.dao;

import java.util.List;

import com.model.CartItem;

public interface CartItemDao {

	public void add(CartItem CartItem);
	public List getAllProductModel(); 
	public void update(CartItem CartItem);
	public CartItem getProductById(String id);
	public void delete(String id);
}
