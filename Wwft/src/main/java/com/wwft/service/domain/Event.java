package com.wwft.service.domain;

import java.sql.Date;

public class Event {
	
	
	private int id;
	private int treeNo;
	private String title;
	private String start;
	private String end;
	private String dDay;
	private String eventDetail;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTreeNo() {
		return treeNo;
	}
	public void setTreeNo(int treeNo) {
		this.treeNo = treeNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public String getdDay() {
		return dDay;
	}
	public void setdDay(String dDay) {
		this.dDay = dDay;
	}
	public String getEventDetail() {
		return eventDetail;
	}
	public void setEventDetail(String eventDetail) {
		this.eventDetail = eventDetail;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Event [id=");
		builder.append(id);
		builder.append(", treeNo=");
		builder.append(treeNo);
		builder.append(", title=");
		builder.append(title);
		builder.append(", start=");
		builder.append(start);
		builder.append(", end=");
		builder.append(end);
		builder.append(", dDay=");
		builder.append(dDay);
		builder.append(", eventDetail=");
		builder.append(eventDetail);
		builder.append("]");
		return builder.toString();
	}
	
	
	
	
	

}
