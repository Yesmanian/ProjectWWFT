package com.wwft.service.calendar.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.wwft.service.calendar.EventDao;
import com.wwft.service.calendar.EventService;
import com.wwft.service.domain.Event;

@Service("eventServiceImpl")
public class EventServiceImple implements EventService {
	
	@Autowired
	@Qualifier("eventDaoImpl")
	private EventDao eventDao;

	public EventServiceImple() {
		System.out.println(getClass()+"default ������");
	}
	
	/*
	 * public void setEventDao(EventDao eventDao) { this.eventDao=eventDao; }
	 */

	@Override
	public List<Event> getEventList(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return eventDao.getEventList(treeNo);
	}

	@Override
	public void addEvent(Event event) throws Exception {
		eventDao.addEvent(event);

	}

	@Override
	public Event findEvent(int id) throws Exception {
		// TODO Auto-generated method stub
		return eventDao.fineEvent(id);
	}

	@Override
	public void removeEvent(int eventNo) throws Exception {
		eventDao.removeEvent(eventNo);
	}

	@Override
	public void updateEvent(Event event) throws Exception {
		eventDao.updateEvent(event);
		
	}

}
