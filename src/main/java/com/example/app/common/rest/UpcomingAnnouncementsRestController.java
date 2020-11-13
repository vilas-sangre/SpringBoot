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

import com.example.app.common.pojos.UpcomingAnnouncements;
import com.example.app.common.service.UpcomingAnnouncementsServiceImpl;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

@RestController
@RequestMapping({"/rest/api/upcomingAnnouncements"})
public class UpcomingAnnouncementsRestController
{
	protected static Logger logger = Logger.getLogger("UpcomingAnnouncementsController");
	@Autowired
	public UpcomingAnnouncementsServiceImpl upcomingAnnouncementsService;
	
	
	@PostMapping
	public UpcomingAnnouncements create(@RequestBody UpcomingAnnouncements mentor) {
		return upcomingAnnouncementsService.save(mentor);
	}
	
	@GetMapping(path= {"/{id}"})
		public UpcomingAnnouncements findOne(@PathVariable("id")Integer id) {
			return upcomingAnnouncementsService.findOne(id);
		}
	
	@PutMapping(path= {"/{id}"})
			public  UpcomingAnnouncements update(@PathVariable("id")Integer id,@RequestBody UpcomingAnnouncements m) {
		       return upcomingAnnouncementsService.save(m);
	}
			
	 @DeleteMapping(path ={"/{id}"})
	    public UpcomingAnnouncements delete(@PathVariable("id") Integer id) {
	    	
	    	UpcomingAnnouncements upcomingAnnouncements=upcomingAnnouncementsService.findOne(id);
	    	if(upcomingAnnouncements!=null)
	    		upcomingAnnouncementsService.delete(id);
	        return upcomingAnnouncements;
	    }
	 @GetMapping
	    public List<UpcomingAnnouncements> findAll(){
	        return upcomingAnnouncementsService.findAll();
	    }
	

	
	
	   
	
	
	@InitBinder
	 public void initBinder(WebDataBinder binder) 
	 {
	  SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	  dateFormat.setLenient(false);
	  binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	 }  
}
