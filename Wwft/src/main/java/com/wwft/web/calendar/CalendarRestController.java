package com.wwft.web.calendar;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.wwft.service.calendar.EventService;
import com.wwft.service.domain.Event;

@RestController
@RequestMapping("/event/*")
public class CalendarRestController {
	
	
	@Autowired
	@Qualifier("eventServiceImpl")
	private EventService eventService;

	public CalendarRestController() {
		System.out.println(this.getClass());
	}
	
	@RequestMapping(value = "json/getEventList")
	public Map getEventList() throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("���Գ� ?");
		List<Event> event = eventService.getEventList();
		map.put("event", event);
		System.out.println(map.get("event"));
		
		
		return map;
	}
	
	@RequestMapping( value = "json/addEvent" , method = RequestMethod.POST)
	public Map addEvent( @RequestBody Event event) throws Exception{
		//public String addEvent( @ModelAttribute Event event) throws Exception{
		//@RequestBody(required = false)  Event event,
		
		System.out.println("addEvent: POST");
	
		System.out.println(event);
		
		eventService.addEvent(event);
		
		List<Event> EventList = new ArrayList<Event>();
		EventList=eventService.getEventList();
		
		for(Event e : EventList) {
			System.out.println(e);
			
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("abc", "����Ȯ��");
		
		return map;
	}
	@RequestMapping( value = "json/removeEvent" , method = RequestMethod.POST)
	public String removeEvent(@RequestBody Event event) throws Exception{
		System.out.println("remove = POST");
		//���ø�Ʈ
		System.out.println(event.getId());
		eventService.removeEvent(event.getId());
		
		
		return null;
	}
	@RequestMapping(value = "json/updateEvent", method = RequestMethod.POST)
	public String updateEvent(@RequestBody Event event) throws Exception{
		
		System.out.println("UPDATE POST");
		System.out.println("������ ���� : "+event);
		eventService.updateEvent(event);
		
		System.out.println("������ ���� : "+eventService.findEvent(event.getId()));
		
		return null;
	}
}