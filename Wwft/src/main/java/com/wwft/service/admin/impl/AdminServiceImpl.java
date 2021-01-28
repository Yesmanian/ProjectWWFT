package com.wwft.service.admin.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

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

}
