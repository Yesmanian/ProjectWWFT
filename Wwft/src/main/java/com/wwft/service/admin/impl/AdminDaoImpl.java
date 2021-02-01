package com.wwft.service.admin.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.wwft.service.admin.AdminDao;
import com.wwft.service.domain.Report;

@Repository("adminDaoImpl")
public class AdminDaoImpl implements AdminDao {

	//Field
		@Autowired
		@Qualifier("sqlSessionTemplate")
		private SqlSession sqlSession;
	
	
	public AdminDaoImpl() {
		// TODO Auto-generated constructor stub
	}


	@Override
	public void addReport(Report report) throws Exception {
		System.out.println("AdminDaoImpl Start..");
		
		sqlSession.insert("AdminMapper.addReport", report);
		//메세지함으로 보내야함
		
	}

}
