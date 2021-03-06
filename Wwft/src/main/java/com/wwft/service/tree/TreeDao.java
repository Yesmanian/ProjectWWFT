package com.wwft.service.tree;


import java.util.List;
import java.util.Map;

import com.wwft.service.domain.BucketList;
import com.wwft.service.domain.Calender;
import com.wwft.service.domain.Forest;
import com.wwft.service.domain.Profile;
import com.wwft.service.domain.Tree;
import com.wwft.service.domain.TreeForest;

public interface TreeDao {
	
	public Tree getUserTree(int treeNo) throws Exception;
	
	public void addTree(Tree tree) throws Exception;
	
	public void removeTree(int treeNo) throws Exception;
	
	public void addTreeForest(TreeForest treeForest) throws Exception;
	
	public List<Profile> getProfileIntroduceList(int treeNo) throws Exception;
	
	public Tree getTreeRanking(int treeNo) throws Exception;
		
	public Tree getWorldTreeRanking(int treeNo) throws Exception;
	
	public Tree getNationTreeRanking(int treeNo) throws Exception;
	
	public List<Forest> getForestList(int treeNo) throws Exception;
	
	public Tree getTreeGrowth(int treeNo) throws Exception;
	
	public List<BucketList> getBucketList(int treeNo) throws Exception;
	
	public void addBucketList(BucketList bucketList) throws Exception;
	
	public void updateBucketList(int bucketListNo) throws Exception;
	
	public void removeBucketList(int bucketListNo) throws Exception;
	
	public Calender getCalender(int treeNo) throws Exception;

	public void searchTreeAndForest() throws Exception;
	
	public Tree getNoticeMessageBox(int treeNo) throws Exception;
	
	public Tree getFamilyMotto(int treeNo) throws Exception;
		
	public void updateFamilyMotto(Tree tree) throws Exception;
	
	public int getTreeNo(String userId) throws Exception;

	


	

	
	
}

	
	


