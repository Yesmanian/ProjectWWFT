package com.wwft.service.calender;

import java.util.List;

import com.wwft.service.domain.Event;

public interface EventDao {
	
	public List<Event> getEventList() throws Exception;
	
	public void addEvent(Event event) throws Exception;
	
	public Event fineEvent(int id) throws Exception;
	
	public void removeEvent(int eventNo) throws Exception;

	public void updateEvent(Event event) throws Exception;
}
