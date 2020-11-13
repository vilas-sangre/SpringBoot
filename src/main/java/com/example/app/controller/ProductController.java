package com.example.app.controller;

import java.text.SimpleDateFormat;
import javax.validation.Valid;
import java.util.Date;
import java.util.List;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import com.example.app.pojos.Product;
import com.example.app.service.ProductServiceImpl;

@Controller
public class ProductController
{
	protected static Logger logger = Logger.getLogger("ProductController");
	@Autowired
	public ProductServiceImpl productService;
	

	/**
	 * Handles and retrieves the download page
	 * 
	 * @return the name of the JSP page
	 */
   @RequestMapping(value = "/product", method = RequestMethod.GET)
   public ModelAndView displayForm() {
		
		ModelAndView mav = new ModelAndView("product");
		Product product = new Product();
		mav.getModelMap().put("product", product);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
		
	}
   @RequestMapping("/productList")
	public ModelAndView getProductList() {
		List<Product> productList=productService.findAll();
		return new ModelAndView("productList", "productList", productList);
	}
   
   @RequestMapping(value="/editProduct", method=RequestMethod.GET)
	public ModelAndView editCompanyAssociate(@RequestParam("id")String id)
	{
		ModelAndView mav = new ModelAndView("editProduct");
		Product product = productService.findOne(id);		
		mav.addObject("product", product);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
	}
   
   @RequestMapping(value="/viewProduct", method=RequestMethod.GET)
	public ModelAndView viewProduct(@RequestParam("id")String id)
	{
		ModelAndView mav = new ModelAndView("viewProduct");
		Product product = productService.findOne(id);		
		mav.addObject("product", product);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
	}
 
 @RequestMapping(value="/deleteProduct", method=RequestMethod.GET)
	public String deleteCompanyAssociate(@RequestParam("id")String id)
	{		
		productService.delete(id);
		return "redirect:productList";
	}
 
 @RequestMapping(value="/updateProduct", method=RequestMethod.POST)
	public String updateCompanyAssociate(@Valid @ModelAttribute("product") Product product, BindingResult result, SessionStatus status)
	{
		
		if (result.hasErrors()) {
			return "product";
		}	
	 productService.save(product);
		
		return "redirect:productList";
	}
 
 	@RequestMapping(value="/saveProduct", method=RequestMethod.POST)
	public String saveCompanyAssociate(@Valid @ModelAttribute("product") Product product, BindingResult result, SessionStatus status)
	{
		if (result.hasErrors()) {
			return "product";
		}		
	  
	  
	  productService.save(product);
		status.setComplete();
		return "redirect:productList";
		
	}
 

	
	
	   
	
	
	@InitBinder
	 public void initBinder(WebDataBinder binder) 
	 {
	  SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	  dateFormat.setLenient(false);
	  binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	 }  
}
