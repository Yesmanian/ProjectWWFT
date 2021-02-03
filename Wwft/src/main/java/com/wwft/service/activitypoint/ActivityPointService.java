package com.wwft.service.activitypoint;

import com.wwft.service.domain.ActivityPoint;

public interface ActivityPointService {
	
	public void addActivityPoint(ActivityPoint activityPoint) throws Exception;

	public int getActivityCount(ActivityPoint activityPoint) throws Exception;
	
	public int getActivityTotalPoint(int treeNo) throws Exception;
	
	
}
