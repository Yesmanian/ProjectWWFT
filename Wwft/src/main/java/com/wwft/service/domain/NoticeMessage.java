package com.wwft.service.domain;

public class NoticeMessage {
	
	private int noticeMessageNo; //삭제할때 필요
	private char noticeMessageState; // 0안읽음 1은 읽음 메시지 조회 했을때 모든건 0에서 1로 업데이트 
	private char noticeMessageType; // 0=댓글 , 1=신고, 2=초대중 초대중인것을 수락 거절 하면 해당 메시지 삭제 수락시 숲에다 인설트해줌
	private int postNo; //댓글일 경우 post를 iframe에 넣어주기위함
	private int treeNo;//그냥 다필요함
	private String sender;//누가 보냈는지 나무id+프로필닉네임
	private String receiver;//누구한테 갈지 treeNo겠지 
	private String noticeMessageDate; // 메시지 등록일자
	private String noticeMessageDetail;//메시지 내용
	private int forestNo;
//	String postImageName;//필요없음
//	char noticeMessageboxState;//필요없음 
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
	public int getForestNo() {
		return forestNo;
	}
	public void setForestNo(int forestNo) {
		this.forestNo = forestNo;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("NoticeMessage [noticeMessageNo=");
		builder.append(noticeMessageNo);
		builder.append(", noticeMessageState=");
		builder.append(noticeMessageState);
		builder.append(", noticeMessageType=");
		builder.append(noticeMessageType);
		builder.append(", postNo=");
		builder.append(postNo);
		builder.append(", treeNo=");
		builder.append(treeNo);
		builder.append(", sender=");
		builder.append(sender);
		builder.append(", receiver=");
		builder.append(receiver);
		builder.append(", noticeMessageDate=");
		builder.append(noticeMessageDate);
		builder.append(", noticeMessageDetail=");
		builder.append(noticeMessageDetail);
		builder.append(", forestNo=");
		builder.append(forestNo);
		builder.append("]");
		return builder.toString();
	}


	


	
}
