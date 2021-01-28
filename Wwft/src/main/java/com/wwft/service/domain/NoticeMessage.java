package com.wwft.service.domain;

public class NoticeMessage {

	
	public NoticeMessage() {
	}

	int noticeMessageNo;
	char noticeMessageState;
	char noticeMessageType;
	int postNo;
	int treeNo;
	String sender;
	String receiver;
	String noticeMessageDate;
	String noticeMessageDetail;
	String postImageName;
	char noticeMessageboxState;
	public int getNoticeMessageNo() {
		return noticeMessageNo;
	}
	public void setNoticeMessageNo(int noticeMessageNo) {
		this.noticeMessageNo = noticeMessageNo;
	}
	public char getNoticeMessageState() {
		return noticeMessageState;
	}
	public void setNoticeMessageState(char noticeMessageState) {
		this.noticeMessageState = noticeMessageState;
	}
	public char getNoticeMessageType() {
		return noticeMessageType;
	}
	public void setNoticeMessageType(char noticeMessageType) {
		this.noticeMessageType = noticeMessageType;
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public int getTreeNo() {
		return treeNo;
	}
	public void setTreeNo(int treeNo) {
		this.treeNo = treeNo;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getNoticeMessageDate() {
		return noticeMessageDate;
	}
	public void setNoticeMessageDate(String noticeMessageDate) {
		this.noticeMessageDate = noticeMessageDate;
	}
	public String getNoticeMessageDetail() {
		return noticeMessageDetail;
	}
	public void setNoticeMessageDetail(String noticeMessageDetail) {
		this.noticeMessageDetail = noticeMessageDetail;
	}
	public String getPostImageName() {
		return postImageName;
	}
	public void setPostImageName(String postImageName) {
		this.postImageName = postImageName;
	}
	public char getNoticeMessageboxState() {
		return noticeMessageboxState;
	}
	public void setNoticeMessageboxState(char noticeMessageboxState) {
		this.noticeMessageboxState = noticeMessageboxState;
	}
	
}
