package com.wwft.service.noticemessage.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.wwft.common.web.Search;
import com.wwft.service.domain.NoticeMessage;
import com.wwft.service.noticemassage.NoticeMessageDao;
import com.wwft.service.noticemassage.NoticeMessageService;
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
	public void removeNoticeMessage(int noticeMessageNo) throws Exception {
		noticeMessageDao.removeNoticeMessage(noticeMessageNo);		
	}

	@Override
	public Map<String, Object> getTreeNoticeMessageList(int treeNo, int profileNo, Search search) throws Exception {
		// TODO Auto-generated method stub
		return noticeMessageDao.getTreeNoticeMessageList(treeNo, profileNo,search);
	}

	@Override
	public Map<String, Object> getForestNoticeMessageList(int forestNo, Search search) throws Exception {
		// TODO Auto-generated method stub
		return noticeMessageDao.getForestNoticeMessageList(forestNo, search);
	}

	@Override
	public int getTreeNoticeMessageStateCount(int treeNo, int profileNo) throws Exception {
		// TODO Auto-generated method stub
		return noticeMessageDao.getTreeNoticeMessageStateCount(treeNo, profileNo);
	}
	
	@Override
	public int getForestNoticeMessageStateCount(int forestNo) throws Exception {
		// TODO Auto-generated method stub
		return noticeMessageDao.getForestNoticeMessageStateCount(forestNo);
	}

	@Override
	public void updateTreeNoticeMessageState(int treeNo, int profileNo) throws Exception {
		noticeMessageDao.updateTreeNoticeMessageState(treeNo, profileNo);		
	}




	@Override
	public void updateForestNoticeMessageState(int forest) throws Exception {
		noticeMessageDao.updateForestNoticeMessageState(forest);
		
	}

}
