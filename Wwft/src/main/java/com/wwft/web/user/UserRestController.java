package com.wwft.web.user;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.wwft.service.domain.User;
import com.wwft.service.mail.MailService;
import com.wwft.service.user.UserService;




@RestController
@RequestMapping("/user/*")
public class UserRestController {
	
	///Field
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	
	@Autowired
	@Qualifier("mailServiceImpl")
	private MailService mailService;
	
	//setter Method ���� ����
	private final static Logger LOGGER = Logger.getLogger(UserRestController.class);
		
	public UserRestController(){
		System.out.println(this.getClass());
	}


	  	
	    @RequestMapping( value="json/login", method=RequestMethod.POST )
		public User login(	@RequestBody User user,
										HttpSession session ) throws Exception{
		
			System.out.println("/user/json/login : POST");
			//Business Logic
			System.out.println("::"+user);
			User dbUser=userService.getUser(user.getUserId());
			
			if( user.getPassword().equals(dbUser.getPassword())){
				session.setAttribute("user", dbUser);
			}
			
			return dbUser;
		}
	    
	    @RequestMapping( value="json/idCheck", method=RequestMethod.POST )
		public boolean idCheck(@RequestBody User user) throws Exception{
	    	boolean result = false;
	    	
	    	BasicConfigurator.configure();
	    	LOGGER.debug("[DEBUG] json/idCheck :'POST' ");
			//Business Logic
	    	 user =	userService.getUser(user.getUserId());
	    	//userId �˻��� �˻��� �ȴٸ� false id ���Ұ� �˻��� �ȵǸ� null result�� true id ��밡��
			if(user!=null) {
				result=false;
			}else {
				result=true;
			}
			
			LOGGER.debug("[DEBUG] json/idCheck :"+result);
		
			return result;
		}
	    
	    @RequestMapping( value="json/emailCheck", method=RequestMethod.POST )
		public boolean emailCheck(@RequestBody User user) throws Exception{
	    	boolean result = false;
	    	
	    	BasicConfigurator.configure();
	    	LOGGER.debug("[DEBUG] json/emailCheck :'POST' ");
			//Business Logic
	    	 user =	userService.findEmail(user.getEmail());
	    	//email �˻��� �˻��� �ȴٸ� false email ���Ұ� �˻��� �ȵǸ� null result�� true email ��밡��
			if(user!=null) {
				result=false;
			}else {
				result=true;
			}
			
			LOGGER.debug("[DEBUG] json/emailCheck :"+result);
		
			return result;
		}
	    
	    @RequestMapping( value="json/sendEmail/auth", method=RequestMethod.POST )
		public boolean emailAuth(@RequestParam String email, HttpSession session) throws Exception{
	    	

	    	
	    	BasicConfigurator.configure();
	    	LOGGER.debug("[DEBUG] json/sendEmail/auth :'POST' ");
	    	 int ran = new Random().nextInt(100000) + 10000; // 10000 ~ 99999
		        String joinCode = String.valueOf(ran);
		        session.setAttribute("joinCode", joinCode);

		        String subject = "ȸ������ ���� �ڵ� �߱� �ȳ� �Դϴ�.";
		        StringBuilder sb = new StringBuilder();
		        sb.append("������ ���� �ڵ�� " + joinCode + " �Դϴ�.");
		        
		       
	    	
	    	
			
		
			return  mailService.send(subject, sb.toString(), "WWFT<mybark7@gmail.com>", email, null);
		}
	    
	
	}
