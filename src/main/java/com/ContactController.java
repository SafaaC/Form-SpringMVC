package com;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.User;

@Controller
public class ContactController {

	@RequestMapping("/contact")
	public String showform() {
		return "contact";
	}
	
	//Using @ModelAttribute to get data from View to Controller
	
	 @RequestMapping(value ="/processform",method=RequestMethod.POST)
	  
	  public String handleform(@ModelAttribute User user, Model model){
	 //ModelAttribute will automatically bind the HTML form's field with the object and set it in the model
	
	  return "success"; 
	  }
	
	 
	 /*
	 //Using @RequestParam to get data from View to Controller  
	 
	 @RequestMapping(value ="/processform",method=RequestMethod.POST)
	  
	  public String handleform(@RequestParam("userEmail") String email,
	  			@RequestParam("userName") String name,
	  			@RequestParam("userPassword") String password, Model model){
	 
	  //The argument "userEmail" is the name of input type of email in html form The
	  //incoming value of email from html form will be stored in variable email
	  
	
	  model.addAttribute("name",name); model.addAttribute("email",email);
	  model.addAttribute("password",password);
	 
	  return "success"; 
	  }
	 */
}
