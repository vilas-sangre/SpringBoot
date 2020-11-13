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
import com.example.app.pojos.Address;
import com.example.app.service.AddressServiceImpl;

@Controller
public class AddressController
{
	protected static Logger logger = Logger.getLogger("AddressController");
	@Autowired
	public AddressServiceImpl addressService;
	

	/**
	 * Handles and retrieves the download page
	 * 
	 * @return the name of the JSP page
	 */
   @RequestMapping(value = "/address", method = RequestMethod.GET)
   public ModelAndView displayForm() {
		
		ModelAndView mav = new ModelAndView("address");
		Address address = new Address();
		mav.getModelMap().put("address", address);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
		
	}
   @RequestMapping("/addressList")
	public ModelAndView getAddressList() {
		List<Address> addressList=addressService.findAll();
		return new ModelAndView("addressList", "addressList", addressList);
	}
   
   @RequestMapping(value="/editAddress", method=RequestMethod.GET)
	public ModelAndView editCompanyAssociate(@RequestParam("id")Long id)
	{
		ModelAndView mav = new ModelAndView("editAddress");
		Address address = addressService.findOne(id);		
		mav.addObject("address", address);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
	}
   
   @RequestMapping(value="/viewAddress", method=RequestMethod.GET)
	public ModelAndView viewAddress(@RequestParam("id")Long id)
	{
		ModelAndView mav = new ModelAndView("viewAddress");
		Address address = addressService.findOne(id);		
		mav.addObject("address", address);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
	}
 
 @RequestMapping(value="/deleteAddress", method=RequestMethod.GET)
	public String deleteCompanyAssociate(@RequestParam("id")Long id)
	{		
		addressService.delete(id);
		return "redirect:addressList";
	}
 
 @RequestMapping(value="/updateAddress", method=RequestMethod.POST)
	public String updateCompanyAssociate(@Valid @ModelAttribute("address") Address address, BindingResult result, SessionStatus status)
	{
		
		if (result.hasErrors()) {
			return "address";
		}	
	 addressService.save(address);
		
		return "redirect:addressList";
	}
 
 	@RequestMapping(value="/saveAddress", method=RequestMethod.POST)
	public String saveCompanyAssociate(@Valid @ModelAttribute("address") Address address, BindingResult result, SessionStatus status)
	{
		if (result.hasErrors()) {
			return "address";
		}		
	  
	  
	  addressService.save(address);
		status.setComplete();
		return "redirect:addressList";
		
	}
 

	
	
	   
	
	
	@InitBinder
	 public void initBinder(WebDataBinder binder) 
	 {
	  SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	  dateFormat.setLenient(false);
	  binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	 }  
}
