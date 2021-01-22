package com.wwft.service.post;


import java.util.List;

import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.wwft.service.domain.ImageAndLike;
import com.wwft.service.domain.Post;

public interface PostDao {
	
	public void addPost(Post post) throws Exception;
	
	public Post getPost( int postNo) throws Exception;
	
	public int lastPosttNo() throws Exception;
	
	public List<Post> getPostList(int postTreeNo) throws Exception;
	
	public void updatePost(Post post) throws Exception;
	
	public int removePost(int postNo) throws Exception;
	
	public void addImageAndLike(Map<String, Object> map) throws Exception;
	
	public ImageAndLike getImageAndLike(int imageAndLikeNo) throws Exception;
	
	public List<ImageAndLike> getImageAndLikeList(int postNo) throws Exception;
		
	public int removeImageAndLike(int imageAndLikeNo) throws Exception;

}
