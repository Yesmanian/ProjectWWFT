package com.wwft.service.calender.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.wwft.service.calender.EventDao;
import com.wwft.service.domain.Event;

@Repository("eventDaoImple")
public class EventDaoImple implements EventDao {
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	SqlSession sqlSession;
	
	public EventDaoImple() {
		System.out.println(getClass()+"default »ý¼ºÀÚ");
	}

	/*
	 * public void setSqlSession(SqlSession sqlSession) {
	 * System.out.println("::"+getClass()+"setSql()"); this.sqlSession=sqlSession; }
	 */
	@Override
	public List<Event> getEventList() throws Exception {
		
		return sqlSession.selectList("eventMapper.getEventList");
	}

	@Override
	public void addEvent(Event event) throws Exception {
		sqlSession.insert("eventMapper.addEvent", event);
		
		
	}

	@Override
	public Event fineEvent(int id) throws Exception {
		// TODO Auto-generated method stub
		
		return sqlSession.selectOne("eventMapper.findEvent", id);
	}

	@Override
	public void removeEvent(int eventNo) throws Exception {
		sqlSession.delete("eventMapper.removeEvent", eventNo );
		
	}

	@Override
	public void updateEvent(Event event) throws Exception {
		sqlSession.update("eventMapper.updateEvent", event);
		
	}

}
