package com.wwft.web.noticemessage;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.wwft.service.domain.NoticeMessage;
import com.wwft.service.noticemessage.NoticeMessageService;
@RestController
@RequestMapping("/noticeMessage/*")
public class NoticeMessageRestController {
	@Autowired
	@Qualifier("noticeMessageServiceImpl")
	private NoticeMessageService noticeMessageService;
	
	@RequestMapping( value = "json/removeNoticeMessage" , method = RequestMethod.POST)
	public Map removeNoticeMessage(@RequestBody NoticeMessage message) throws Exception{
		
		noticeMessageService.removeNoticeMessage(message.getNoticeMessageNo());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("abc", "리턴확인");
		
		return map;
	}

}

