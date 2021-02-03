package com.wwft.service.domain;

public class NoticeMessage {
	
	private int noticeMessageNo; //�����Ҷ� �ʿ�
	private char noticeMessageState; // 0������ 1�� ���� �޽��� ��ȸ ������ ���� 0���� 1�� ������Ʈ 
	private char noticeMessageType; // 0=��� , 1=�Ű�, 2=�ʴ��� �ʴ����ΰ��� ���� ���� �ϸ� �ش� �޽��� ���� ������ ������ �μ�Ʈ����
	private int postNo; //����� ��� post�� iframe�� �־��ֱ�����
	private int treeNo;//�׳� ���ʿ���
	private String sender;//���� ���´��� ����id+�����ʴг���
	private String receiver;//�������� ���� treeNo���� 
	private String noticeMessageDate; // �޽��� �������
	private String noticeMessageDetail;//�޽��� ����
	private int forestNo;
//	String postImageName;//�ʿ����
//	char noticeMessageboxState;//�ʿ���� 
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
