package com.example.app.common.rest;

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

import com.example.app.common.pojos.User;
import com.example.app.common.service.UserServiceImpl;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

@RestController
@RequestMapping({"/rest/api/user"})
public class UserRestController
{
	protected static Logger logger = Logger.getLogger("UserController");
	@Autowired
	public UserServiceImpl userService;
	
	
	@PostMapping
	public User create(@RequestBody User mentor) {
		return userService.save(mentor);
	}
	
	@GetMapping(path= {"/{id}"})
		public User findOne(@PathVariable("id")Integer id) {
			return userService.findOne(id);
		}
	
	@PutMapping(path= {"/{id}"})
			public  User update(@PathVariable("id")Integer id,@RequestBody User m) {
		       return userService.save(m);
	}
			
	 @DeleteMapping(path ={"/{id}"})
	    public User delete(@PathVariable("id") Integer id) {
	    	
	    	User user=userService.findOne(id);
	    	if(user!=null)
	    		userService.delete(id);
	        return user;
	    }
	 @GetMapping
	    public List<User> findAll(){
	        return userService.findAll();
	    }
	

	
	
	   
	
	
	@InitBinder
	 public void initBinder(WebDataBinder binder) 
	 {
	  SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	  dateFormat.setLenient(false);
	  binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	 }  
}
