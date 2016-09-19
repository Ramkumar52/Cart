package com.service;

import java.util.List;

import com.model.ProductModel;

//Creating the abstract class for the product to perform the CRUD operations
public interface ProductService {

	public void add(ProductModel productmodel);
	  public void edit(ProductModel productmodel);
	  public void delete(String getId);
	  public ProductModel getProductModel(String getId);
	  public List getAllProductModel();
	  
	  //To retrieve category from the databases
	  public List getAll3G();
	  public List getAll4G();
	  public List getAllHUB();

}
