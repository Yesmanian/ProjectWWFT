package com.wwft.service.comment;

import java.util.List;

import com.wwft.service.domain.Comment;

public interface CommentService {
	
	
	public void addComment(Comment commnet) throws Exception;
	
	public Comment getComment(int commentNo) throws Exception;
	
	public List<Comment> getCommentList(int commentPostNo) throws Exception;
	
	public int removeComment(int commentNo) throws Exception;

}
