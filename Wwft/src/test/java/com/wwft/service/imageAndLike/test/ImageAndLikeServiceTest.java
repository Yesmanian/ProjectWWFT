package com.wwft.service.imageAndLike.test;

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
public class ImageAndLikeServiceTest {

	
	//@Autowired
	//@Qualifier("postServiceImpl")
	private PostService postService;

	//@Test
	public void testinsertPost() throws Exception {
		
		
		Post post = new Post();
		post.setPostDetail("테스트테스트");
		post.setPostState("1");
		post.setPostTreeNo(2);
		post.setPostWriter("비트네");
		post.setAlbumName("확인앨범");
		
		
		postService.addPost(post);
		
		post = postService.getPost(19);
		
		Assert.assertEquals("테스트테스트", post.getPostDetail());
		Assert.assertEquals("1", post.getPostState());
		Assert.assertEquals(2, post.getPostTreeNo());
		Assert.assertEquals("비트네", post.getPostWriter());
		Assert.assertEquals("확인앨범", post.getAlbumName());

	 }
	
	   //@Test
		public void testfindPost() throws Exception {
			
			Post post = new Post();
			
			post = postService.getPost(19);
			
			Assert.assertEquals("테스트테스트", post.getPostDetail());
			Assert.assertEquals("1", post.getPostState());
			Assert.assertEquals(2, post.getPostTreeNo());
			Assert.assertEquals("비트네", post.getPostWriter());
			Assert.assertEquals("확인앨범", post.getAlbumName());
			
			
			
			Assert.assertNotNull(postService.getPost(10));
			Assert.assertNotNull(postService.getPost(7));
		}
	
		//@Test
		 public void testupdatePost() throws Exception{
			 
			 
			Post post = postService.getPost(26); 
			Assert.assertNotNull(post);
			
			
			Assert.assertEquals("확인중", post.getPostDetail());
			Assert.assertEquals("1", post.getPostState());
			Assert.assertEquals("주말", post.getAlbumName());
			
		
			
			post.setPostDetail("수정 테스트중");
			post.setPostState("1");
			post.setAlbumName("수정테스트앨범");
			
			postService.updatePost(post);

			
			
			post = postService.getPost(26);
			
			
			Assert.assertNotNull(post);
			
			
				
			Assert.assertEquals("수정 테스트중", post.getPostDetail());
			Assert.assertEquals("1", post.getPostState());
			Assert.assertEquals("수정테스트앨범", post.getAlbumName());
		 }
		
		// @Test
		 public void testGetPostListAll() throws Exception{
			 
			 
			Post post = new Post();
			post.setPostTreeNo(2);
		 	
			/* Map<String, Object> map = postService.getPostList(post.getPostTreeNo()); */
			
			List<Post> list =postService.getPostList(post.getPostTreeNo());
			Assert.assertEquals(6, list.size());
			
			
			
	
			
		
		 
		 }
		
}
	 