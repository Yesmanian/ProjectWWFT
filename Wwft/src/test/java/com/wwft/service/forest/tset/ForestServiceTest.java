package com.wwft.service.forest.tset;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wwft.service.calender.EventService;
import com.wwft.service.domain.Event;
import com.wwft.service.domain.Forest;
import com.wwft.service.forest.ForestService;


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
public class ForestServiceTest {

	//==>@RunWith,@ContextConfiguration �̿� Wiring, Test �� instance DI
	@Autowired
	@Qualifier("forestServiceImpl")
	private ForestService forestService;

	@Test
	public void testgetTreeList() throws Exception {
		
		//Event event = new Event();
		/*
		 * long time = System.currentTimeMillis(); SimpleDateFormat transFormat = new
		 * SimpleDateFormat("yyyy-mm-dd HH:mm:ss"); String nowTime =
		 * transFormat.format(new Date(time)); System.out.println(nowTime);
		 */
		Forest forest =  new Forest();
		forest.setForestNo(21);
		int pageNumber = 1;
		
		
		
		

		forestService.getTreeRestList(forest.getForestNo(), pageNumber);
		
	}
	
	
		
	
}