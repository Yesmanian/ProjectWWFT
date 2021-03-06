package com.wwft.service.domain;

import oracle.sql.DATE;

public class Post {
	

	private int postNo;
	private String postRegDate;			//게시글 작성 날짜	
	private String postDetail;			//게시글 내용
	private String postWriter;			//게시글 작성자
	private String postState;			//게시글 공개여부
	private int postTreeNo;				//게시글이 작성된 나부번호
	private String checkboxState;		//게시글 체크박스 선택여부(이동,삭제등)
	private String albumName;			//앨범이름
	private String firstImageName;		//첫번쨰  이미지 이름
	private int profileNo;				//게시글 등록자 노진우 수정
	public Post() {
		}

	public int getPostNo() {
		return postNo;
	}

	public String getFirstImageName() {
		return firstImageName;
	}

	public void setFirstImageName(String firstImageName) {
		this.firstImageName = firstImageName;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}



	public String getPostRegDate() {
		return postRegDate;
	}

	public void setPostRegDate(String postRegDate) {
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

	public int getProfileNo() {
		return profileNo;
	}

	public void setProfileNo(int profileNo) {
		this.profileNo = profileNo;
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
		builder.append(", firstImageName=");
		builder.append(firstImageName);
		builder.append(", profileNo=");
		builder.append(profileNo);
		builder.append("]");
		return builder.toString();
	}

	

}
