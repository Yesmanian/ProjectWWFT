package com.wwft.service.forest.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.wwft.service.domain.Forest;
import com.wwft.service.domain.Tree;
import com.wwft.service.forest.ForestDao;
import com.wwft.service.forest.ForestService;


@Repository("forestServiceImpl")
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

	@Override
	public void addForest(Forest forest) throws Exception {
		System.out.println("forestServiceImpl addForest");
		forestDao.addForest(forest);
	}

	@Override
	public Forest updateForestName(Forest forest) throws Exception {
		System.out.println("forestServiceImpl updateForestName");
		return forestDao.updateForestName(forest);
		
	}

	@Override
	public Map<String, Object> getTreeList(int forestNo) throws Exception {

		List<Tree> list = forestDao.getTreeList(forestNo);
		
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("list", list);
		
		return map;
	}

	@Override
	public Map<String, Object> getTreeRestList(int forestNo, int pageNumber) throws Exception {
		System.out.println("forestServiceImpl getTreeRestList");
		System.out.println(pageNumber);
		System.out.println(forestNo);
		
		List<Tree> list = forestDao.getTreeRestList(forestNo,pageNumber);
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return map;
	}

	@Override
	public Forest updateForestInform(Forest forest) throws Exception {
		System.out.println("forestServiceImpl updateForestInform");
		
		return forestDao.updateForestInform(forest);
	}

}
