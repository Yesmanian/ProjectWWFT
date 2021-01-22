package com.wwft.service.user.test;



import java.util.List;
import java.util.Map;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wwft.common.web.Search;
import com.wwft.service.domain.User;
import com.wwft.service.user.UserService;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/context-common.xml" ,
										"classpath:config/context-aspect.xml",
										"classpath:config/context-mybatis.xml",
										"classpath:config/context-transaction.xml"})
public class UserServiceTest {

	//==>@RunWith,@ContextConfiguration 이용 Wiring, Test 할 instance DI
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;

	@Test
	public void testAddUser() throws Exception {
		
		User user = new User();
		user.setUserId("testUserId5");
		user.setPassword("test12345");
		user.setEmail("test5@gmail.com");
		user.setUserState("1");
		
		userService.addUser(user);
		
		user = userService.getUser("testUserId");
	}
		
	@Test
	public void testGetUser() throws Exception {
			
		User user = new User();
		user.setUserId("testUserId5");
		user.setPassword("test12345");
		user.setEmail("test5@gmail.com");
		user.setUserState("1");
		
		user = userService.getUser("testUserId");
			
		
	 }
	@Test
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

//	 //@Test
//	 public void testGetUserListAll() throws Exception{
//		 
//	 	Search search = new Search();
//	 	search.setCurrentPage(1);
//	 	search.setPageSize(3);
//	 	Map<String,Object> map = userService.getUserList(search);
//	 	
//	 	List<Object> list = (List<Object>)map.get("list");
//	 	Assert.assertEquals(3, list.size());
//	 	
//		//==> console 확인
//	 	//System.out.println(list);
//	 	
//	 	Integer totalCount = (Integer)map.get("totalCount");
//	 	System.out.println(totalCount);
//	 	
//	 	System.out.println("=======================================");
//	 	
//	 	search.setCurrentPage(1);
//	 	search.setPageSize(3);
//	 	search.setSearchCondition("0");
//	 	search.setSearchKeyword("");
//	 	map = userService.getUserList(search);
//	 	
//	 	list = (List<Object>)map.get("list");
//	 	Assert.assertEquals(3, list.size());
//	 	
//	 	//==> console 확인
//	 	//System.out.println(list);
//	 	
//	 	totalCount = (Integer)map.get("totalCount");
//	 	System.out.println(totalCount);
//	}	 

}
	 