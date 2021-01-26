package com.wwft.service.comment.impl;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.wwft.service.comment.CommentDao;
import com.wwft.service.domain.Comment;


@Repository("commentDaoImpl")
public class CommentDaoImpl implements CommentDao {
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;

	public CommentDaoImpl() {
		System.out.println(this.getClass()+"commentDaoImpl»ý¼º");
	}

	@Override
	public void addComment(Comment commnet) throws Exception {
		sqlSession.insert("CommentMapper.addComment", commnet);
		
	}
	
	@Override
	public Comment getComment(int commentNo) throws Exception {
		return sqlSession.selectOne("CommentMapper.getComment", commentNo);
	}

	@Override
	public List<Comment> getCommentList(int postNo) throws Exception {
		return sqlSession.selectList("CommentMapper.getCommentList", postNo);
	}

	@Override
	public int removeComment(int commentNo) throws Exception {
		return sqlSession.delete("CommentMapper.removeComment", commentNo);
	}

	

}
