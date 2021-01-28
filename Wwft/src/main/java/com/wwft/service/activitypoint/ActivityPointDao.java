package com.wwft.service.activitypoint;

import java.time.LocalDateTime;

import com.wwft.service.domain.ActivityPoint;

public interface ActivityPointDao {
	
	public void addActivityPoint(ActivityPoint activityPoint) throws Exception;
	
	public int getActivityCount(ActivityPoint activityPoint) throws Exception;
	
	public int getActivityTotalPoint(int treeNo) throws Exception;
	


}
