package com.wwft.service.post.test;

import java.util.List;

import java.util.Map;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;


import com.wwft.service.domain.Post;
import com.wwft.service.post.PostService;



//@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/context-common.xml" ,
										"classpath:config/context-aspect.xml",
										"classpath:config/context-mybatis.xml",
										"classpath:config/context-transaction.xml"})
public class PostServiceTest {

	
	@Autowired
	@Qualifier("postServiceImpl")
	private PostService productService;

	@Test
	public void testinsertPost() throws Exception {
		
		
		Post post = new Post();
		post.setPostDetail("테스트테스트");
		post.setCheckboxState("1");
		post.setPostState("1");
		post.setPostTreeNo(2);
		post.setPostWriter("비트네");
		
		
		
		
		


	 }
}
	 