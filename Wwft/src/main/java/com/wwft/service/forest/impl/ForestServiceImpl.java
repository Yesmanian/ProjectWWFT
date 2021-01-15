package com.wwft.service.forest.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.wwft.service.domain.Forest;
import com.wwft.service.forest.ForestDao;
import com.wwft.service.forest.ForestService;


@Repository("ForestServiceImpl")
public class ForestServiceImpl implements ForestService {

	
	//Field
	@Autowired
	@Qualifier("forestDaoImpl")
	private ForestDao forestDao;
	
	//Setter
	public void setForestDao(ForestDao forestDao) {
		System.out.println("::"+getClass()+"setForestDao() Call..");
		this.forestDao = forestDao;
	}
	
	//Constructor
	public ForestServiceImpl() {
		System.out.println("::"+getClass()+"default Constructor..");
	}

	@Override
	public Forest getForest(int forestNo) throws Exception {
		System.out.println("forestServiceImpl getForest");
		return forestDao.getForest(forestNo);
	}

}
