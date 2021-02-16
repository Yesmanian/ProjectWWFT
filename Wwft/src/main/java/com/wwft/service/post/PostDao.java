package com.wwft.service.post;


import java.util.List;

import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.wwft.common.web.Search;
import com.wwft.service.domain.ImageAndLike;
import com.wwft.service.domain.Post;

public interface PostDao {
	
	public void addPost(Post post) throws Exception;
	
	public Post getPost( int postNo) throws Exception;
	
	public int lastPostNo() throws Exception;
	
	public int getTotalCount(Search search,int postTreeNo) throws Exception;
	
	public List<Post> getPostList(Search search,int postTreeNo) throws Exception;
	
	public List<String> getAlbumList(int PostTreeNo) throws Exception;
	
	public void updatePost(Post post) throws Exception;
	
	public int removePost(int postNo) throws Exception;
	
	public void addImageAndLike(ImageAndLike imageAndLike) throws Exception;
	
	/* public ImageAndLike getImageAndLike(int postNo) throws Exception; */
	
	public List<String> getImageAndLikeList(int postNo) throws Exception;
		
	public int removeImageAndLike(int imageAndLikeNo) throws Exception;

	public String getPostFirstImage(int postNo) throws Exception;

}
