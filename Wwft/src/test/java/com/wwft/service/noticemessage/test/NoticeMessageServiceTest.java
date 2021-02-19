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
import com.wwft.service.post.PostService;


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
																	"classpath:config/context-mail.xml",
																	"classpath:config/context-transaction.xml" })
//@ContextConfiguration(locations = { "classpath:config/context-common.xml" })
public class NoticeMessageServiceTest {
	
	private static final Logger logger = Logger.getLogger(NoticeMessageServiceTest.class);

	//==>@RunWith,@ContextConfiguration �̿� Wiring, Test �� instance DI
	@Autowired
	@Qualifier("noticeMessageServiceImpl")
	private NoticeMessageService noticeMessageService;
	

	@Autowired
	@Qualifier("postServiceImpl")
	private PostService postService;
	
	
	
	@Test
	public void testSendNoticeMessage() throws Exception {
		
		int postNo = 1;
//		String postImage = postService.getPostFirstImage(postNo);
		
		NoticeMessage message = new NoticeMessage();
		
//		message.setSender("�����׳���#������¯");//���� ����� �������
//		message.setProfileNo(1);// ������ profileNo 
//		message.setNoticeMessageType('0'); // ������ ���=0 �Ű�=1 �ʴ��û=2 �����û=3  ������ Ÿ�� ���ù� =  ���ǿ��ִ� ������ȣ 3�� ������ // ���ù��� �� ��ȣ Ÿ���� 3�ΰ͸�  ����10 3��������  Ʈ��10   ��ȣ�� ������Ǵ�   tree_no forest_no getNoticeMessage �ϳ��� �ϰ� Ÿ��  
//		message.setTreeNo(1); //1����������
//		message.setPostNo(1);
//		message.setPostImage(postImage);
//		message.setNoticeMessageDetail("�Խñۿ� ����� �޷Ⱦ��~");
//		String detail = "�Խñ�#"+postNo+"���� ����Ʈ��å("+������+")�� ���� ���� �Ǿ����ϴ�.���� ȸ������ ������ �������� Ƚ���� (1)ȸ �̸� ������������ Ƚ���� 5ȸ�� �� ������ ���� �ǿ��� ���� �ٶ��ϴ�."
//		
//		noticeMessageService.sendNoticeMessage(message);
//		noticeMessageService.sendNoticeMessage(message);
//		noticeMessageService.sendNoticeMessage(message);
//		noticeMessageService.sendNoticeMessage(message);
		
//		message.setSender("ŷ����");//���� ����� �������
//		message.setProfileNo(2);// ������ profileNo 
//		message.setNoticeMessageType('0'); // ������ ���=0 �Ű�=1 �ʴ��û=2 �����û=3  ������ Ÿ�� ���ù� =  ���ǿ��ִ� ������ȣ 3�� ������ // ���ù��� �� ��ȣ Ÿ���� 3�ΰ͸�  ����10 3��������  Ʈ��10   ��ȣ�� ������Ǵ�   tree_no forest_no getNoticeMessage �ϳ��� �ϰ� Ÿ��  
//		message.setTreeNo(1); //1����������
//		message.setPostNo(1);
////		message.setPostImage(postImage);
//		message.setNoticeMessageDetail("�Խñۿ� ����� �޷Ⱦ��~");
//		
//		noticeMessageService.sendNoticeMessage(message);
//		noticeMessageService.sendNoticeMessage(message);
//		noticeMessageService.sendNoticeMessage(message);
		
		message.setSender("�����ϴð�Ȱ�ѵ���");//�����̵� 
		message.setNoticeMessageType('4'); // ������ ���=0 �Ű�=1 �ʴ�=2 ����=3 4=������  ������ Ÿ�� ���ù� =  ���ǿ��ִ� ������ȣ 3�� ������ // ���ù��� �� ��ȣ Ÿ���� 3�ΰ͸�  ����10 3��������  Ʈ��10   ��ȣ�� ������Ǵ�   tree_no forest_no getNoticeMessage �ϳ��� �ϰ� Ÿ��  
		message.setTreeNo(3); //1����������
		message.setForestNo(1); // ����ȣ
		message.setProfileNo(0);
		message.setNoticeMessageDetail("�ʴ� �߽��ϴ�.");
		
		noticeMessageService.sendNoticeMessage(message);
		
//		message.setSender("�����׳���@userId");//���� �г���@�������̵� 
//		message.setNoticeMessageType('3'); // ������ ���=0 �Ű�=1 �ʴ�=2 �����û=3 4=������  ������ Ÿ�� ���ù� =  ���ǿ��ִ� ������ȣ 3�� ������ // ���ù��� �� ��ȣ Ÿ���� 3�ΰ͸�  ����10 3��������  Ʈ��10   ��ȣ�� ������Ǵ�   tree_no forest_no getNoticeMessage �ϳ��� �ϰ� Ÿ��  
//		message.setTreeNo(1); //1��������
//		message.setForestNo(1); // 1�� ������
//		message.setNoticeMessageDetail("�츮���� ������ ��û �߽��ϴ�.");
//		
//		noticeMessageService.sendNoticeMessage(message);
		
		
		
		
//		NoticeMessage message = new NoticeMessage();
		message.setSender("������");//���� ����� �������
		message.setNoticeMessageType('1'); // ������ ���=0 �Ű�=1 �ʴ�=2 ����=3 4=������  ������ Ÿ�� ���ù� =  ���ǿ��ִ� ������ȣ 3�� ������ // ���ù��� �� ��ȣ Ÿ���� 3�ΰ͸�  ����10 3��������  Ʈ��10   ��ȣ�� ������Ǵ�   tree_no forest_no getNoticeMessage �ϳ��� �ϰ� Ÿ��  
		message.setTreeNo(3); //1����������
		message.setNoticeMessageDetail("�Խñ�#12345���� ����Ʈ��å(������)�� ���� ���� �Ǿ����ϴ�.���� ȸ������ ������ �������� Ƚ���� (1)ȸ �̸� ������������ Ƚ���� 5ȸ�� �� ������ ���� �ǿ��� ���� �ٶ��ϴ�.");
		
		
//		noticeMessageService.sendNoticeMessage(message);
		
		
	}
	//@Test
	public void testGetTreeNoticeMessage() throws Exception{
		
		BasicConfigurator.configure();
		logger.debug("[debug]'�ȳ�'");
		
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
		search.setPageSize(8);
		
		int treeNo = 1;
		int profileNo =1;
		System.out.println(search.getEndRowNum());
		
	Map<String, Object> map =	noticeMessageService.getTreeNoticeMessageList(treeNo, profileNo, search);
	BasicConfigurator.configure();
	logger.debug("[debug : list]"+map.get("list"));
		
	
		
		
		
	}
	
//	@Test
	public void testGetTreeNoticeMessageStateCount() throws Exception{
		
		
		int treeNo = 1;
		int profileNo = 1;
		
	BasicConfigurator.configure();
	logger.debug("[debug : COUNT]"+noticeMessageService.getTreeNoticeMessageStateCount(treeNo,profileNo));
		
		
	}
	
	//@Test
	public void testGetForstNoticeMessageStateCount() throws Exception{
		
		
		int forestNo = 1;
		
		
	BasicConfigurator.configure();
	logger.debug("[debug : COUNT]"+noticeMessageService.getForestNoticeMessageStateCount(forestNo));
		
		
	}
	
//	@Test
	public void testupdateTreeNoticeMessageState() throws Exception{
		
		
		int treeNo = 1;
		int profileNo = 1;
		
	BasicConfigurator.configure();
	noticeMessageService.updateTreeNoticeMessageState(treeNo,profileNo);
	logger.debug("[debug : COUNT]"+noticeMessageService.getTreeNoticeMessageStateCount(treeNo,profileNo));
		
		
	}
	
//	@Test
	public void testGetForestNoticeMessageList() throws Exception{
		Search search = new Search();
		
		search.setCurrentPage(1);
		search.setPageSize(3);
		
		int forest = 1;
		
		System.out.println(search.getEndRowNum());
		
	Map<String, Object> map =	noticeMessageService.getForestNoticeMessageList(forest, search);
	BasicConfigurator.configure();
	logger.debug("[debug : list]"+map.get("list"));
		
	
		
		
		
	}
	
	
	

		

	
}