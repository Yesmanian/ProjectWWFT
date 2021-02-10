package com.wwft.service.noticemassage;

import java.util.List;
import java.util.Map;

import com.wwft.common.web.Search;
import com.wwft.service.domain.NoticeMessage;

public interface NoticeMessageService {
	
	public void sendNoticeMessage(NoticeMessage noticeMessage) throws Exception;
	
	public Map<String, Object> getTreeNoticeMessageList(int treeNo, Search search) throws Exception;
	
	public Map<String, Object> getForestNoticeMessageList(int forestNo, Search search) throws Exception;
	
	
	public int getTreeNoticeMessageStateCount(int treeNo) throws Exception;
	
	public int getForestNoticeMessageStateCount(int forestNo) throws Exception;
	
	public void updateTreeNoticeMessageState(int treeNo) throws Exception;
	
	public void updateForestNoticeMessageState(int forest) throws Exception;
	
	public void removeNoticeMessage(int noticeMessageNo) throws Exception;
//	public int getTreeNoticeMessageTotalCount(int treeNo) throws Exception;
	
//	public int getForestNoticeMessageTotalCount(int forestNo) throws Exception;
	
	

}
