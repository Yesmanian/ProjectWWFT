package com.wwft.service.tree.impl;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.wwft.service.domain.ActivityPoint;
import com.wwft.service.domain.BucketList;
import com.wwft.service.domain.Forest;
import com.wwft.service.domain.Profile;
import com.wwft.service.domain.Tree;
import com.wwft.service.domain.TreeForest;
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
		System.out.println("::"+getClass()+":: default Constructor Call..");
	}



	@Override
	public Tree getUserTree(int treeNo) throws Exception {
		return treeDao.getUserTree(treeNo);
	
	}


	
	@Override
	public void addTree(Tree tree) throws Exception {
		treeDao.addTree(tree);
	}


	@Override
	public void removeTree(int treeNo) throws Exception {
		treeDao.removeTree(treeNo);
	}


	@Override
	public void addTreeForest(TreeForest treeForest) throws Exception {
		treeDao.addTreeForest(treeForest);
	}

	
	@Override
	public List<Profile> getProfileIntroduceList(int treeNo) throws Exception {
		return treeDao.getProfileIntroduceList(treeNo);
	}
	
	@Override
	public Tree getTreeRanking(int treeNo) throws Exception {
		return treeDao.getTreeRanking(treeNo);
	}
	
	@Override
	public List<Forest> getForestList(int treeNo) throws Exception {
		return treeDao.getForestList(treeNo);
	}


	@Override
	public void updateFamilyMotto(Tree tree) throws Exception {
		treeDao.updateFamilyMotto(tree);
		
	}



	@Override
	public Map<String, Object> getBucketList(int treeNo) throws Exception {
		
		List<BucketList> list = treeDao.getBucketList(treeNo);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		
		return map;
		
		
		
	}


	@Override
	public void addBucketList(BucketList bucketList) throws Exception {
		treeDao.addBucketList(bucketList);
	}


	@Override
	public void updateBucketList(int bucketListNo) throws Exception {
		treeDao.updateBucketList(bucketListNo);
	}


	@Override
	public void removeBucketList(int bucketListNo) throws Exception {
		treeDao.removeBucketList(bucketListNo);
	}


	@Override
	public Tree getFamilyMotto(int treeNo) throws Exception {
		return treeDao.getFamilyMotto(treeNo);
	}






	
}






	


	



	


