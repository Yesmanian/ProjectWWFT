package com.wwft.service.forest;

import com.wwft.service.domain.Forest;

public interface ForestDao {

	public Forest getForest(int forestNo) throws Exception;
	
	public void addForest(Forest forest) throws Exception;
	
}
