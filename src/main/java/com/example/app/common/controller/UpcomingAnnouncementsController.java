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

import com.example.app.common.pojos.UpcomingAnnouncements;
import com.example.app.common.service.UpcomingAnnouncementsServiceImpl;

@Controller
public class UpcomingAnnouncementsController
{
	protected static Logger logger = Logger.getLogger("UpcomingAnnouncementsController");
	@Autowired
	public UpcomingAnnouncementsServiceImpl upcomingAnnouncementsService;
	

	/**
	 * Handles and retrieves the download page
	 * 
	 * @return the name of the JSP page
	 */
   @RequestMapping(value = "/upcomingAnnouncements", method = RequestMethod.GET)
   public ModelAndView displayForm() {
		
		ModelAndView mav = new ModelAndView("upcomingAnnouncements");
		UpcomingAnnouncements upcomingAnnouncements = new UpcomingAnnouncements();
		mav.getModelMap().put("upcomingAnnouncements", upcomingAnnouncements);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
		
	}
   @RequestMapping("/upcomingAnnouncementsList")
	public ModelAndView getUpcomingAnnouncementsList() {
		List<UpcomingAnnouncements> upcomingAnnouncementsList=upcomingAnnouncementsService.findAll();
		return new ModelAndView("upcomingAnnouncementsList", "upcomingAnnouncementsList", upcomingAnnouncementsList);
	}
   
   @RequestMapping(value="/editUpcomingAnnouncements", method=RequestMethod.GET)
	public ModelAndView editCompanyAssociate(@RequestParam("id")Integer id)
	{
		ModelAndView mav = new ModelAndView("editUpcomingAnnouncements");
		UpcomingAnnouncements upcomingAnnouncements = upcomingAnnouncementsService.findOne(id);		
		mav.addObject("upcomingAnnouncements", upcomingAnnouncements);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
	}
   
   @RequestMapping(value="/viewUpcomingAnnouncements", method=RequestMethod.GET)
	public ModelAndView viewUpcomingAnnouncements(@RequestParam("id")Integer id)
	{
		ModelAndView mav = new ModelAndView("viewUpcomingAnnouncements");
		UpcomingAnnouncements upcomingAnnouncements = upcomingAnnouncementsService.findOne(id);		
		mav.addObject("upcomingAnnouncements", upcomingAnnouncements);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
	}
 
 @RequestMapping(value="/deleteUpcomingAnnouncements", method=RequestMethod.GET)
	public String deleteCompanyAssociate(@RequestParam("id")Integer id)
	{		
		upcomingAnnouncementsService.delete(id);
		return "redirect:upcomingAnnouncementsList";
	}
 
 @RequestMapping(value="/updateUpcomingAnnouncements", method=RequestMethod.POST)
	public String updateCompanyAssociate(@Valid @ModelAttribute("upcomingAnnouncements") UpcomingAnnouncements upcomingAnnouncements, BindingResult result, SessionStatus status)
	{
		
		if (result.hasErrors()) {
			return "upcomingAnnouncements";
		}	
	 upcomingAnnouncementsService.save(upcomingAnnouncements);
		
		return "redirect:upcomingAnnouncementsList";
	}
 
 	@RequestMapping(value="/saveUpcomingAnnouncements", method=RequestMethod.POST)
	public String saveCompanyAssociate(@Valid @ModelAttribute("upcomingAnnouncements") UpcomingAnnouncements upcomingAnnouncements, BindingResult result, SessionStatus status)
	{
		if (result.hasErrors()) {
			return "upcomingAnnouncements";
		}		
	  
	  
	  upcomingAnnouncementsService.save(upcomingAnnouncements);
		status.setComplete();
		return "redirect:upcomingAnnouncementsList";
		
	}
 

	
	
	   
	
	
	@InitBinder
	 public void initBinder(WebDataBinder binder) 
	 {
	  SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	  dateFormat.setLenient(false);
	  binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	 }  
}
