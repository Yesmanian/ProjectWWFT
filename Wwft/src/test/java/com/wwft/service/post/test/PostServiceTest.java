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

import com.wwft.common.web.Search;
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
		post.setPostDetail("확인중이당 맵퍼");
		post.setPostState("1");
		post.setPostTreeNo(2);
		post.setPostWriter("비트네");
		post.setAlbumName("확인앨범");

		postService.addPost(post);
		Map<String, Object> test = new HashMap<String, Object>();
		test = postService.getPost(19);

		// Map<"post", Post> post = postService.getPost(19);

		Assert.assertEquals("확인중이당 맵퍼", post.getPostDetail());
		Assert.assertEquals("1", post.getPostState());
		Assert.assertEquals(2, post.getPostTreeNo());
		Assert.assertEquals("비트네", post.getPostWriter());
		Assert.assertEquals("확인앨범", post.getAlbumName());

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
	
	  
	//  Assert.assertEquals("테스트테스트", post.getPostDetail()); 
	  Assert.assertEquals("2021-01-25 10:18:10.0",dbPost.getPostRegDate()); 
	  Assert.assertEquals("0",dbPost.getPostState()); 
	  Assert.assertEquals(1, dbPost.getPostTreeNo());
	  Assert.assertEquals("초초", dbPost.getPostWriter()); 
	  Assert.assertEquals(4,((ArrayList<ImageAndLike>) map.get("fileList")).size()); 
	  
	  
	   }
	  
	 // @Test 
	public void testupdatePost() throws Exception{
	  
	/*
	 * Post post = postService.getPost(26);
	 * 
	 * Assert.assertNotNull(post); Assert.assertEquals("확인중", post.getPostDetail());
	 * Assert.assertEquals("1",post.getPostState()); Assert.assertEquals("주말",
	 * post.getAlbumName());
	 * 
	 * 
	 * 
	 * post.setPostDetail("수정 테스트중"); post.setPostState("1");
	 * post.setAlbumName("수정테스트앨범");
	 * 
	 * postService.updatePost(post);
	 * 
	 * 
	 * 
	 * post = postService.getPost(26);
	 * 
	 * 
	 * Assert.assertNotNull(post);
	 * 
	 * 
	 * 
	 * Assert.assertEquals("수정 테스트중", post.getPostDetail());
	 * Assert.assertEquals("1", post.getPostState()); Assert.assertEquals("수정테스트앨범",
	 * post.getAlbumName()); 
	 */
	}
	//  @Test
	public void testGetPostListAll() throws Exception{
	  
		  Search search = new Search();
		  search.setCurrentPage(1);
		  search.setPageSize(9);
		  
	  
	  Post post = new Post(); 
	  post.setPostTreeNo(1);
	  post.setPostState("0");
	  
	  ImageAndLike imageAndLike = new ImageAndLike();
	  imageAndLike.setPostNo(256);
	  imageAndLike.setImageAndLikeState("0");
	  imageAndLike.setDeleteImageState("N");
	  
	  Map<String, Object> map = postService.getPostList(search, post.getPostTreeNo());


	  List<Post> dbList = (List<Post>)map.get("list");
	  
	  List<String> albumList = (List<String>)map.get("albumList");
	 
	  System.out.println("!!!!!!!!!!!!!!!!여기야"+dbList.size());
	  System.out.println("!!!!!!!!!!!!!!!!여기야!!!!!!!!!!!!!!!!!!11"+albumList.size());
	  
	  Assert.assertEquals(9, dbList.size());
	 // Assert.assertEquals("24067966-7956-4676-8d6d-d0c402c09665_8.jpg", dbfileName.getSaveImageName());
	  Assert.assertEquals(7, albumList.size());
	  
	  
	  
	  
	  
	  }
	
	//  @Test
	public void testGetPostListByAlbum() throws Exception{
	  
		  Search search = new Search();
		  search.setCurrentPage(1);
		  search.setPageSize(9);
		  search.setSearchCondition("1");
		  search.setSearchKeyword("수정테스트앨범");
	  
	  Post post = new Post(); 
	  post.setPostTreeNo(2);
	  post.setPostState("0");
	  
	  ImageAndLike imageAndLike = new ImageAndLike();
	  imageAndLike.setPostNo(256);
	  imageAndLike.setImageAndLikeState("0");
	  imageAndLike.setDeleteImageState("N");
	  
	  Map<String, Object> map = postService.getPostList(search, post.getPostTreeNo());


	  List<Post> dbList = (List<Post>)map.get("list");
	  ImageAndLike dbfileName = (ImageAndLike)map.get("fileName");
	  List<String> albumList = (List<String>)map.get("albumList");
	 for(int i =0; i< dbList.size(); i++) {
		 System.out.println("!!!!!!!!!!!!검색조건으로 들어갔나"+dbList.get(i).getPostNo());
	 }
	  
	 System.out.println("!!!!!!!!!!!!검색조건으로 들어갔나"+dbList.get(1).getPostNo());
	  
	 // Assert.assertEquals(3, dbList.size());
	  
	  
	  
	  
	  
	  
	  }
	 
	 

}
