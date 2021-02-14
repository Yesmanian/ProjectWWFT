package com.wwft.service.user.test;



import java.util.List;
import java.util.Map;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wwft.common.web.Search;
import com.wwft.service.domain.User;
import com.wwft.service.tree.TreeService;
import com.wwft.service.user.UserService;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/context-common.xml" ,
										"classpath:config/context-aspect.xml",
										"classpath:config/context-mybatis.xml",
										"classpath:config/context-transaction.xml"})
public class UserServiceTest {
	
	private final static Logger LOGGER = Logger.getLogger(UserServiceTest.class);

	//==>@RunWith,@ContextConfiguration 이용 Wiring, Test 할 instance DI
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	@Autowired
	@Qualifier("treeServiceImpl")
	private TreeService treeService;

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
		
//	@Test
	public void testGetUser() throws Exception {
			
		BasicConfigurator.configure();
		
		boolean result = false;
		
		
		
		
	User user = userService.getUser("abc");
	if(user!=null) {
		result=true;
	}else {
		result=false;
	}
		LOGGER.debug("[DEBUG]'userIdCheck' :"+result);
		
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
	 public void emailCheck() throws Exception{
			BasicConfigurator.configure();
			boolean result = false;
			String email = "shwlsdn123@naver.com";
		User user = userService.findEmail(email);
			if(user!=null) {
				result = false; // 이미 email 사용중
			}else {
				result = true;
			}
			
			LOGGER.debug("[checkEmail]"+result);
		 
	 }
}
	 