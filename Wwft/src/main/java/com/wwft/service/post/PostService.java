package com.wwft.service.post;

import java.util.List
;

import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.wwft.common.web.Search;
import com.wwft.service.domain.ImageAndLike;
import com.wwft.service.domain.Post;

public interface PostService {

	/* public void addPost(Post post) throws Exception; */
	
	public Post addPost(Post post) throws Exception;
	
	/* public Post getPost(int postNo) throws Exception; */
	
	public Map<String, Object> getPost(int postNo) throws Exception;
	
	/* public List<Post> getPostList(int postTreeNo) throws Exception; */
	
	public Map<String, Object> getPostList(Search search ,int postTreeNo) throws Exception;
	
	public void updatePost(Post post,ImageAndLike imageAndLike, MultipartHttpServletRequest request) throws Exception;

	public void removePost(int postNo) throws Exception;

	public void uploadFile(ImageAndLike imageAndLike, MultipartHttpServletRequest request) throws Exception;

	public String getPostFirstImage(int postNo) throws Exception;
	
	
	
	/*
	 * public List<String> addImageAndLikeList(ImageAndLike imageAndLike,
	 * MultipartHttpServletRequest request) throws Exception;
	 * 
	 * public ImageAndLike getImageAndLike(int imageAndLikeNo) throws Exception;
	 * 
	 * public List<ImageAndLike> getImageAndLikeList(int postNo) throws Exception;
	 * 
	 * public List<String> removeImageAndLike(ImageAndLike imageAndLike,
	 * MultipartHttpServletRequest request) throws Exception;
	 */
}
