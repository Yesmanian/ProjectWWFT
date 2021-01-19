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
		post.setPostDetail("�׽�Ʈ�׽�Ʈ");
		post.setPostState("1");
		post.setPostTreeNo(2);
		post.setPostWriter("��Ʈ��");
		post.setAlbumName("Ȯ�ξٹ�");
		
		
		postService.addPost(post);
		
		post = postService.getPost(19);
		
		Assert.assertEquals("�׽�Ʈ�׽�Ʈ", post.getPostDetail());
		Assert.assertEquals("1", post.getPostState());
		Assert.assertEquals(2, post.getPostTreeNo());
		Assert.assertEquals("��Ʈ��", post.getPostWriter());
		Assert.assertEquals("Ȯ�ξٹ�", post.getAlbumName());

	 }
	
	   //@Test
		public void testfindPost() throws Exception {
			
			Post post = new Post();
			
			post = postService.getPost(19);
			
			Assert.assertEquals("�׽�Ʈ�׽�Ʈ", post.getPostDetail());
			Assert.assertEquals("1", post.getPostState());
			Assert.assertEquals(2, post.getPostTreeNo());
			Assert.assertEquals("��Ʈ��", post.getPostWriter());
			Assert.assertEquals("Ȯ�ξٹ�", post.getAlbumName());
			
			
			
			Assert.assertNotNull(postService.getPost(10));
			Assert.assertNotNull(postService.getPost(7));
		}
	
		//@Test
		 public void testupdatePost() throws Exception{
			 
			 
			Post post = postService.getPost(26); 
			Assert.assertNotNull(post);
			
			
			Assert.assertEquals("Ȯ����", post.getPostDetail());
			Assert.assertEquals("1", post.getPostState());
			Assert.assertEquals("�ָ�", post.getAlbumName());
			
		
			
			post.setPostDetail("���� �׽�Ʈ��");
			post.setPostState("1");
			post.setAlbumName("�����׽�Ʈ�ٹ�");
			
			postService.updatePost(post);

			
			
			post = postService.getPost(26);
			
			
			Assert.assertNotNull(post);
			
			
				
			Assert.assertEquals("���� �׽�Ʈ��", post.getPostDetail());
			Assert.assertEquals("1", post.getPostState());
			Assert.assertEquals("�����׽�Ʈ�ٹ�", post.getAlbumName());
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
	 