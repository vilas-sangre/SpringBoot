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
import com.example.app.pojos.Person;
import com.example.app.service.PersonServiceImpl;

@Controller
public class PersonController
{
	protected static Logger logger = Logger.getLogger("PersonController");
	@Autowired
	public PersonServiceImpl personService;
	

	/**
	 * Handles and retrieves the download page
	 * 
	 * @return the name of the JSP page
	 */
   @RequestMapping(value = "/person", method = RequestMethod.GET)
   public ModelAndView displayForm() {
		
		ModelAndView mav = new ModelAndView("person");
		Person person = new Person();
		mav.getModelMap().put("person", person);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
		
	}
   @RequestMapping("/personList")
	public ModelAndView getPersonList() {
		List<Person> personList=personService.findAll();
		return new ModelAndView("personList", "personList", personList);
	}
   
   @RequestMapping(value="/editPerson", method=RequestMethod.GET)
	public ModelAndView editCompanyAssociate(@RequestParam("id")Long id)
	{
		ModelAndView mav = new ModelAndView("editPerson");
		Person person = personService.findOne(id);		
		mav.addObject("person", person);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
	}
   
   @RequestMapping(value="/viewPerson", method=RequestMethod.GET)
	public ModelAndView viewPerson(@RequestParam("id")Long id)
	{
		ModelAndView mav = new ModelAndView("viewPerson");
		Person person = personService.findOne(id);		
		mav.addObject("person", person);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
	}
 
 @RequestMapping(value="/deletePerson", method=RequestMethod.GET)
	public String deleteCompanyAssociate(@RequestParam("id")Long id)
	{		
		personService.delete(id);
		return "redirect:personList";
	}
 
 @RequestMapping(value="/updatePerson", method=RequestMethod.POST)
	public String updateCompanyAssociate(@Valid @ModelAttribute("person") Person person, BindingResult result, SessionStatus status)
	{
		
		if (result.hasErrors()) {
			return "person";
		}	
	 personService.save(person);
		
		return "redirect:personList";
	}
 
 	@RequestMapping(value="/savePerson", method=RequestMethod.POST)
	public String saveCompanyAssociate(@Valid @ModelAttribute("person") Person person, BindingResult result, SessionStatus status)
	{
		if (result.hasErrors()) {
			return "person";
		}		
	  
	  
	  personService.save(person);
		status.setComplete();
		return "redirect:personList";
		
	}
 

	
	
	   
	
	
	@InitBinder
	 public void initBinder(WebDataBinder binder) 
	 {
	  SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	  dateFormat.setLenient(false);
	  binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	 }  
}
