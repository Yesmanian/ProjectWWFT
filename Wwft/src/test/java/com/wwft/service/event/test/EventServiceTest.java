package com.wwft.service.event.test;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wwft.service.calendar.EventService;
import com.wwft.service.domain.Event;


/*
 *	FileName :  UserServiceTest.java
 * �� JUnit4 (Test Framework) �� Spring Framework ���� Test( Unit Test)
 * �� Spring �� JUnit 4�� ���� ���� Ŭ������ ���� ������ ��� ���� �׽�Ʈ �ڵ带 �ۼ� �� �� �ִ�.
 * �� @RunWith : Meta-data �� ���� wiring(����,DI) �� ��ü ����ü ����
 * �� @ContextConfiguration : Meta-data location ����
 * �� @Test : �׽�Ʈ ���� �ҽ� ����
 */
@RunWith(SpringJUnit4ClassRunner.class)

//==> Meta-Data �� �پ��ϰ� Wiring ����...
//@ContextConfiguration(locations = { "classpath:config/context-*.xml" })
@ContextConfiguration	(locations = {	"classpath:config/context-common.xml",
																	"classpath:config/context-aspect.xml",
																	"classpath:config/context-mybatis.xml",
																	"classpath:config/context-transaction.xml" })
//@ContextConfiguration(locations = { "classpath:config/context-common.xml" })
public class EventServiceTest {

	private static final Logger LOGGER = Logger.getLogger(EventServiceTest.class);
	
	
	//==>@RunWith,@ContextConfiguration �̿� Wiring, Test �� instance DI
	@Autowired
	@Qualifier("eventServiceImpl")
	private EventService eventService;

//	@Test
	public void testAddEvent() throws Exception {
		
		//Event event = new Event();
		/*
		 * long time = System.currentTimeMillis(); SimpleDateFormat transFormat = new
		 * SimpleDateFormat("yyyy-mm-dd HH:mm:ss"); String nowTime =
		 * transFormat.format(new Date(time)); System.out.println(nowTime);
		 */
		String date = "2012/01/14 10:48:43";
		//Date newDate = 
		Event event = new Event();
		event.setTreeNo(1);
		event.setTitle("�ֹݺ��׽�Ʈ");
		event.setStart("2021-01-21 00:30");
		event.setEnd("2021-01-21 01:30");
		event.setdDay("0");
		event.setEventDetail("�߰��Ǵ�����");
		event.setFreq("weekly");
		event.setByDay("byweekday");
		event.setDow("4");
		eventService.addEvent(event);
		
	}
	
	@Test
		public void testfindEvent() throws Exception {
		
		BasicConfigurator.configure();
		
		List<Event> eventList = new ArrayList<Event>();	
			
		int treeNo=1;
		 eventList = eventService.getEventList(treeNo);
		 
		 for(Event e : eventList) {
			 LOGGER.debug(e.toString());
		 }
			
		}
	
	
		//@Test
		public void testRemoveEvent() throws Exception {
			
			/*
			 * title: 'Conference', start: '2020-02-18', end: '2020-02-20'
			 */
			
			int treeNo=1;
			Map<String, Object> map = new HashMap<String, Object>();
			System.out.println("���Գ� ?");
			List<Event> event = eventService.getEventList(treeNo);
			map.put("events", event);
			System.out.println(map.get("events"));
			 
			 
			 for(Event e : event) {
				 System.out.println(e.toString());
				
			 }
			
			
				
			}
		
//		@Test
		public void testUpdateEvent() throws Exception {
			
			//Event event = new Event();
			/*
			 * long time = System.currentTimeMillis(); SimpleDateFormat transFormat = new
			 * SimpleDateFormat("yyyy-mm-dd HH:mm:ss"); String nowTime =
			 * transFormat.format(new Date(time)); System.out.println(nowTime);
			 */
			//String date = "2012/01/14 10:48:43";
			//Date newDate = 
			Event event = new Event();
			event.setId(203);
			event.setTreeNo(1);
			event.setTitle("Ÿ��Ʋ����");
			event.setStart("2021-01-24 00:30");
			event.setEnd("2021-01-24 01:30");
			event.setFreq("weekly");
			event.setByDay("byweekday");
			event.setDow("2");
			event.setEventDetail("���������");
//			eventService.addEvent(event);
			eventService.updateEvent(event);
			
			System.out.println(eventService.findEvent(203));
			
			
		}
		
		//@Test
		public void testFindEvent() throws Exception {
			
			//Event event = new Event();
			/*
			 * long time = System.currentTimeMillis(); SimpleDateFormat transFormat = new
			 * SimpleDateFormat("yyyy-mm-dd HH:mm:ss"); String nowTime =
			 * transFormat.format(new Date(time)); System.out.println(nowTime);
			 */
			//String date = "2012/01/14 10:48:43";
			//Date newDate = 
		Event event = eventService.findEvent(42);
		System.out.println(event);
			
		}

		

	
}