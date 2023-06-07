package springmvc.com;

import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;



import springmvc.model.User;
import springmvc.service.UserService;

@Controller
public class ContactController {

	@Autowired
	private UserService userService;

	@RequestMapping("/contact")
	public String showform() {
		return "contact";
	}

	// Using @ModelAttribute to get data from View to Controller

	@RequestMapping(value = "/processform", method = RequestMethod.POST)

	public String handleform( @RequestParam("profile") CommonsMultipartFile file, @ModelAttribute("user") User user, Model model, HttpSession s) {
		// ModelAttribute will automatically bind the HTML form's field with the object
		// and set it in the model
		
		if (user.getUserName().isBlank() || user.getUserEmail().isBlank() || user.getUserPassword().isBlank()) {
			System.out.println("Please Fill All The Fields");
			return "redirect:/contact";
		}
		
		byte[] data= file.getBytes();
		String path=s.getServletContext().getRealPath("/")+"WEB-INF"+ File.separator+"resource"+ File.separator+"image"+ File.separator+file.getOriginalFilename();
		FileOutputStream fos;
		try {
			fos = new FileOutputStream(path);
			fos.write(data);
			fos.close();
			model.addAttribute("filename",file.getOriginalFilename());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		this.userService.createUser(user);
		return "success";
	}

	/*
	 * //Using @RequestParam to get data from View to Controller
	 * 
	 * @RequestMapping(value ="/processform",method=RequestMethod.POST)
	 * 
	 * public String handleform(@RequestParam("userEmail") String email,
	 * 
	 * @RequestParam("userName") String name,
	 * 
	 * @RequestParam("userPassword") String password, Model model){
	 * 
	 * //The argument "userEmail" is the name of input type of email in html form
	 * The //incoming value of email from html form will be stored in variable email
	 * 
	 * 
	 * model.addAttribute("name",name); model.addAttribute("email",email);
	 * model.addAttribute("password",password);
	 * 
	 * return "success"; }
	 */
}