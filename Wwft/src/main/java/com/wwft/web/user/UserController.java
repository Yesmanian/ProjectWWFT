package com.wwft.web.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wwft.service.domain.User;
import com.wwft.service.user.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
		
	public UserController() {
		
		System.out.println("User Controller"+this.getClass());
	}



	@RequestMapping( value = "addUser", method = RequestMethod.POST)
	public String addUser(@RequestBody() User user) throws Exception{
		System.out.println("/user/addUser: POST");
		System.out.println(user);
		
		userService.addUser(user);
		
		return "redirect:/user/addUser.jsp";
	}

}