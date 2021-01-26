package com.wwft.service.domain;

import oracle.sql.DATE;

public class Post {
	

	private int postNo;
	private DATE postRegDate;			//�Խñ� �ۼ� ��¥	
	private String postDetail;			//�Խñ� ����
	private String postWriter;			//�Խñ� �ۼ���
	private String postState;			//�Խñ� ��������
	private int postTreeNo;				//�Խñ��� �ۼ��� ���ι�ȣ
	private String checkboxState;		//�Խñ� üũ�ڽ� ���ÿ���(�̵�,������)
	private String albumName;			//�ٹ��̸�
	
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

	public String getAlbumName() {
		return albumName;
	}

	public void setAlbumName(String albumName) {
		this.albumName = albumName;
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
