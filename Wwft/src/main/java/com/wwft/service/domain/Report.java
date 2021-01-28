package com.wwft.service.domain;

public class Report {

	public Report() {
		// TODO Auto-generated constructor stub
	}

	private int reportNo;
	private int reporterTreeNo;
	private int reportedPostNo;
	private int reportedTreeNo;
	private char reportType;
	private char reportState;
	private String reportRegDate;
	
	
	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}
	public int getReporterTreeNo() {
		return reporterTreeNo;
	}
	public void setReporterTreeNo(int reporterTreeNo) {
		this.reporterTreeNo = reporterTreeNo;
	}
	public int getReportedPostNo() {
		return reportedPostNo;
	}
	public void setReportedPostNo(int reportedPostNo) {
		this.reportedPostNo = reportedPostNo;
	}
	public int getReportedTreeNo() {
		return reportedTreeNo;
	}
	public void setReportedTreeNo(int reportedTreeNo) {
		this.reportedTreeNo = reportedTreeNo;
	}
	public char getReportType() {
		return reportType;
	}
	public void setReportType(char reportType) {
		this.reportType = reportType;
	}
	public char getReportState() {
		return reportState;
	}
	public void setReportState(char reportState) {
		this.reportState = reportState;
	}
	public String getReportRegDate() {
		return reportRegDate;
	}
	public void setReportRegDate(String reportRegDate) {
		this.reportRegDate = reportRegDate;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Report [reportNo=");
		builder.append(reportNo);
		builder.append(", reporterTreeNo=");
		builder.append(reporterTreeNo);
		builder.append(", reportedPostNo=");
		builder.append(reportedPostNo);
		builder.append(", reportedTreeNo=");
		builder.append(reportedTreeNo);
		builder.append(", reportType=");
		builder.append(reportType);
		builder.append(", reportState=");
		builder.append(reportState);
		builder.append(", reportRegDate=");
		builder.append(reportRegDate);
		builder.append("]");
		return builder.toString();
	}
	
	
}
