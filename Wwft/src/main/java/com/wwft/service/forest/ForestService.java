package com.wwft.service.forest;

import java.util.List;
import java.util.Map;

import com.wwft.service.domain.Forest;

public interface ForestService {
	
	public Forest getForest(int forestNo) throws Exception;
	
	public void addForest(Forest forest) throws Exception;
	
	public Forest updateForestName(Forest forest) throws Exception;
	
	public Map<String, Object> getTreeList(int forestNo) throws Exception;
	
	public Map<String, Object> getTreeRestList(int forestNo,int pageNumber) throws Exception;

	public Map<String, Object> getPostRestList(int forestNo,int pageNumber) throws Exception;
	
	public Forest updateForestInform(Forest forest) throws Exception;
	
	public Map<String, Object> getInviteTreeList(int forestNo,String searchCondition) throws Exception;
	
	public void inviteTree(List<Integer> treeNo,int forestNo, int profileNo) throws Exception;
	
	public List<Forest> getForestList(int treeNo) throws Exception;
	
	public Map<String, Object> getPostList(int forestNo) throws Exception;
	
}
