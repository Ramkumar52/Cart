package com.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.CartItem;
import com.model.ProductModel;
import com.service.CartItemService;
import com.service.ProductService;

@Controller
public class CartController {

	@Autowired(required=true)
	ProductService productservice;
	@Autowired(required=true)
	CartItemService cartitemservice;

	@RequestMapping("addtocart/{id}")
	public String addtocart(@PathVariable("id")String id)
	{
		System.out.println("Entered to add");
		
		CartItem cart=new CartItem();
		ProductModel product=productservice.getProductModel(id);
		List<CartItem> cartitem=cartitemservice.getAllProductModel();
		System.out.println(cartitem);
		for(int i=0;i<cartitem.size();i++)
		{
			System.out.println("entered for loop");
			String incid=cartitem.get(i).getProductmodel().getId();
			System.out.println(incid);
			System.out.println(id);
			if(incid==id)
			{	System.out.println("entered if loop");
				int quantity=cartitem.get(i).getQuantity()+1;
				cartitem.get(i).setQuantity(quantity);
				double price=product.getPrice()*quantity;
				cartitem.get(i).setTotalPrice(price);
				System.out.println("Quantity increased");
				cartitemservice.update(cartitem.get(i));
				return "viewalls";
			}
		}
		
		cart.setQuantity(1);
		cart.setTotalPrice(product.getPrice());
		cart.setProductmodel(product);
		System.out.println("A");
		cartitemservice.add(cart);
		return "viewalls";
	}
	
	@RequestMapping("delete/cart/{id}")
	public String delcart(@PathVariable("id")String id,ModelMap model)
	{	System.out.println("cart delete worked");
		cartitemservice.delete(id);
		return"redirect:/Cart";
	}
	
	@RequestMapping("/Cart")
	public String getcart(Model map )
	{
		CartItem cart=new CartItem();
		List<CartItem> cartitem=cartitemservice.getAllProductModel();
		map.addAttribute("cart", cart);
		map.addAttribute("cartList", cartitemservice.getAllProductModel());
		return "Cart";
	}
}
