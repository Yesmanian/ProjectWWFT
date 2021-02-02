package com.wwft.service.comment.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


import com.wwft.service.comment.CommentDao;
import com.wwft.service.comment.CommentService;
import com.wwft.service.domain.Comment;


@Service("commentServiceImpl")
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	@Qualifier("commentDaoImpl")
	private CommentDao commentDao;
	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}

	public CommentServiceImpl() {
		System.out.println(this.getClass()+"commentServiceImpl생성");	
		}

	@Override
	public void addComment(Comment commnet) throws Exception {
		commentDao.addComment(commnet);
	}

	
	@Override
	public Comment getComment(int commentNo) throws Exception {
		return commentDao.getComment(commentNo);
	}
	
	@Override
	public List<Comment> getCommentList(int commentPostNo) throws Exception {
		System.out.println("getCommentList Service들어왔다");
		
		List<Comment> list= commentDao.getCommentList(commentPostNo);
		
		System.out.println("commentServiceImpl에서 getCommentList다녀옴");
		System.out.println("commentdao화인"+list);
		return list;
	}

	@Override
	public int removeComment(int commentNo) throws Exception {
		return commentDao.removeComment(commentNo);
	}

	

}
