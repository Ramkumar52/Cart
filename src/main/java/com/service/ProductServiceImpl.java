package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ProductDao;
import com.model.ProductModel;

//To implement the abstract class
@Service
@Transactional
public class ProductServiceImpl implements ProductService {
    
	@Autowired(required=true)
	private ProductDao productdao;
	@Transactional
	public void add(ProductModel productmodel){
		productdao.add(productmodel);
	}
	
	@Transactional
	public void edit(ProductModel productmodel){
		productdao.edit(productmodel);
	}
	
	@Transactional
	public void delete(String getId){
		productdao.delete(getId);
	}
	
	@Transactional
	public ProductModel getProductModel(String getId){
		return productdao.getProductModel(getId);
	}
	
	@Transactional
	public List getAllProductModel(){
		return productdao.getAllProductModel();
	}

	@Override
	public List getAll3G() {
		// TODO Auto-generated method stub
		return productdao.getAll3G();
	}

	@Override
	public List getAll4G() {
		// TODO Auto-generated method stub
		return productdao.getAll4G();
	}

	@Override
	public List getAllHUB() {
		// TODO Auto-generated method stub
		return productdao.getAllHUB();
	}
}