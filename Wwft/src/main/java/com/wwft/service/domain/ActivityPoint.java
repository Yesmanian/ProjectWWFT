package com.wwft.service.domain;

import java.sql.Date;

public class ActivityPoint {

	private int activityPointNo;
	private int treeNo;
	private int point;
	private Date activityDate;
	private char activityType;
	private int targetNo;
	private int limitCount;
	public int getActivityPointNo() {
		return activityPointNo;
	}
	public void setActivityPointNo(int activityPointNo) {
		this.activityPointNo = activityPointNo;
	}
	public int getTreeNo() {
		return treeNo;
	}
	public void setTreeNo(int treeNo) {
		this.treeNo = treeNo;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public Date getActivityDate() {
		return activityDate;
	}
	public void setActivityDate(Date activityDate) {
		this.activityDate = activityDate;
	}
	public char getActivityType() {
		return activityType;
	}
	public void setActivityType(char activityType) {
		this.activityType = activityType;
	}
	public int getTargetNo() {
		return targetNo;
	}
	public void setTargetNo(int targetNo) {
		this.targetNo = targetNo;
	}
	public int getLimitCount() {
		return limitCount;
	}
	public void setLimitCount(int limitCount) {
		this.limitCount = limitCount;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ActivityPoint [activityPointNo=");
		builder.append(activityPointNo);
		builder.append(", treeNo=");
		builder.append(treeNo);
		builder.append(", point=");
		builder.append(point);
		builder.append(", activityDate=");
		builder.append(activityDate);
		builder.append(", activityType=");
		builder.append(activityType);
		builder.append(", targetNo=");
		builder.append(targetNo);
		builder.append(", limitCount=");
		builder.append(limitCount);
		builder.append("]");
		return builder.toString();
	}
	
	
	
	
	

	
}
	
	

	



	
	






	
