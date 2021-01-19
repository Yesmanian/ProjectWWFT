package com.wwft.service.post.impl;



import com.wwft.service.domain.Post;



import com.wwft.service.post.PostDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("postDaoImpl")
public class PostDaoImpl implements PostDao {
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private	SqlSession sqlSession;

	public PostDaoImpl() {
		System.out.println(this.getClass()+"postDaoImpl»ý¼º");
	}
	
	/*
	 * public void setSqlSession(SqlSession sqlSession) {
	 * System.out.println("::"+getClass()+".setSqlSession() Call.....");
	 * this.sqlSession = sqlSession; }
	 */

	@Override
	public void addPost(Post post) throws Exception {
		sqlSession.insert("PostMapper.addPost", post);
	}

	@Override
	public Post getPost(int postNo) throws Exception {
		return sqlSession.selectOne("PostMapper.getPost", postNo);
	}
	
	@Override
	public List<Post> getPostList(int postTreeNo) throws Exception {
		
		return sqlSession.selectList("PostMapper.getPostList", postTreeNo);
	}


	@Override
	public void updatePost(Post post) throws Exception {
		sqlSession.update("PostMapper.updatePost", post);
	}

	@Override
	public int removePost(int postNo) throws Exception {
		return sqlSession.delete("postMapper.removePost", postNo);
	}

	
}
