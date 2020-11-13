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

import com.example.app.common.pojos.Activity;
import com.example.app.common.service.ActivityServiceImpl;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

@RestController
@RequestMapping({"/rest/api/activity"})
public class ActivityRestController
{
	protected static Logger logger = Logger.getLogger("ActivityController");
	@Autowired
	public ActivityServiceImpl activityService;
	
	
	@PostMapping
	public Activity create(@RequestBody Activity mentor) {
		return activityService.save(mentor);
	}
	
	@GetMapping(path= {"/{id}"})
		public Activity findOne(@PathVariable("id")Integer id) {
			return activityService.findOne(id);
		}
	
	@PutMapping(path= {"/{id}"})
			public  Activity update(@PathVariable("id")Integer id,@RequestBody Activity m) {
		       return activityService.save(m);
	}
			
	 @DeleteMapping(path ={"/{id}"})
	    public Activity delete(@PathVariable("id") Integer id) {
	    	
	    	Activity activity=activityService.findOne(id);
	    	if(activity!=null)
	    		activityService.delete(id);
	        return activity;
	    }
	 @GetMapping
	    public List<Activity> findAll(){
	        return activityService.findAll();
	    }
	

	
	
	   
	
	
	@InitBinder
	 public void initBinder(WebDataBinder binder) 
	 {
	  SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	  dateFormat.setLenient(false);
	  binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	 }  
}
