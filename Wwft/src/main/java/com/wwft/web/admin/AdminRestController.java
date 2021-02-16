package com.wwft.web.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.wwft.service.admin.AdminService;
import com.wwft.service.domain.NoticeMessage;
import com.wwft.service.domain.Report;
import com.wwft.service.noticemessage.NoticeMessageService;
import com.wwft.service.tree.TreeService;

@RestController
@RequestMapping("/admin/*")
public class AdminRestController {
	
	@Autowired
	@Qualifier("adminServiceImpl")
	private AdminService adminService;
	
	@Autowired
	@Qualifier("noticeMessageServiceImpl")
	private NoticeMessageService noticeMessageService;
	
	@Autowired
	@Qualifier("treeServiceImpl")
	private TreeService treeService;
	
	
	@RequestMapping(value = "json/addReport", method = RequestMethod.POST) 
	public String addReport(@RequestBody(required = false ) Report report) throws Exception { System.out.println(report.getReportedPostNo());
	 System.out.println(report.getReportedTreeNo());//1
	 System.out.println(report.getReporterTreeNo());//2
	 System.out.println(report.getReportType());//3
	 
	 report.setReportedPostNo(1);
	 report.setReportState('0');
	 
	 
	 
	 //Business Logic
	 adminService.addReport(report);
	 //noticeMessage Logic
	 //������ �̸� �޾ƿ��� �Ƹ��� �������� ������
	 NoticeMessage noticeMessage =  new NoticeMessage();
	 noticeMessage.setNoticeMessageDetail("�Խñ� �Ű� �����Ǿ����ϴ�");
	 noticeMessage.setNoticeMessageState('0');
	 noticeMessage.setNoticeMessageType('1');
	 //noticeMessage.setPostNo(report.getReportedPostNo());
	 //noticeMessage.setReceiver(report.getReportedTreeNo()+"����");
	 //noticeMessage.setTreeNo(report.getReporterTreeNo());
	 noticeMessage.setPostNo(1);
	 noticeMessage.setReceiver("��𳪹�@����");
	 noticeMessage.setTreeNo(2);
	 
	 noticeMessageService.sendNoticeMessage(noticeMessage);

	  
	 
	  return null; 
	  
	
	}
	
	
}
