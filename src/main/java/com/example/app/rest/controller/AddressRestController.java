package com.example.app.rest.controller;

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
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

@RestController
@RequestMapping({"/rest/api/address"})
public class AddressRestController
{
	protected static Logger logger = Logger.getLogger("AddressController");
	@Autowired
	public AddressServiceImpl addressService;
	
	
	@PostMapping
	public Address create(@RequestBody Address mentor) {
		return addressService.save(mentor);
	}
	
	@GetMapping(path= {"/{id}"})
		public Address findOne(@PathVariable("id")Long id) {
			return addressService.findOne(id);
		}
	
	@PutMapping(path= {"/{id}"})
			public  Address update(@PathVariable("id")Long id,@RequestBody Address m) {
		       return addressService.save(m);
	}
			
	 @DeleteMapping(path ={"/{id}"})
	    public Address delete(@PathVariable("id") Long id) {
	    	
	    	Address address=addressService.findOne(id);
	    	if(address!=null)
	    		addressService.delete(id);
	        return address;
	    }
	 @GetMapping
	    public List<Address> findAll(){
	        return addressService.findAll();
	    }
	

	
	
	   
	
	
	@InitBinder
	 public void initBinder(WebDataBinder binder) 
	 {
	  SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	  dateFormat.setLenient(false);
	  binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	 }  
}
