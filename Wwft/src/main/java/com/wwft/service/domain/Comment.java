package com.wwft.service.domain;

import oracle.sql.DATE;

public class Comment {

	
	private int commentNo;
	private String commentWriter;
	private DATE commentRegDate;
	private String commentDetail;
	private int commentPostNo;
	private int commentTreeNo;
	
	public Comment() {
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public String getCommentWriter() {
		return commentWriter;
	}

	public void setCommentWriter(String commentWriter) {
		this.commentWriter = commentWriter;
	}

	public DATE getCommentRegDate() {
		return commentRegDate;
	}

	public void setCommentRegDate(DATE commentRegDate) {
		this.commentRegDate = commentRegDate;
	}

	public String getCommentDetail() {
		return commentDetail;
	}

	public void setCommentDetail(String commentDetail) {
		this.commentDetail = commentDetail;
	}

	public int getCommentPostNo() {
		return commentPostNo;
	}

	public void setCommentPostNo(int commentPostNo) {
		this.commentPostNo = commentPostNo;
	}

	public int getCommentTreeNo() {
		return commentTreeNo;
	}

	public void setCommentTreeNo(int commentTreeNo) {
		this.commentTreeNo = commentTreeNo;
	}

	
}
