package com.wwft.web.noticemessage;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.wwft.common.web.Search;
import com.wwft.service.domain.NoticeMessage;
import com.wwft.service.noticemessage.NoticeMessageService;
import com.wwft.service.noticemessage.test.NoticeMessageServiceTest;
@RestController
@RequestMapping("/noticeMessage/*")
public class NoticeMessageRestController {
	@Autowired
	@Qualifier("noticeMessageServiceImpl")
	private NoticeMessageService noticeMessageService;
	
	private static final Logger lOGGER = Logger.getLogger(NoticeMessageRestController.class);

	
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	
	@RequestMapping(value = "json/sendNoticeMessage",method = RequestMethod.POST)
	public Map sendNoticeMessage(@RequestBody NoticeMessage message) throws Exception{
		
		noticeMessageService.sendNoticeMessage(message);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("abc", "리턴확인");
		
		return map;
	}
	
	@RequestMapping( value = "json/removeNoticeMessage" , method = RequestMethod.POST)
	public Map removeNoticeMessage(@RequestBody NoticeMessage message) throws Exception{
		
		noticeMessageService.removeNoticeMessage(message.getNoticeMessageNo());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("abc", "리턴확인");
		
		return map;
	}
	
	@RequestMapping( value = "json/treeNoticeMessageList/{treeNo}/{page}" , method = RequestMethod.GET)
	public Map treeNoticeMessageList(@PathVariable("treeNo") int treeNo, @PathVariable("page") int page) throws Exception{
		
		BasicConfigurator.configure();

		
		Search search = new Search();
		search.setCurrentPage(page);
		search.setPageSize(pageSize);
		lOGGER.debug("서치는"+search);
	
		Map<String, Object> map = noticeMessageService.getTreeNoticeMessageList(treeNo, search);
		lOGGER.debug("map의 리스트"+map.get("list"));
		
		return map;
	}
	
	@RequestMapping( value = "json/forestNoticeMessageList/{forestNo}/{page}" , method = RequestMethod.GET)
	public Map forestNoticeMessageList(@PathVariable("forestNo") int forestNo, @PathVariable("page") int page) throws Exception{
		
		BasicConfigurator.configure();

		
		Search search = new Search();
		search.setCurrentPage(page);
		search.setPageSize(pageSize);
		lOGGER.debug("서치는"+search);
	
		Map<String, Object> map = noticeMessageService.getForestNoticeMessageList(forestNo, search);
		lOGGER.debug("map의 리스트"+map.get("list"));
		
		return map;
	}


}

