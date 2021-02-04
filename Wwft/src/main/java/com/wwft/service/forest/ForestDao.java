package com.wwft.service.forest;

import java.util.List;
import java.util.Map;

import com.wwft.service.domain.Forest;
import com.wwft.service.domain.Post;
import com.wwft.service.domain.Tree;

public interface ForestDao {

	public Forest getForest(int forestNo) throws Exception;
	
	public void addForest(Forest forest) throws Exception;
	
	public Forest updateForestName(Forest forest) throws Exception;
	
	public List<Tree> getTreeList(int forestNo) throws Exception;
	
	public List<Tree> getTreeRestList(int forestNo, int pageNumber) throws Exception;
	
	public List<Post> getPostRestList(int forestNo, int pageNumber) throws Exception;
	
	public Forest updateForestInform(Forest forest) throws Exception;
	
	public List<Tree> getInviteTreeList(int forestNo,String searchCondition) throws Exception;
	
	public void inviteTree(List<Integer> treeNo,int forestNo,int profileNo) throws Exception;
}
