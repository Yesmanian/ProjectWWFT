package com.wwft.service.post.impl;



import com.wwft.service.domain.ImageAndLike;
import com.wwft.service.domain.Post;



import com.wwft.service.post.PostDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Repository("postDaoImpl")
public class PostDaoImpl implements PostDao {
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private	SqlSession sqlSession;

	public PostDaoImpl() {
		System.out.println(this.getClass()+"postDaoImpl생성");
	}
	
	/*
	 * public void setSqlSession(SqlSession sqlSession) {
	 * System.out.println("::"+getClass()+".setSqlSession() Call.....");
	 * this.sqlSession = sqlSession; }
	 */

	@Override
	public void addPost(Post post) throws Exception {
		System.out.println("addPost들어왔다");
		sqlSession.insert("PostMapper.addPost", post);
		System.out.println("addPost지나간다");
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

	
	@Override
	public void addImageAndLike(Map<String, Object> map) throws Exception {
		 sqlSession.insert("ImageAndLikeMapper.addImageAndLike", map);
	}
	


	@Override
	public ImageAndLike getImageAndLike(int imageAndLikeNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("ImageAndLikeMapper.getImageAndLike", imageAndLikeNo);
	}
	
	@Override
	public List<ImageAndLike> getImageAndLikeList(int postNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ImageAndLikeMapper.getImageAndLikeList", postNo);
	}


	@Override
	public int removeImageAndLike(int imageAndLikeNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.delete("ImageAndLikeMapper.removeImageAndLike",imageAndLikeNo);
	}

	@Override
	public int lastPosttNo() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("PostMapper.lastPostNo");
	}

	

	
}
