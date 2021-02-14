
package com.wwft.service.noticemessage;

import java.util.List;
import java.util.Map;

import com.wwft.common.web.Search;
import com.wwft.service.domain.NoticeMessage;

public interface NoticeMessageDao {
	
	public void sendNoticeMessage(NoticeMessage noticeMessage) throws Exception;
	
	public Map<String, Object> getTreeNoticeMessageList(int treeNo, int profileNo, Search search) throws Exception;
	
	public Map<String, Object> getForestNoticeMessageList(int forestNo, Search search) throws Exception;
	
//	public int getTreeNoticeMessageTotalCount(int treeNo) throws Exception;
	
	public int getTreeNoticeMessageStateCount(int treeNo, int profileNo) throws Exception;
//	
	public int getForestNoticeMessageStateCount(int forestNo) throws Exception;
//	public int getForestNoticeMessageTotalCount(int forestNo) throws Exception;
	
	public void updateTreeNoticeMessageState(int treeNo, int profileNo) throws Exception;
	
	public void updateForestNoticeMessageState(int forest) throws Exception;
	
	public void removeNoticeMessage(int noticeMessageNo) throws Exception;
	

}
