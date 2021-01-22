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
	private String freq;
	private String byDay;
	private String dow;
	private String dom;
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
	public String getFreq() {
		return freq;
	}
	public void setFreq(String freq) {
		this.freq = freq;
	}
	public String getByDay() {
		return byDay;
	}
	public void setByDay(String by) {
		this.byDay = by;
	}
	public String getDow() {
		return dow;
	}
	public void setDow(String dow) {
		this.dow = dow;
	}
	public String getDom() {
		return dom;
	}
	public void setDom(String dom) {
		this.dom = dom;
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
		builder.append(", freq=");
		builder.append(freq);
		builder.append(", byDay=");
		builder.append(byDay);
		builder.append(", dow=");
		builder.append(dow);
		builder.append(", dom=");
		builder.append(dom);
		builder.append("]");
		return builder.toString();
	}
	
	
	
	

}
