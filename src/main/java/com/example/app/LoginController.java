package com.example.app;



import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.SystemUtils;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.example.app.common.pojos.Activity;
import com.example.app.common.pojos.UpcomingAnnouncements;
import com.example.app.common.pojos.User;
import com.example.app.common.service.ActivityServiceImpl;
import com.example.app.common.service.UpcomingAnnouncementsServiceImpl;
import com.example.app.common.service.UserServiceImpl;
import com.example.app.utility.CommandPromtExecute;
import com.github.dockerjava.api.DockerClient;
import com.github.dockerjava.api.model.Container;
import com.github.dockerjava.api.model.Image;
import com.github.dockerjava.core.DockerClientBuilder;
@Controller
public class LoginController {
	@Autowired
	public ActivityServiceImpl activityService;
	@Autowired
	public UserServiceImpl userService;
	
	@Autowired
	public UpcomingAnnouncementsServiceImpl upcomingAnnouncementsService;
	
	
	 
	
	String localDockerHost = SystemUtils.IS_OS_WINDOWS ? "tcp://localhost:2375" : "unix:///var/run/docker.sock";
	/**
	 * Handles and retrieves the download page
	 * 
	 * @return the name of the JSP page
	 */
   @RequestMapping(value = "/login", method = RequestMethod.GET)
   public ModelAndView displayForm() {
		
		ModelAndView mav = new ModelAndView("common/login");
		
		
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
		
	}
   
   @RequestMapping(value = "/register", method = RequestMethod.GET)
   public ModelAndView register() {
		
		ModelAndView mav = new ModelAndView("common/register");
		User user = new User();
		mav.getModelMap().put("user", user);
		
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
		
	}
   
   @RequestMapping(value="/register", method=RequestMethod.POST)
	public String register(@Valid @ModelAttribute("user") User user, BindingResult result, SessionStatus status)
	{
		if (result.hasErrors()) {
			return "user";
		}		
		user.setCreated_date(new Date());
		user.setActive("Yes");
	  
	  userService.save(user);
		status.setComplete();
		return "redirect:login";
		
	}
	
   
   /**
	 * Handles and retrieves the download page
	 * 
	 * @return the name of the JSP page
	 */

	
  @RequestMapping(value="/login", method=RequestMethod.POST)
	public String updateCompanyAssociate(HttpServletRequest request)
	{
	  String j_username=request.getParameter("j_username");
	  String j_password=request.getParameter("j_password");
		
	  User user= userService.getUserByUsernameAndPassword(j_username, j_password);
	  if(user!=null){
		  request.getSession().setAttribute("j_username", j_username);
		  request.getSession().setAttribute("user", user);
		  
		  
		  Activity activity=new Activity();
		  activity.setActivityName("UserLogin");
		  activity.setActivityDesc("User Has Login");
		  activity.setEmailId(j_username);
		  activity.setActivityDate(new Date());
		  activityService.save(activity);
		  
		  
		  
		  
		  
		  return "redirect:dashboard";
	  }
	 
	  else
	  {
		  return "redirect:login";
	  }
	
		
	
	
	
	}
  
  
  @RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest request)
	{
	  String j_username=(String)request.getSession().getAttribute("j_username");
	  Activity activity=new Activity();
	  activity.setActivityName("UserLogout");
	  activity.setActivityDesc("User Has Logout");
	  activity.setEmailId(j_username);
	  activity.setActivityDate(new Date());
	  activityService.save(activity);
	  request.getSession().removeAttribute("j_username");
	  
	 return "redirect:login";
	  
	}
  
  @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
  public ModelAndView dashboard(HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView("common/dashboard");
		 String j_username=(String)request.getSession().getAttribute("j_username");
		
		  List<Activity> activityList=activityService.findByemailId(j_username);
		  mav.getModelMap().put("activityList", activityList);
		  
		  
		  
		  List<UpcomingAnnouncements> upcomingAnnouncementsList=upcomingAnnouncementsService.findAll();
		  mav.getModelMap().put("upcomingAnnouncementsList", upcomingAnnouncementsList);
		  
		
		  List<User> facultyList=userService.getUsersByRole("Faculty");
		  mav.getModelMap().put("facultyList", facultyList);
		  
		  List<User> studentList=userService.getUsersByRole("Student");
		  mav.getModelMap().put("studentList", studentList);
		  
		  
		Date date = new Date();
		String createdDate= new SimpleDateFormat("dd/MM/yyyy").format(date);
		mav.getModelMap().put("createdDate", createdDate);
		return mav;
		
	}
  
  @RequestMapping(value = "/index", method = RequestMethod.GET)
  public String index(HttpServletRequest request) {
		
		
		return "redirect:dashboard";
		
	}

  
  
  
 
}
