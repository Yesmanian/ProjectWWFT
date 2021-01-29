package com.wwft.service.domain;

public class TreeImage {
	
	private int treeImageNo;
	private char seedNo;
	private String treeImageName;
	private int activityPointStart;
	private int activityPointEnd;
	
	
	public TreeImage() {
		
	}


	public int getTreeImageNo() {
		return treeImageNo;
	}


	public void setTreeImageNo(int treeImageNo) {
		this.treeImageNo = treeImageNo;
	}


	public char getSeedNo() {
		return seedNo;
	}


	public void setSeedNo(char seedNo) {
		this.seedNo = seedNo;
	}


	public String getTreeImageName() {
		return treeImageName;
	}


	public void setTreeImageName(String treeImageName) {
		this.treeImageName = treeImageName;
	}


	public int getActivityPointStart() {
		return activityPointStart;
	}


	public void setActivityPointStart(int activityPointStart) {
		this.activityPointStart = activityPointStart;
	}


	public int getActivityPointEnd() {
		return activityPointEnd;
	}


	public void setActivityPointEnd(int activityPointEnd) {
		this.activityPointEnd = activityPointEnd;
	}


	@Override
	public String toString() {
		return "TreeImage [treeImageNo=" + treeImageNo + ", seedNo=" + seedNo + ", treeImageName=" + treeImageName
				+ ", activityPointStart=" + activityPointStart + ", activityPointEnd=" + activityPointEnd + "]";
	}     
}
	
	

