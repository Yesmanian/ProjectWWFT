package com.wwft.service.admin;

import java.util.Map;

import com.wwft.common.web.Search;
import com.wwft.service.domain.Report;

public interface AdminService {
	
	public void addReport(Report report) throws Exception;
	
	public Map<String, Object> getReportList(Search search) throws Exception;
}
