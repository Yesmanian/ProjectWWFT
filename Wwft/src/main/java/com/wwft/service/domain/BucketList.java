package com.wwft.service.domain;

import java.sql.Date;

public class BucketList {
	
	private int bucketListNo;
	private String bucketListWriter;
	private String bucketListDetail;
	private Date bucketListRegDate;
	private char stampState;
	private int treeNo;
	
	public BucketList() {
		
	}

	public int getBucketListNo() {
		return bucketListNo;
	}

	public void setBucketListNo(int bucketListNo) {
		this.bucketListNo = bucketListNo;
	}

	public String getBucketListWriter() {
		return bucketListWriter;
	}

	public void setBucketListWriter(String bucketListWriter) {
		this.bucketListWriter = bucketListWriter;
	}

	public String getBucketListDetail() {
		return bucketListDetail;
	}

	public void setBucketListDetail(String bucketListDetail) {
		this.bucketListDetail = bucketListDetail;
	}

	public Date getBucketListRegDate() {
		return bucketListRegDate;
	}

	public void setBucketListRegDate(Date bucketListRegDate) {
		this.bucketListRegDate = bucketListRegDate;
	}

	public char getStampState() {
		return stampState;
	}

	public void setStampState(char stampState) {
		this.stampState = stampState;
	}

	public int getTreeNo() {
		return treeNo;
	}

	public void setTreeNo(int treeNo) {
		this.treeNo = treeNo;
	}

	@Override
	public String toString() {
		return "BucketList [bucketListNo=" + bucketListNo + ", bucketListWriter=" + bucketListWriter
				+ ", bucketListDetail=" + bucketListDetail + ", bucketListRegDate=" + bucketListRegDate
				+ ", stampState=" + stampState + ", treeNo=" + treeNo + "]";
	}


}	
	
	
	
	
	
	
	

