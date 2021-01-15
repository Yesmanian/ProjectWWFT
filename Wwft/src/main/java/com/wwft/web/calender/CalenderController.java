package com.wwft.web.calender;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Conditional;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wwft.service.calender.EventService;
import com.wwft.service.domain.Event;
@Controller
@RequestMapping("/event/*")
public class CalenderController {
	
	@Autowired
	@Qualifier("eventServiceImple")
	private EventService eventService;
	
	
	
	public CalenderController() {
		
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
