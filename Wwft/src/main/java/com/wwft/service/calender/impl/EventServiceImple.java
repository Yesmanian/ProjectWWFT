package com.wwft.service.calender.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.wwft.service.calender.EventDao;
import com.wwft.service.calender.EventService;
import com.wwft.service.domain.Event;

@Service("eventServiceImple")
public class EventServiceImple implements EventService {
	
	@Autowired
	@Qualifier("eventDaoImple")
	private EventDao eventDao;

	public EventServiceImple() {
		System.out.println(getClass()+"default »ý¼ºÀÚ");
	}
	
	/*
	 * public void setEventDao(EventDao eventDao) { this.eventDao=eventDao; }
	 */

	@Override
	public List<Event> getEventList() throws Exception {
		// TODO Auto-generated method stub
		return eventDao.getEventList();
	}

	@Override
	public void addEvent(Event event) throws Exception {
		eventDao.addEvent(event);

	}

	@Override
	public Event findEvent(String title) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeEvent(int eventNo) throws Exception {
		eventDao.removeEvent(eventNo);
	}

}
