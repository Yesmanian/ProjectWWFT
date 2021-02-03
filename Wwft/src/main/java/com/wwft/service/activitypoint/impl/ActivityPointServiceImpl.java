package com.wwft.service.activitypoint.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.wwft.service.activitypoint.ActivityPointDao;
import com.wwft.service.activitypoint.ActivityPointService;
import com.wwft.service.domain.ActivityPoint;
@Service("activityPointServiceImpl")
public class ActivityPointServiceImpl implements ActivityPointService {
	
	@Autowired
	@Qualifier("activityPointDaoImpl")
	ActivityPointDao activityPointDao;

	public ActivityPointServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void addActivityPoint(ActivityPoint activityPoint) throws Exception {
		int count = activityPointDao.getActivityCount(activityPoint);
		System.out.println("���� �ۼ�Ƚ�� : "+count+"���� Ƚ�� :"+activityPoint.getLimitCount());
		
//		activityPointDao.addActivityPoint(activityPoint);	
		
		if (count < activityPoint.getLimitCount()) {
			activityPointDao.addActivityPoint(activityPoint);
		} else {
			System.out.println("������ Ȱ�緮 ��");
		}
	}

	@Override
	public int getActivityCount(ActivityPoint activityPoint) throws Exception {
		// TODO Auto-generated method stub
		return activityPointDao.getActivityCount(activityPoint);
	}

	@Override
	public int getActivityTotalPoint(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return activityPointDao.getActivityTotalPoint(treeNo);
	}


	

}
