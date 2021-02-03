package com.wwft.service.admin;

import java.util.List;

import com.wwft.common.web.Search;
import com.wwft.service.domain.Report;

public interface AdminDao {
	
	public void addReport(Report report) throws Exception;
	
	public List<Report> getReportList(Search search) throws Exception;
	
	public int	getTotalCount(Search search) throws Exception;
}
