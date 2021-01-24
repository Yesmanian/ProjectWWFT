package com.wwft.service.domain;

import java.sql.Date;

public class ActivityPoint {

	private int activityPointNo;
	private int treeNo;
	private int point;
	private Date activityDate;
	private char activityType;
	
	
	public ActivityPoint() {
	}

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

	@Override
	public String toString() {
		return "ActivityPoint [activityPointNo=" + activityPointNo + ", treeNo=" + treeNo + ", point=" + point
				+ ", activityDate=" + activityDate + ", activityType=" + activityType + "]";
	}

	

	
}
	
	

	



	
	






	
