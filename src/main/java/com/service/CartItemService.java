package com.service;

import java.util.List;

import com.model.CartItem;

public interface CartItemService {

	public void add(CartItem cart);
	public List getAllProductModel();
	public CartItem getProductById(String id);
	public void update(CartItem cart);
	public void delete(String id);
	
}
