package com.wwft.service.noticemessage;

import com.wwft.service.domain.NoticeMessage;

public interface NoticemessageDao {
	
	public void sendNoticeMessage(NoticeMessage noticeMessage) throws Exception;

}
