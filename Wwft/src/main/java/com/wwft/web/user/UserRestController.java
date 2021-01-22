package com.wwft.web.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.wwft.service.domain.User;
import com.wwft.service.user.UserService;

@RestController
@RequestMapping("/user/*")
public class UserRestController {
	
	
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;

	public UserRestController() {
		System.out.println(this.getClass());
	}


	@RequestMapping( value = "json/addUser", method = RequestMethod.POST)
	public String addEvent(@RequestBody() User user) throws Exception{
		System.out.println("addUser: POST");
		System.out.println(user);
	
		userService.addUser(user);
	
		return null;
	}
}