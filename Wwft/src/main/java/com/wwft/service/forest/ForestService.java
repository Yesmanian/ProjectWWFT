package com.wwft.service.forest;

import java.util.Map;

import com.wwft.service.domain.Forest;

public interface ForestService {
	
	public Forest getForest(int forestNo) throws Exception;
	
	public void addForest(Forest forest) throws Exception;
	
	public Forest updateForestName(Forest forest) throws Exception;
	
	public Map<String, Object> getTreeList(int forestNo) throws Exception;
	
	public Map<String, Object> getTreeRestList(int forestNo,int pageNumber) throws Exception;
	
	public Forest updateForestInform(Forest forest) throws Exception;
}
