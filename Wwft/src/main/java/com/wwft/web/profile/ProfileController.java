package com.wwft.web.profile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wwft.service.domain.Profile;
import com.wwft.service.profile.ProfileService;


@Controller
@RequestMapping("/profile/*")
public class ProfileController {
	
	@Autowired
	@Qualifier("profileServiceImpl")
	private ProfileService profileService;
	
	
	
	public ProfileController() {
		System.out.println("Profile Controller"+this.getClass());
	}



	@RequestMapping( value = "addProfile", method = RequestMethod.POST)
	public String addUser(@RequestBody() Profile profile) throws Exception{
		System.out.println("addProfile: POST");
		System.out.println(profile);
		
		profileService.addProfile(profile);
		
		return "/profile/json/getProfileList";
	}

}

