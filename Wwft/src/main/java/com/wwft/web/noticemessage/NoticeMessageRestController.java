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
import com.wwft.service.post.PostService;
@RestController
@RequestMapping("/noticeMessage/*")
public class NoticeMessageRestController {
	@Autowired
	@Qualifier("noticeMessageServiceImpl")
	private NoticeMessageService noticeMessageService;
	
	@Autowired
	@Qualifier("postServiceImpl")
	private PostService postService;
	
	private static final Logger lOGGER = Logger.getLogger(NoticeMessageRestController.class);

	
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	
	@RequestMapping(value = "json/sendNoticeMessage",method = RequestMethod.POST)
	public Map sendNoticeMessage(@RequestBody NoticeMessage message) throws Exception{
		
		if(message.getNoticeMessageType()=='0') {
			lOGGER.debug("[Debug] Ÿ���� 0�̶��"+message.getNoticeMessageType() );
			message.setPostImage(postService.getPostFirstImage(message.getPostNo()));
		}else {
			lOGGER.debug("[Debug] �߸��� ���ڿ� ���Դϴ�");
		}
		noticeMessageService.sendNoticeMessage(message);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("abc", "����Ȯ��");
		
		return map;
	}
	
	@RequestMapping( value = "json/removeNoticeMessage" , method = RequestMethod.POST)
	public Map removeNoticeMessage(@RequestBody NoticeMessage message) throws Exception{
		
		noticeMessageService.removeNoticeMessage(message.getNoticeMessageNo());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("abc", "����Ȯ��");
		
		return map;
	}
	
	@RequestMapping( value = "json/treeNoticeMessageList/{treeNo}/{profileNo}/{page}" , method = RequestMethod.GET)
	public Map treeNoticeMessageList(@PathVariable("treeNo") int treeNo, @PathVariable("profileNo") int profileNo,
			@PathVariable("page") int page) throws Exception{
		
		BasicConfigurator.configure();

		
		Search search = new Search();
		search.setCurrentPage(page);
		search.setPageSize(pageSize);
		lOGGER.debug("��ġ��"+search);
	
		Map<String, Object> map = noticeMessageService.getTreeNoticeMessageList(treeNo,profileNo, search);
		lOGGER.debug("map�� ����Ʈ"+map.get("list"));
		
		return map;
	}
	
	@RequestMapping( value = "json/forestNoticeMessageList/{forestNo}/{page}" , method = RequestMethod.GET)
	public Map forestNoticeMessageList(@PathVariable("forestNo") int forestNo, @PathVariable("page") int page) throws Exception{
		
		BasicConfigurator.configure();

		
		Search search = new Search();
		search.setCurrentPage(page);
		search.setPageSize(pageSize);
		lOGGER.debug("��ġ��"+search);
	
		Map<String, Object> map = noticeMessageService.getForestNoticeMessageList(forestNo, search);
		lOGGER.debug("map�� ����Ʈ"+map.get("list"));
		
		return map;
	}


}

