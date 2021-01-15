package com.wwft.service.domain;

import oracle.sql.DATE;

public class Post {
	

	private int postNo;
	private DATE postRegDate;
	private String postDetail;
	private String postWriter;
	private String postState;
	private int postTreeNo;
	private String checkboxState;
	private String albumName;
	
	public Post() {
		}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public DATE getPostRegDate() {
		return postRegDate;
	}

	public void setPostRegDate(DATE postRegDate) {
		this.postRegDate = postRegDate;
	}

	public String getPostDetail() {
		return postDetail;
	}

	public void setPostDetail(String postDetail) {
		this.postDetail = postDetail;
	}

	public String getPostWriter() {
		return postWriter;
	}

	public void setPostWriter(String postWriter) {
		this.postWriter = postWriter;
	}

	public String getPostState() {
		return postState;
	}

	public void setPostState(String postState) {
		this.postState = postState;
	}

	public int getPostTreeNo() {
		return postTreeNo;
	}

	public void setPostTreeNo(int postTreeNo) {
		this.postTreeNo = postTreeNo;
	}

	public String getCheckboxState() {
		return checkboxState;
	}

	public void setCheckboxState(String checkboxState) {
		this.checkboxState = checkboxState;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Post [postNo=");
		builder.append(postNo);
		builder.append(", postRegDate=");
		builder.append(postRegDate);
		builder.append(", postDetail=");
		builder.append(postDetail);
		builder.append(", postWriter=");
		builder.append(postWriter);
		builder.append(", postState=");
		builder.append(postState);
		builder.append(", postTreeNo=");
		builder.append(postTreeNo);
		builder.append(", checkboxState=");
		builder.append(checkboxState);
		builder.append(", albumName=");
		builder.append(albumName);
		builder.append("]");
		return builder.toString();
	}

}
