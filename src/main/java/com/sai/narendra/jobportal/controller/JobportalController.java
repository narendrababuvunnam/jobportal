package com.sai.narendra.jobportal.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView; 

@Controller
public class JobportalController
{
	@RequestMapping("/homepage.com")
	public ModelAndView homepage()
	{
		String helloWorldMessage = "You are in Right Place to find a Job";  
		return new ModelAndView("homepage", "hellopagecontent", helloWorldMessage);  
	}
	
	@RequestMapping("/register")
	public ModelAndView register()
	{
		String helloWorldMessage = "You are in Right Place to find a Job";  
		return new ModelAndView("register", "registercontent", helloWorldMessage);  
	}
	
	@RequestMapping("/employer")
	public ModelAndView employer()
	{
		String helloWorldMessage = "You are in Right Place to find a Job";  
		return new ModelAndView("employer", "employercontent", helloWorldMessage);  
	}
	
	@RequestMapping("/jobseeker")
	public ModelAndView ModelAndView ()
	{
		String helloWorldMessage = "You are in Right Place to find a Job";  
		return new ModelAndView("jobseeker", "jobseekercontent", helloWorldMessage);  
	}
	
	@RequestMapping("/jobprofile")
	public ModelAndView jobprofile()
	{
		String helloWorldMessage = "You are in Right Place to find a Job";  
		return new ModelAndView("jobprofile", "jobprofilecontent", helloWorldMessage);  
	}
	
	@RequestMapping("/application")
	public ModelAndView application()
	{
		String helloWorldMessage = "You are in Right Place to find a Job";  
		return new ModelAndView("application", "applicationcontent", helloWorldMessage);  
	}
}
