package com;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ContactController {
	
	@RequestMapping("/contact")
	public String showform() {
		return "contact";
	}
	@RequestMapping(value ="/processform",method=RequestMethod.POST)
	//Using @RequestParam to get data from View to Controller
	public String handleform(@RequestParam("userEmail") String email,
							@RequestParam("userName") String name,
							@RequestParam("userPassword") String password,
							Model model){												
		/*
		 The argument "userEmail" is the name of input type of email in html form
		 The incoming value of email from html form will be stored in variable email
		 */
		
		
		model.addAttribute("name",name);
		model.addAttribute("email",email);
		model.addAttribute("password",password);
		return "success";
	}
}
