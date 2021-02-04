package com.wwft.service.admin.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.wwft.common.web.Search;
import com.wwft.service.admin.AdminDao;
import com.wwft.service.admin.AdminService;
import com.wwft.service.domain.Report;

@Repository("adminServiceImpl")
public class AdminServiceImpl implements AdminService {
	
	//Field
	@Autowired
	@Qualifier("adminDaoImpl")
	private AdminDao adminDao;
	
	public AdminServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void addReport(Report report) throws Exception {
		System.out.println("adminServiceImpl start..");
		
		adminDao.addReport(report);
		
	}

	@Override
	public Map<String, Object> getReportList(Search search) throws Exception {
		
		List<Report> list = adminDao.getReportList(search);
		int totalCount =  adminDao.getTotalCount(search);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list );
		map.put("totalCount", new Integer(totalCount));
		
		return map;
	}
	
	

}
