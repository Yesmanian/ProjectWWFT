package com.wwft.service.post.impl;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


import com.wwft.service.domain.Post;
import com.wwft.service.post.PostDao;
import com.wwft.service.post.PostService;

@Service("postServiceImpl")
public class PostServiceImpl implements PostService {

	@Autowired
	@Qualifier("postDaoImpl")
	private PostDao postDao;
	
	public void setProductDao(PostDao postDao) {
		this.postDao = postDao;
	}
	
	public PostServiceImpl() {
		System.out.println(this.getClass()+"postServiceImpl»ý¼º");
	}

	@Override
	public void addPost(Post post) throws Exception {
		postDao.addPost(post);
		
	}

	@Override
	public Post getPost(int postNo) throws Exception {
		return postDao.getPost(postNo);
	}
	
	@Override
	public List<Post> getPostList(int postTreeNo) throws Exception {
		
		
		List<Post> list = postDao.getPostList(postTreeNo);

		/*
		 * Map<String, Object> map = new HashMap<String,Object>(); map.put("list",
		 * list);
		 */
		
		return list;
	
	}

	@Override
	public void updatePost(Post post) throws Exception {
		postDao.updatePost(post);
	}

	@Override
	public int removePost(int postNo) throws Exception {
		return postDao.removePost(postNo);
	}

	

}
