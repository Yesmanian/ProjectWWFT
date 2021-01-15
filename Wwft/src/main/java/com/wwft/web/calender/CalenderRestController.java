package com.wwft.web.calender;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.wwft.service.calender.EventService;
import com.wwft.service.domain.Event;

@RestController
@RequestMapping("/event/*")
public class CalenderRestController {
	
	
	@Autowired
	@Qualifier("eventServiceImple")
	private EventService eventService;

	public CalenderRestController() {
		System.out.println(this.getClass());
	}
	
	@RequestMapping(value = "json/getEventList")
	public Map getEventList() throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("들어왔나 ?");
		List<Event> event = eventService.getEventList();
		map.put("event", event);
		System.out.println(map.get("event"));
		
		
		return map;
	}
	
	@RequestMapping( value = "json/addEvent", method = RequestMethod.POST)
	public String addEvent(@RequestBody() Event event) throws Exception{
		System.out.println("addEvent: POST");
		System.out.println(event);
		
		eventService.addEvent(event);
		
		return null;
	}

}
