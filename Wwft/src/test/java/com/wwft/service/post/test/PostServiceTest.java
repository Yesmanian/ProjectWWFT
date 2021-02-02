package com.wwft.service.post.test;

import java.util.ArrayList;
import java.util.HashMap;
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

import com.wwft.service.domain.ImageAndLike;
import com.wwft.service.domain.Post;
import com.wwft.service.post.PostDao;
import com.wwft.service.post.PostService;

import javafx.geometry.Pos;

//@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/context-common.xml", "classpath:config/context-aspect.xml",
		"classpath:config/context-mybatis.xml", "classpath:config/context-transaction.xml" })
public class PostServiceTest {

	@Autowired
	 @Qualifier("postServiceImpl")
	private PostService postService;

	//@Test
	public void testinsertPost() throws Exception {

		Post post = new Post();
		post.setPostDetail("Ȯ�����̴� ����");
		post.setPostState("1");
		post.setPostTreeNo(2);
		post.setPostWriter("��Ʈ��");
		post.setAlbumName("Ȯ�ξٹ�");

		postService.addPost(post);
		Map<String, Object> test = new HashMap<String, Object>();
		test = postService.getPost(19);

		// Map<"post", Post> post = postService.getPost(19);

		Assert.assertEquals("Ȯ�����̴� ����", post.getPostDetail());
		Assert.assertEquals("1", post.getPostState());
		Assert.assertEquals(2, post.getPostTreeNo());
		Assert.assertEquals("��Ʈ��", post.getPostWriter());
		Assert.assertEquals("Ȯ�ξٹ�", post.getAlbumName());

	}


	 //@Test
	public void testfindPost() throws Exception {
	 
	  Post post = new Post();
	  post.setPostNo(190);
	  post.setPostState("0");
	  
	  ImageAndLike imageAndLike = new ImageAndLike();
	  imageAndLike.setPostNo(190);
	  imageAndLike.setImageAndLikeState("0");
	  imageAndLike.setDeleteImageState("N");
	 
	  Map<String, Object> map = postService.getPost(post.getPostNo());
	//  map.put("post", post);
	//  map.put("imageAndLike", imageAndLike);

	  System.out.println(map.get("post"));
	  System.out.println(((ArrayList<ImageAndLike>) map.get("fileList")).size());
	
	
	Post dbPost = (Post)map.get("post");
	System.out.println(dbPost);
	
	  
	//  Assert.assertEquals("�׽�Ʈ�׽�Ʈ", post.getPostDetail()); 
	  Assert.assertEquals("2021-01-25 10:18:10.0",dbPost.getPostRegDate()); 
	  Assert.assertEquals("0",dbPost.getPostState()); 
	  Assert.assertEquals(1, dbPost.getPostTreeNo());
	  Assert.assertEquals("����", dbPost.getPostWriter()); 
	  Assert.assertEquals(4,((ArrayList<ImageAndLike>) map.get("fileList")).size()); 
	  
	  
	   }
	  
	 // @Test 
	public void testupdatePost() throws Exception{
	  
	  
	  Post post = postService.getPost(26); 
	  
	  Assert.assertNotNull(post);
	  Assert.assertEquals("Ȯ����", post.getPostDetail()); 
	  Assert.assertEquals("1",post.getPostState()); 
	  Assert.assertEquals("�ָ�", post.getAlbumName());
	  
	  
	  
	  post.setPostDetail("���� �׽�Ʈ��"); post.setPostState("1");
	 post.setAlbumName("�����׽�Ʈ�ٹ�");
	  
	  postService.updatePost(post);
	  
	  
	  
	  post = postService.getPost(26);
	  
	  
	  Assert.assertNotNull(post);
	  
	  
	  
	  Assert.assertEquals("���� �׽�Ʈ��", post.getPostDetail());
	  Assert.assertEquals("1", post.getPostState()); Assert.assertEquals("�����׽�Ʈ�ٹ�",
	  post.getAlbumName()); }
	  
	  //@Test
	public void testGetPostListAll() throws Exception{
	  
	  
	  Post post = new Post(); 
	  post.setPostTreeNo(2);
	  post.setPostState("0");
	  
	  ImageAndLike imageAndLike = new ImageAndLike();
	  imageAndLike.setPostNo(190);
	  imageAndLike.setImageAndLikeState("0");
	  imageAndLike.setDeleteImageState("N");
	  
	  Map<String, Object> map = postService.getPostList(post.getPostTreeNo(),imageAndLike.getPostNo());


	  List<Post> dbList = (List<Post>)map.get("list");
	  ImageAndLike dbfileName = (ImageAndLike)map.get("fileName");
	  
	 
	  
	  
	  Assert.assertEquals(7, dbList.size());
	  Assert.assertEquals("1361d3f6-ef05-424c-800c-f02fc1d02710_1.jfif", dbfileName.getSaveImageName());
	  
	  
	  
	  
	  
	  
	  }
	 

}
