package com.wwft.service.post;

import com.wwft.service.domain.Post;

public interface PostService {

	public void addPost(Post post) throws Exception;
	
	public Post getPost(int postNo) throws Exception;
	
	public void updatePost(Post post) throws Exception;

	public int removePost(int postNo) throws Exception;
}
