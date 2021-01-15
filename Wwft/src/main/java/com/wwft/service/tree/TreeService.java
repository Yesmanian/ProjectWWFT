package com.wwft.service.tree;

import com.wwft.service.domain.Tree;

public interface TreeService {
	
	public Tree getTree(int treeNo) throws Exception;
 
	public Tree getBucketList(int treeNo) throws Exception;
	
	public void addBucketList(Tree tree) throws Exception;

	public void updateBucketList(Tree tree) throws Exception;
	
	public void removeBucketList(Tree tree) throws Exception;
	
	public void addFamilyMotto(Tree tree) throws Exception;
	
	public void updateFamilyMotto(Tree tree) throws Exception;
	
	public void removeFamilyMotto(Tree tree) throws Exception;

}
