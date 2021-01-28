package com.wwft.service.tree;

import java.util.List;
import java.util.Map;

import com.wwft.service.domain.ActivityPoint;
import com.wwft.service.domain.BucketList;
import com.wwft.service.domain.Forest;
import com.wwft.service.domain.Profile;
import com.wwft.service.domain.Tree;
import com.wwft.service.domain.TreeForest;

public interface TreeService {
	
	public Tree getTree(int treeNo) throws Exception;
	
	public void addTree(Tree tree) throws Exception;
	
	public void removeTree(int treeNo) throws Exception;
	
	public void addTreeForest(TreeForest treeForest) throws Exception;

	public List<Profile> getProfileIntroduceList(int treeNo) throws Exception;
	
	public Tree getTreeRanking(int treeNo) throws Exception;
		
	public List<Forest> getForestList(int treeNo) throws Exception;

	public List<BucketList> getBucketList(int treeNo) throws Exception;
	
	public void addBucketList(BucketList bucketList) throws Exception;

	public void updateBucketList(BucketList bucketList) throws Exception;
	
	public void removeBucketList(BucketList bucketList) throws Exception;
	
	public void addFamilyMotto(Tree tree) throws Exception;
	
	public void updateFamilyMotto(Tree tree) throws Exception;
	
	public void removeFamilyMotto(Tree tree) throws Exception;
	

}
