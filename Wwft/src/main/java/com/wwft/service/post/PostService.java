package com.wwft.service.post;

import java.util.List;
import java.util.Map;

import com.wwft.service.domain.Post;

public interface PostService {

	public void addPost(Post post) throws Exception;
	
	public Post getPost(int postNo) throws Exception;
	
	public List<Post> getPostList(int postTreeNo) throws Exception;
	
	public void updatePost(Post post) throws Exception;

	public int removePost(int postNo) throws Exception;
}
