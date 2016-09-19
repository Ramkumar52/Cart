package com.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.ProductModel;
import com.service.ProductService;

@Controller
public class CategoryController {

	@Autowired(required=true)
	private ProductService productService; 
		@RequestMapping(value="/gi")
		public String gg(Map<String,Object>map)
		{
			ProductModel productmodelResult=new ProductModel();
			 map.put("productmodel",productmodelResult);
			    map.put("productmodelList", productService.getAll3G());
			    return "Category";
	}
		@RequestMapping(value="/gii")
		public String ggg(Map<String,Object>map)
		{
			ProductModel productmodelResult=new ProductModel();
			 map.put("productmodel",productmodelResult);
			    map.put("productmodelList", productService.getAll4G());
			    return "Category";
	}
		@RequestMapping(value="/hubi")
		public String ggt(Map<String,Object>map)
		{
			ProductModel productmodelResult=new ProductModel();
			 map.put("productmodel",productmodelResult);
			    map.put("productmodelList", productService.getAllHUB());
			    return "Category";
	}
		
}
