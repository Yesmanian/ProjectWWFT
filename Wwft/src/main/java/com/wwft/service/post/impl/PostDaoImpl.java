package com.wwft.service.post.impl;



import com.wwft.service.domain.Post;
import com.wwft.service.post.PostDao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("postDaoImpl")
public class PostDaoImpl implements PostDao {
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;

	public PostDaoImpl() {
		System.out.println(this.getClass());
	}
	
	public void setSqlSession(SqlSession sqlSession) {
		System.out.println("::"+getClass()+".setSqlSession() Call.....");
		this.sqlSession = sqlSession;
	}

	@Override
	public void addPost(Post post) throws Exception {
		sqlSession.insert("PostMapper.addPost", post);
	}

	@Override
	public Post getPost(int postNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updatePost(Post post) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int removePost(int postNo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
