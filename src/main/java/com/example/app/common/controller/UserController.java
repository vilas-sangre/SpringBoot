package com.example.app.common.controller;

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

@Controller
public class UserController
{
	protected static Logger logger = Logger.getLogger("UserController");
	@Autowired
	public UserServiceImpl userService;
	

	/**
	 * Handles and retrieves the download page
	 * 
	 * @return the name of the JSP page
	 */
   @RequestMapping(value = "/user", method = RequestMethod.GET)
   public ModelAndView displayForm() {
		
		ModelAndView mav = new ModelAndView("user");
		User user = new User();
		mav.getModelMap().put("user", user);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
		
	}
   @RequestMapping("/userList")
	public ModelAndView getUserList() {
		List<User> userList=userService.findAll();
		return new ModelAndView("userList", "userList", userList);
	}
   
   @RequestMapping(value="/editUser", method=RequestMethod.GET)
	public ModelAndView editCompanyAssociate(@RequestParam("id")Integer id)
	{
		ModelAndView mav = new ModelAndView("editUser");
		User user = userService.findOne(id);		
		mav.addObject("user", user);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
	}
   
   @RequestMapping(value="/viewUser", method=RequestMethod.GET)
	public ModelAndView viewUser(@RequestParam("id")Integer id)
	{
		ModelAndView mav = new ModelAndView("viewUser");
		User user = userService.findOne(id);		
		mav.addObject("user", user);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
	}
 
 @RequestMapping(value="/deleteUser", method=RequestMethod.GET)
	public String deleteCompanyAssociate(@RequestParam("id")Integer id)
	{		
		userService.delete(id);
		return "redirect:userList";
	}
 
 @RequestMapping(value="/updateUser", method=RequestMethod.POST)
	public String updateCompanyAssociate(@Valid @ModelAttribute("user") User user, BindingResult result, SessionStatus status)
	{
		
		if (result.hasErrors()) {
			return "user";
		}	
	 userService.save(user);
		
		return "redirect:userList";
	}
 
 	@RequestMapping(value="/saveUser", method=RequestMethod.POST)
	public String saveCompanyAssociate(@Valid @ModelAttribute("user") User user, BindingResult result, SessionStatus status)
	{
		if (result.hasErrors()) {
			return "user";
		}		
	  
	  
	  userService.save(user);
		status.setComplete();
		return "redirect:userList";
		
	}
 

	
	
	   
	
	
	@InitBinder
	 public void initBinder(WebDataBinder binder) 
	 {
	  SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	  dateFormat.setLenient(false);
	  binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	 }  
}
