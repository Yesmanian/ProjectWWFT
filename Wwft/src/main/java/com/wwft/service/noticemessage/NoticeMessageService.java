package com.wwft.service.noticemessage;

import java.util.List;

import com.wwft.service.domain.NoticeMessage;
import com.wwft.service.domain.Tree;

public interface NoticeMessageService {
	
	public void sendNoticeMessage(NoticeMessage noticeMessage) throws Exception;
	
	public List<NoticeMessage> getTreeNoticeMessageList(int treeNo) throws Exception;
	
	public List<NoticeMessage> getForestNoticeMessageList(int forestNo) throws Exception;
	
	public void removeNoticeMessage(int noticeMessageNo) throws Exception;
	
	public List<Tree> acceptTreeList(int forestNo) throws Exception;

}
