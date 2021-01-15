package com.wwft.service.calender;

import java.util.List;

import com.wwft.service.domain.Event;

public interface EventService {
	
	public List<Event> getEventList() throws Exception;
	
	public void addEvent(Event event) throws Exception;
	
	public Event findEvent(String title) throws Exception;
	
	public void removeEvent(int eventNo) throws Exception;
		
	

}
