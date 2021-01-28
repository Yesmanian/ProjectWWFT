package com.wwft.service.domain;

public class Forest {

	private int forestNo;
	private int forestNoticeNo;
	private String forestName;
	private int forestCreaterTreeNo;
	private char invitePossibleState;
	private char forestNameChangePossibleState;
	private String forestCreateRegDate;
	private String forestInformText;
	private String forestInformWriter;
	private String forestInformRegDate;
	
	public Forest() {
		// TODO Auto-generated constructor stub
	}

	public int getForestNo() {
		return forestNo;
	}

	public void setForestNo(int forestNo) {
		this.forestNo = forestNo;
	}

	public int getForestNoticeNo() {
		return forestNoticeNo;
	}

	public void setForestNoticeNo(int forestNoticeNo) {
		this.forestNoticeNo = forestNoticeNo;
	}

	public String getForestName() {
		return forestName;
	}

	public void setForestName(String forestName) {
		this.forestName = forestName;
	}

	public int getForestCreaterTreeNo() {
		return forestCreaterTreeNo;
	}

	public void setForestCreaterTreeNo(int forestCreaterTreeNo) {
		this.forestCreaterTreeNo = forestCreaterTreeNo;
	}

	public char getInvitePossibleState() {
		return invitePossibleState;
	}

	public void setInvitePossibleState(char invitePossibleState) {
		this.invitePossibleState = invitePossibleState;
	}

	public char getForestNameChangePossibleState() {
		return forestNameChangePossibleState;
	}

	public void setForestNameChangePossibleState(char forestNameChangePossibleState) {
		this.forestNameChangePossibleState = forestNameChangePossibleState;
	}

	public String getForestCreateRegDate() {
		return forestCreateRegDate;
	}

	public void setForestCreateRegDate(String forestCreateRegDate) {
		this.forestCreateRegDate = forestCreateRegDate;
	}

	public String getForestInformText() {
		return forestInformText;
	}

	public void setForestInformText(String forestInformText) {
		this.forestInformText = forestInformText;
	}

	public String getForestInformWriter() {
		return forestInformWriter;
	}

	public void setForestInformWriter(String forestInformWriter) {
		this.forestInformWriter = forestInformWriter;
	}

	public String getForestInformRegDate() {
		return forestInformRegDate;
	}

	public void setForestInformRegDate(String forestInformRegDate) {
		this.forestInformRegDate = forestInformRegDate;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Forest [forestNo=");
		builder.append(forestNo);
		builder.append(", forestNoticeNo=");
		builder.append(forestNoticeNo);
		builder.append(", forestName=");
		builder.append(forestName);
		builder.append(", forestCreaterTreeNo=");
		builder.append(forestCreaterTreeNo);
		builder.append(", invitePossibleState=");
		builder.append(invitePossibleState);
		builder.append(", forestNameChangePossibleState=");
		builder.append(forestNameChangePossibleState);
		builder.append(", forestCreateRegDate=");
		builder.append(forestCreateRegDate);
		builder.append(", forestInformText=");
		builder.append(forestInformText);
		builder.append(", forestInformWriter=");
		builder.append(forestInformWriter);
		builder.append(", forestInformRegDate=");
		builder.append(forestInformRegDate);
		builder.append("]");
		return builder.toString();
	}



}
