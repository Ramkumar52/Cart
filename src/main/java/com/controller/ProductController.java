package com.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.model.ProductModel;
import com.service.ProductService;

@Controller
public class ProductController {

	// @ModelAttribute annotation is used to mention the properties we used in
	// the Bean class
	@ModelAttribute("ob")
	public ProductModel construct() {
		return new ProductModel();
	}

	/*@RequestMapping("/prd")
	public @ResponseBody List<ProductModel>
	  getAllProductModel() { 
		List<ProductModel> l =null; 
	  try{ 
		  l= productservice.getAllProductModel(); 
		  }
	  catch(Exception es) { 
		  l=null; 
		  } 
	  return l;
	  }
	
	@RequestMapping("/prd1")
	public String viewall(){
		return "viewall";
	}
	*/
	@RequestMapping(value="/viewall1")
	public String viewall1(Map<String, Object> map){
		ProductModel productmodel = new ProductModel();
		map.put("productmodel", productmodel);
		map.put("productmodelList", productservice.getAllProductModel());
		return "viewalls";
	}
	
	@Autowired(required=true)
	private ServletContext servletContext;
	@Autowired(required = true)
	private ProductService productservice;

	@RequestMapping("/admin/Prodview")
	public String setupForm() {
		return "Prodview";
	}

	@RequestMapping(value = "edit/{id}")
	public String edits(@PathVariable("id") String id, @ModelAttribute ProductModel productmodel, BindingResult result,
			Map<String, Object> map) {
		
		System.out.println("edit return");
		productmodel = productservice.getProductModel(id);
		map.put("productmodel", productmodel);
		map.put("productmodelList", productservice.getAllProductModel());
		System.out.println(productservice.getAllProductModel());
		return "Prodview";
	}

	/*@RequestMapping(value = "add/{id}")
	public String add(@PathVariable("id") String id, @ModelAttribute ProductModel productmodel, BindingResult result,
			Map<String, Object> map) {
		System.out.println("add return");
		productmodel = productservice.getProductModel(id);
		map.put("productmodel", productmodel);
		map.put("productmodelList", productservice.getAllProductModel());
		System.out.println(productservice.getAllProductModel());
		return "Prodview";
	}*/

	@RequestMapping(value = "delete/{id}")
	public String removes(@PathVariable("id") String id, @ModelAttribute ProductModel productmodel
			) {
		System.out.println("in del");
		 productservice.delete(id);
		return "redirect:/Prodview";
	}

	/*
	 * * @RequestMapping(value="/prodview", method=RequestMethod.GET) public
	 * String prds(Map<String, Object>map)public String getprodview(ModelMap m){
	 * * ProductModel prd = new ProductModel(); map.put("productmodel",prd);
	 * m.put("productmodelList", productservice.getAllProductModel());
	 * System.out.println("hiiiiii"); return "prodviewz"; }
	 */

	// Mapping to which page it should go next
@RequestMapping(value = { "/admin/productmodel.do", "edit/productmodel" ,"/admin/delete"}, method = RequestMethod.POST)
	public String doActions(@ModelAttribute("ob") ProductModel productmodel, BindingResult result,
			@RequestParam String action, Map<String, Object> map,HttpServletRequest req){
	if(result.hasErrors())
	{
		return "Prodview";
	}
	else{

		ProductModel productmodelResult = new ProductModel();
		// By using the Switch method we can perform the CRUD operations
		System.out.println("Product controller "+action);
		switch (action.toLowerCase()) {
		
		case "add":
			/*
			 * System.out.println(productmodel.getId());
			 * System.out.println(productmodel.getName());
			 * System.out.println(productmodel.getDescription());
			 * System.out.println(productmodel.getPrice());
			 * System.out.println(productmodel.getCategory());
			 */

			MultipartFile file = productmodel.getFilename();

			if (!file.isEmpty()) {

				try {

					// Creating the directory to store file

					//String rootPath = "H:/Workspace/DTBatchws/frontendproject/src/main/webapp/resources";
					File rootPath=new File(servletContext.getRealPath("/"));
					
					File dir = new File(rootPath + File.separator + "resoucers/upload");
					if (!dir.exists())
						dir.mkdirs();

					// Create the file on server
					File serverFile = new File(dir + File.separator + productmodel.getImgname() + ".jpg");
					// System.out.println("IMAGE ADDED"+serverFile);
					file.transferTo(serverFile);

				} catch (Exception e) {

				}

			}
			System.out.println("in switch add");
			productservice.add(productmodel);
			// productservice.add(productmodel);
			productmodelResult = productmodel;
			break;

		case "edit":
			System.out.println("in switch edit");
			productservice.edit(productmodel);
			productmodelResult = productmodel;
			break;

		case "delete":
			
			productservice.delete(productmodel.getId());
			productmodelResult = new ProductModel();
			break;

		case "search":
			ProductModel searchedProductModel = productservice.getProductModel(productmodel.getId());
			productmodelResult = searchedProductModel != null ? searchedProductModel : new ProductModel();
			break;
		default:
			System.out.println("in switch add-default");
		}
		map.put("productmodel", productmodelResult);
		map.put("productmodelList", productservice.getAllProductModel());
		return "prodviewz";
	}
	/*
	 * @RequestMapping("/getAlluser") public @ResponseBody List<ChatUser>
	 * getAllFriends() { List<ChatUser> l =null; try{ l= cs.getAllUsers(); }
	 * catch(Exception es) { l=null; } return l; }
	 */
}
}
