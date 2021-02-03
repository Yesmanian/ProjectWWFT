package com.wwft.service.noticemessage.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.wwft.service.domain.NoticeMessage;
import com.wwft.service.noticemessage.NoticeMessageDao;
import com.wwft.service.noticemessage.NoticeMessageService;
@Service("noticeMessageServiceImpl")
public class NoticeMessageServiceImpl implements NoticeMessageService {

	@Autowired
	@Qualifier("noticeMessageDaoImpl")
	NoticeMessageDao noticeMessageDao;
	
	public NoticeMessageServiceImpl() {
		System.out.println("메시지서비스임플 인젝션");
			}

	@Override
	public void sendNoticeMessage(NoticeMessage noticeMessage) throws Exception {
		noticeMessageDao.sendNoticeMessage(noticeMessage);		
	}

	@Override
	public List<NoticeMessage> getTreeNoticeMessageList(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return noticeMessageDao.getTreeNoticeMessageList(treeNo);
	}

	@Override
	public List<NoticeMessage> getForestNoticeMessageList(int forestNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeNoticeMessage(int noticeMessageNo) throws Exception {
		noticeMessageDao.removeNoticeMessage(noticeMessageNo);		
	}

}
