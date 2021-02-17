package com.wwft.service.domain;

import oracle.sql.DATE;

public class Comment {

	
	private int commentNo;		
	private String commentWriter;			//´ñ±ÛÀÛ¼ºÀÚ
	private String commentRegDate;			//´ñ±Û ÀÛ¼º³¯Â¥
	private String commentDetail;			//´ñ±Û³»¿ë	
	private int commentPostNo;				//´ñ±ÛÀÌ´Þ¸° °Ô½Ã±Û¹øÈ£
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



	public String getCommentRegDate() {
		return commentRegDate;
	}

	public void setCommentRegDate(String commentRegDate) {
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

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Comment [commentNo=");
		builder.append(commentNo);
		builder.append(", commentWriter=");
		builder.append(commentWriter);
		builder.append(", commentRegDate=");
		builder.append(commentRegDate);
		builder.append(", commentDetail=");
		builder.append(commentDetail);
		builder.append(", commentPostNo=");
		builder.append(commentPostNo);
		builder.append(", commentTreeNo=");
		builder.append(commentTreeNo);
		builder.append("]");
		return builder.toString();
	}

	
}
