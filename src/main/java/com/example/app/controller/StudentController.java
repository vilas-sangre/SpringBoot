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
import com.example.app.pojos.Student;
import com.example.app.service.StudentServiceImpl;

@Controller
public class StudentController
{
	protected static Logger logger = Logger.getLogger("StudentController");
	@Autowired
	public StudentServiceImpl studentService;
	

	/**
	 * Handles and retrieves the download page
	 * 
	 * @return the name of the JSP page
	 */
   @RequestMapping(value = "/student", method = RequestMethod.GET)
   public ModelAndView displayForm() {
		
		ModelAndView mav = new ModelAndView("student");
		Student student = new Student();
		mav.getModelMap().put("student", student);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
		
	}
   @RequestMapping("/studentList")
	public ModelAndView getStudentList() {
		List<Student> studentList=studentService.findAll();
		return new ModelAndView("studentList", "studentList", studentList);
	}
   
   @RequestMapping(value="/editStudent", method=RequestMethod.GET)
	public ModelAndView editCompanyAssociate(@RequestParam("id")Integer id)
	{
		ModelAndView mav = new ModelAndView("editStudent");
		Student student = studentService.findOne(id);		
		mav.addObject("student", student);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
	}
   
   @RequestMapping(value="/viewStudent", method=RequestMethod.GET)
	public ModelAndView viewStudent(@RequestParam("id")Integer id)
	{
		ModelAndView mav = new ModelAndView("viewStudent");
		Student student = studentService.findOne(id);		
		mav.addObject("student", student);
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
	}
 
 @RequestMapping(value="/deleteStudent", method=RequestMethod.GET)
	public String deleteCompanyAssociate(@RequestParam("id")Integer id)
	{		
		studentService.delete(id);
		return "redirect:studentList";
	}
 
 @RequestMapping(value="/updateStudent", method=RequestMethod.POST)
	public String updateCompanyAssociate(@Valid @ModelAttribute("student") Student student, BindingResult result, SessionStatus status)
	{
		
		if (result.hasErrors()) {
			return "student";
		}	
	 studentService.save(student);
		
		return "redirect:studentList";
	}
 
 	@RequestMapping(value="/saveStudent", method=RequestMethod.POST)
	public String saveCompanyAssociate(@Valid @ModelAttribute("student") Student student, BindingResult result, SessionStatus status)
	{
		if (result.hasErrors()) {
			return "student";
		}		
	  
	  
	  studentService.save(student);
		status.setComplete();
		return "redirect:studentList";
		
	}
 

	
	
	   
	
	
	@InitBinder
	 public void initBinder(WebDataBinder binder) 
	 {
	  SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	  dateFormat.setLenient(false);
	  binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	 }  
}
