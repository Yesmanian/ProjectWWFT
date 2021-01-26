package com.wwft.service.forest;

import java.util.List;

import com.wwft.service.domain.Forest;
import com.wwft.service.domain.Tree;

public interface ForestDao {

	public Forest getForest(int forestNo) throws Exception;
	
	public void addForest(Forest forest) throws Exception;
	
	public Forest updateForestName(Forest forest) throws Exception;
	
	public List<Tree> getTreeList(int forestNo) throws Exception;
	
	public List<Tree> getTreeRestList(int forestNo, int pageNumber) throws Exception;
	
	public Forest updateForestInform(Forest forest) throws Exception;
}
