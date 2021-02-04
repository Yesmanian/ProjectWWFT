package com.wwft.web.calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Conditional;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wwft.service.calendar.EventService;
import com.wwft.service.domain.Event;
@Controller
@RequestMapping("/event/*")
public class CalendarController {
	
	@Autowired
	@Qualifier("eventServiceImpl")
	private EventService eventService;
	
	
	
	public CalendarController() {
		
		System.out.println("캘린더 컨트롤"+this.getClass());
	}



	@RequestMapping( value = "addEvent", method = RequestMethod.POST)
	public String addEvent(@RequestBody() Event event) throws Exception{
		System.out.println("addEvent: POST");
		System.out.println(event);
		
		eventService.addEvent(event);
		
		return "/event/json/getEventList";
	}

}
