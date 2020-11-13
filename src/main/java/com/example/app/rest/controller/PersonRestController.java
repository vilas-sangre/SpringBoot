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
import com.example.app.pojos.Person;
import com.example.app.service.PersonServiceImpl;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

@RestController
@RequestMapping({"/rest/api/person"})
public class PersonRestController
{
	protected static Logger logger = Logger.getLogger("PersonController");
	@Autowired
	public PersonServiceImpl personService;
	
	
	@PostMapping
	public Person create(@RequestBody Person mentor) {
		return personService.save(mentor);
	}
	
	@GetMapping(path= {"/{id}"})
		public Person findOne(@PathVariable("id")Long id) {
			return personService.findOne(id);
		}
	
	@PutMapping(path= {"/{id}"})
			public  Person update(@PathVariable("id")Long id,@RequestBody Person m) {
		       return personService.save(m);
	}
			
	 @DeleteMapping(path ={"/{id}"})
	    public Person delete(@PathVariable("id") Long id) {
	    	
	    	Person person=personService.findOne(id);
	    	if(person!=null)
	    		personService.delete(id);
	        return person;
	    }
	 @GetMapping
	    public List<Person> findAll(){
	        return personService.findAll();
	    }
	

	
	
	   
	
	
	@InitBinder
	 public void initBinder(WebDataBinder binder) 
	 {
	  SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	  dateFormat.setLenient(false);
	  binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	 }  
}
