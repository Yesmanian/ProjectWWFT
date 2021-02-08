package com.wwft.web.calendar;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Conditional;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.wwft.service.calendar.EventService;
import com.wwft.service.domain.Event;
@Controller
@RequestMapping("/event/*")
public class CalendarController {
	
	private static final Logger lOGGER = Logger.getLogger(CalendarController.class);
	
	@Autowired
	@Qualifier("eventServiceImpl")
	private EventService eventService;
	
	
	
	public CalendarController() {
		
		System.out.println("캘린더 컨트롤"+this.getClass());
	}
	
	@RequestMapping( value = "getCalendar", method = RequestMethod.GET)
	public String getCalendar(@RequestParam int treeNo, HttpServletResponse response) throws Exception{
		
		BasicConfigurator.configure();
		lOGGER.debug("getCalendar: GET");




		
		return "forward:/calendar/getCalendar.jsp";
	}



	@RequestMapping( value = "addEvent", method = RequestMethod.POST)
	public String addEvent(@RequestBody() Event event) throws Exception{
		System.out.println("addEvent: POST");
		System.out.println(event);
		
		eventService.addEvent(event);
		
		return "/event/json/getEventList";
	}

}
