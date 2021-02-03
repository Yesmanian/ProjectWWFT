package com.wwft.service.noticemessage.test;



import java.util.Map;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wwft.common.web.Search;
import com.wwft.service.domain.NoticeMessage;
import com.wwft.service.noticemessage.NoticeMessageService;


/*
 *	FileName :  UserServiceTest.java
 * ㅇ JUnit4 (Test Framework) 과 Spring Framework 통합 Test( Unit Test)
 * ㅇ Spring 은 JUnit 4를 위한 지원 클래스를 통해 스프링 기반 통합 테스트 코드를 작성 할 수 있다.
 * ㅇ @RunWith : Meta-data 를 통한 wiring(생성,DI) 할 객체 구현체 지정
 * ㅇ @ContextConfiguration : Meta-data location 지정
 * ㅇ @Test : 테스트 실행 소스 지정
 */
@RunWith(SpringJUnit4ClassRunner.class)

//==> Meta-Data 를 다양하게 Wiring 하자...
//@ContextConfiguration(locations = { "classpath:config/context-*.xml" })
@ContextConfiguration	(locations = {	"classpath:config/context-common.xml",
																	"classpath:config/context-aspect.xml",
																	"classpath:config/context-mybatis.xml",
																	"classpath:config/context-transaction.xml" })
//@ContextConfiguration(locations = { "classpath:config/context-common.xml" })
public class NoticeMessageServiceTest {
	
	private static final Logger logger = Logger.getLogger(NoticeMessageServiceTest.class);

	//==>@RunWith,@ContextConfiguration 이용 Wiring, Test 할 instance DI
	@Autowired
	@Qualifier("noticeMessageServiceImpl")
	private NoticeMessageService noticeMessageService;
	
	
	
	@Test
	public void testSendNoticeMessage() throws Exception {
		
		NoticeMessage message = new NoticeMessage();
		message.setSender("진구네나무#노진구");//누가 댓글을 남겼는지
		message.setNoticeMessageType('0'); // 종류는 댓글=0 신고=1 초대=2 입장=3 4=수락함  조건이 타입 리시버 =  세션에있는 나무번호 3을 제외한 // 리시버는 숲 번호 타입이 3인것만  나무10 3번을제외  트리10   번호만 있으면되는   tree_no forest_no getNoticeMessage 하나로 하고 타입  
		message.setTreeNo(1); //1번나무에게
		message.setNoticeMessageDetail("게시글에 댓글이 달렸어요~");
		
		noticeMessageService.sendNoticeMessage(message);
		
		message.setSender("가을하늘공활한데숲");//숲아이디 
		message.setNoticeMessageType('2'); // 종류는 댓글=0 신고=1 초대=2 입장=3 4=수락함  조건이 타입 리시버 =  세션에있는 나무번호 3을 제외한 // 리시버는 숲 번호 타입이 3인것만  나무10 3번을제외  트리10   번호만 있으면되는   tree_no forest_no getNoticeMessage 하나로 하고 타입  
		message.setTreeNo(1); //1번나무에게
		message.setForestNo(1); // 숲번호
		message.setNoticeMessageDetail("초대 했습니다.");
		
		noticeMessageService.sendNoticeMessage(message);
		
//		message.setSender("진구네나무@userId");//나무 닉네임@나무아이디 
//		message.setNoticeMessageType('3'); // 종류는 댓글=0 신고=1 초대=2 입장요청=3 4=수락함  조건이 타입 리시버 =  세션에있는 나무번호 3을 제외한 // 리시버는 숲 번호 타입이 3인것만  나무10 3번을제외  트리10   번호만 있으면되는   tree_no forest_no getNoticeMessage 하나로 하고 타입  
//		message.setTreeNo(1); //1번나무가
//		message.setForestNo(1); // 1번 숲에게
//		message.setNoticeMessageDetail("우리숲에 입장을 요청 했습니다.");
		
		noticeMessageService.sendNoticeMessage(message);
		
//		NoticeMessage message = new NoticeMessage();
		message.setSender("관리자");//누가 댓글을 남겼는지
		message.setNoticeMessageType('1'); // 종류는 댓글=0 신고=1 초대=2 입장=3 4=수락함  조건이 타입 리시버 =  세션에있는 나무번호 3을 제외한 // 리시버는 숲 번호 타입이 3인것만  나무10 3번을제외  트리10   번호만 있으면되는   tree_no forest_no getNoticeMessage 하나로 하고 타입  
		message.setTreeNo(1); //1번나무에게
		message.setNoticeMessageDetail("게시글#12345번이 사이트정책(음란물)에 의해 삭제 되었습니다.현재 회원님의 누적된 위반행위 횟수는 (1)회 이며 누적위반행위 횟수가 5회일 시 계정이 정지 되오니 주의 바랍니다.");
		
		
		noticeMessageService.sendNoticeMessage(message);
		
		
	}
	//@Test
	public void testGetTreeNoticeMessage() throws Exception{
		
		BasicConfigurator.configure();
		logger.debug("[debug]'안녕'");
		
//		int treeNo = 1;
//	List<NoticeMessage> list =noticeMessageService.getTreeNoticeMessageList(treeNo);
//		
//	for (NoticeMessage noticeMessage : list) {
//		System.out.println(noticeMessage);
//		
//	}
//		
//		
	}
//	@Test
	public void testRemvoeNoticeMessage() throws Exception{
		
		NoticeMessage message = new NoticeMessage();
		message.setNoticeMessageNo(29);
		noticeMessageService.removeNoticeMessage(message.getNoticeMessageNo());
		
		
		
	}
	
//	@Test
	public void testGetTreeNoticeMessageList() throws Exception{
		Search search = new Search();
		
		search.setCurrentPage(1);
		search.setPageSize(3);
		
		int treeNo = 1;
		
		System.out.println(search.getEndRowNum());
		
	Map<String, Object> map =	noticeMessageService.getTreeNoticeMessageList(treeNo, search);
	BasicConfigurator.configure();
	logger.debug("[debug : list]"+map.get("list"));
		
	
		
		
		
	}
	
//	@Test
	public void testGetTreeNoticeMessageStateCount() throws Exception{
		
		
		int treeNo = 1;
		
		
	BasicConfigurator.configure();
	logger.debug("[debug : COUNT]"+noticeMessageService.getTreeNoticeMessageStateCount(treeNo));
		
		
	}
	
//	@Test
	public void testupdateTreeNoticeMessageState() throws Exception{
		
		
		int treeNo = 1;
		
		
	BasicConfigurator.configure();
	noticeMessageService.updateNoticeMessageState(treeNo);
	logger.debug("[debug : COUNT]"+noticeMessageService.getTreeNoticeMessageStateCount(treeNo));
		
		
	}
	
	
	

		

	
}