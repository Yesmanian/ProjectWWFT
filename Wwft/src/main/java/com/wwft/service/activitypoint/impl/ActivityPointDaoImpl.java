package com.wwft.service.activitypoint.impl;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.wwft.service.activitypoint.ActivityPointDao;
import com.wwft.service.domain.ActivityPoint;
@Repository("activityPointDaoImpl")
public class ActivityPointDaoImpl implements ActivityPointDao {

	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	SqlSession sqlSession;
	
	public ActivityPointDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void addActivityPoint(ActivityPoint activityPoint) throws Exception {
		
		
		sqlSession.insert("activityPointMapper.addActivityPoint", activityPoint);
		
		
	}

	@Override
	public int getActivityCount(ActivityPoint activityPoint) throws Exception {
		
		return sqlSession.selectOne("activityPointMapper.getActivityCount", activityPoint);
	}

	@Override
	public int getActivityTotalPoint(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("activityPointMapper.getActivityTotalPoint", treeNo);
	}

}
