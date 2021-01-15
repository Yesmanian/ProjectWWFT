package com.wwft.service.tree;

import java.util.List;

import com.wwft.service.domain.Calender;
import com.wwft.service.domain.Forest;
import com.wwft.service.domain.Profile;
import com.wwft.service.domain.Tree;

public interface TreeDao {
	
	public Tree getTree(int treeNo) throws Exception;
	
	public List<Profile> getProfileIntroduce() throws Exception;
	
	public Tree getTreeRanking(int treeNo) throws Exception;
	
	public Tree getWorldTreeRanking(int treeNo) throws Exception;
	
	public Tree getNationTreeRanking(int treeNo) throws Exception;
	
	public List<Forest> getForestList() throws Exception;
	
	public Tree getTreeGrowth(int treeNo) throws Exception;
	
	public Tree getBucketList(int treeNo) throws Exception;
	
	public void addBucketList(Tree tree) throws Exception;
	
	public void updateBucketList(Tree tree) throws Exception;
	
	public void removeBucketList(Tree tree) throws Exception;
	
	public Calender getCalender(int treeNo) throws Exception;

	public void searchTreeAndForest() throws Exception;
	
	public Tree getNoticeMessageBox(int treeNo) throws Exception;
	
	public void addFamilyMotto(Tree tree) throws Exception;
	
	public void updateFamilyMotto(Tree tree) throws Exception;
	
	public void removeFamilyMotto(Tree tree) throws Exception;
}

	
	


