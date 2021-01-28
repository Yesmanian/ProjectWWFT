package com.wwft.service.domain;

import java.sql.Date;

public class TreeForest {

	private int treeAndForestNo;
	private int forestNo;
	private int treeNo;
	private Date forestEnterRegDate;
	public int getTreeAndForestNo() {
		return treeAndForestNo;
	}
	public void setTreeAndForestNo(int treeAndForestNo) {
		this.treeAndForestNo = treeAndForestNo;
	}
	public int getForestNo() {
		return forestNo;
	}
	public void setForestNo(int forestNo) {
		this.forestNo = forestNo;
	}
	public int getTreeNo() {
		return treeNo;
	}
	public void setTreeNo(int treeNo) {
		this.treeNo = treeNo;
	}
	public Date getForestEnterRegDate() {
		return forestEnterRegDate;
	}
	public void setForestEnterRegDate(Date forestEnterRegDate) {
		this.forestEnterRegDate = forestEnterRegDate;
	}
	@Override
	public String toString() {
		return "TreeForest [treeAndForestNo=" + treeAndForestNo + ", forestNo=" + forestNo + ", treeNo=" + treeNo
				+ ", forestEnterRegDate=" + forestEnterRegDate + "]";
	}
	
	
	
}
