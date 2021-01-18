package com.wwft.service.comment.test;

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

import com.wwft.service.comment.CommentService;
import com.wwft.service.domain.Comment;
import com.wwft.service.domain.Post;
import com.wwft.service.post.PostService;



//@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/context-common.xml" ,
										"classpath:config/context-aspect.xml",
										"classpath:config/context-mybatis.xml",
										"classpath:config/context-transaction.xml"})
public class CommentServiceTest {

	
	//@Autowired
	//@Qualifier("commentServiceImpl")
	private CommentService commentService;

	//@Test
	public void testinsertComment() throws Exception {
		
		
		
	 }
	
	   //@Test
		public void testfindPost() throws Exception {
			
			
		}
	
		@Test
		 public void testupdatePost() throws Exception{
			 
			
		
			
			
		 }
		
		
}
	 