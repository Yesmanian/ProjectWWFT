package com.wwft.service.noticemessage.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.wwft.common.web.Search;
import com.wwft.service.domain.NoticeMessage;
import com.wwft.service.domain.Tree;
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
	public void removeNoticeMessage(int noticeMessageNo) throws Exception {
		noticeMessageDao.removeNoticeMessage(noticeMessageNo);		
	}

	@Override
	public Map<String, Object> getTreeNoticeMessageList(int treeNo, Search search) throws Exception {
		// TODO Auto-generated method stub
		return noticeMessageDao.getTreeNoticeMessageList(treeNo,search);
	}

	@Override
	public Map<String, Object> getForestNoticeMessageList(int forestNo, Search search) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTreeNoticeMessageStateCount(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return noticeMessageDao.getTreeNoticeMessageStateCount(treeNo);
	}

	@Override
	public void updateNoticeMessageState(int treeNo) throws Exception {
		noticeMessageDao.updateNoticeMessageState(treeNo);		
	}

	@Override
	public List<Tree> acceptTreeList(int forestNo) throws Exception {
		
		return noticeMessageDao.acceptTreeList(forestNo);
	}

}
