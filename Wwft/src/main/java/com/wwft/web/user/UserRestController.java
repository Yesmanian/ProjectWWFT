package com.wwft.web.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.wwft.service.domain.User;
import com.wwft.service.user.UserService;

//
//
//
//	@RestController
//	public class UserRestController {
//	    @Autowired
//	    private UserService memberService;
//	    @Autowired
//	    private MailSendService mss;
//
//
//	    @RequestMapping("/user/addUser")
//	     public void signUp(@ModelAttribute User user){
//	        // DB에 기본정보 insert
//	        memberService.addUser(user);
//
//	        //임의의 authKey 생성 & 이메일 발송
//	        String authKey = mss.sendAuthMail(user.getEmail());
//	        user.setAuthKey(authKey);
//
//	        Map<String, String> map = new HashMap<String, String>();
//	        map.put("email", user.getEmail());
//	        map.put("authKey", user.getAuthKey());
//	        System.out.println(map);
//
//	      //DB에 authKey 업데이트
//	      memberService.updateAuthKey(map);
//
//	  	}
//	
//	}
