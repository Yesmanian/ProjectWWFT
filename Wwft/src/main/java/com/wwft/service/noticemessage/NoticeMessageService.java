package com.wwft.service.noticemessage;

import java.util.List;
import java.util.Map;

import com.wwft.common.web.Search;
import com.wwft.service.domain.NoticeMessage;

public interface NoticeMessageService {
	
	public void sendNoticeMessage(NoticeMessage noticeMessage) throws Exception;
	
	public Map<String, Object> getTreeNoticeMessageList(int treeNo, Search search) throws Exception;
	
	public Map<String, Object> getForestNoticeMessageList(int forestNo, Search search) throws Exception;
	
	public void removeNoticeMessage(int noticeMessageNo) throws Exception;
	
	public int getTreeNoticeMessageStateCount(int treeNo) throws Exception;
	
	public void updateNoticeMessageState(int treeNo) throws Exception;

}
