package com.wwft.service.mail.test;



import java.util.List;
import java.util.Random;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wwft.service.domain.User;
import com.wwft.service.mail.MailService;
import com.wwft.service.tree.TreeService;
import com.wwft.service.user.UserService;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/context-common.xml" ,
										"classpath:config/context-aspect.xml",
										"classpath:config/context-mybatis.xml",
										"classpath:config/context-transaction.xml",
										"classpath:config/context-mail.xml"})
public class mailServiceTest {

	//==>@RunWith,@ContextConfiguration 이용 Wiring, Test 할 instance DI
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	@Autowired
	@Qualifier("treeServiceImpl")
	private TreeService treeService;
	
	//mailService injection
	@Autowired
	@Qualifier("mailServiceImpl")
	private MailService mailService;

	//@Test
	public void testAddUser() throws Exception {
		
		User user = new User();
		user.setUserId("testUserId5");
		user.setPassword("test12345");
		user.setEmail("test5@gmail.com");
		user.setUserState("1");
		userService.addUser(user);
		userService.updateUser(user);
		
		
		user = userService.getUser("testUserId");
	}
		
	//@Test
	public void testGetUser() throws Exception {
			
		User user = new User();
		user.setUserId("testUserId5");
		user.setPassword("test12345");
		user.setEmail("test5@gmail.com");
		user.setUserState("1");
		
		user = userService.getUser("testUserId");
			
		
	 }
	//@Test
	 public void testUpdateUser() throws Exception{
		 
		 User user = userService.getUser("testUserId5");
		 Assert.assertNotNull(user);
		 
		 user.setPassword("change123456");
		 user.setEmail("change6@gmail.com");
		 user.setUserState("1");
			
		userService.updateUser(user);
			
		user = userService.getUser("testUserId5");
		Assert.assertNotNull(user);
			
		//==> console 확인
		System.out.println(user);
				
	}
//	@Test
//	public void testRemoveUser() throws Exception{
//		 
//		 User user = userService.removeUser("testUserId5");
//		 Assert.assertNotNull(user);
//		 
//		 user.setPassword("change123456");
//		 user.setEmail("change6@gmail.com");
//		 user.setUserState("1");
//			
//		userService.updateUser(user);
//			
//		user = userService.getUser("testUserId5");
//		Assert.assertNotNull(user);
//			
//		//==> console 확인
//		System.out.println(user);
//				
//	}

//	 @Test
	 public void testGetUserList() throws Exception{
		 
	 	List<User> list = userService.getUserList();
	 	
	 	System.out.println(list.size());
	 	
	 	//==> console 확인
	 	System.out.println(list);
	 	
	}	
	 
	 @Test
	 public void testSendMail() throws Exception{
		 
		 int ran = new Random().nextInt(100000) + 10000; // 10000 ~ 99999
	        String joinCode = String.valueOf(ran);
	        String email = "shwlsdn7@naver.com";
	        String subject = "회원가입 인증 코드 발급 안내 입니다.";
	        StringBuilder sb = new StringBuilder();
	        sb.append("귀하의 인증 코드는 " + joinCode + " 입니다.");
	        
	        mailService.send(subject, sb.toString(), "WWFT<mybark7@gmail.com>", email, null);



		 
		 
	 }
}
	 