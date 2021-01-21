package com.wwft.service.tree.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


import com.wwft.service.domain.Tree;
import com.wwft.service.tree.TreeDao;
import com.wwft.service.tree.TreeService;

@Service("treeServiceImpl")
public class TreeServiceImpl implements TreeService {

	@Autowired
	@Qualifier("treeDaoImpl")
	private TreeDao treeDao;
	
	public void setTreeDao(TreeDao treeDao) {
		System.out.println("::"+getClass()+".setTreeDao Call....");
		this.treeDao = treeDao;
	}
	
	
	//Constructor
	public TreeServiceImpl() {
		System.out.println("::"+getClass()+"default Constructor Call..");
	}

	@Override
	public Tree getTree(int treeNo) throws Exception {
		return treeDao.getTree(treeNo);
	}
	
	@Override
	public Tree getBucketList(int treeNo) throws Exception {
		return treeDao.getBucketList(treeNo);
	}


	@Override
	public void addBucketList(Tree tree) throws Exception {
		treeDao.addBucketList(tree);
		
	}


	@Override
	public void updateBucketList(Tree tree) throws Exception {
		treeDao.updateBucketList(tree);
		
	}


	@Override
	public void removeBucketList(Tree tree) throws Exception {
		treeDao.removeBucketList(tree);
		
	}


	@Override
	public void addFamilyMotto(Tree tree) throws Exception {
		treeDao.addFamilyMotto(tree);
		
	}


	@Override
	public void updateFamilyMotto(Tree tree) throws Exception {
		treeDao.updateFamilyMotto(tree);
		
	}

	@Override
	public void removeFamilyMotto(Tree tree) throws Exception {
		treeDao.removeFamilyMotto(tree);
	}
}		


	


	



	

