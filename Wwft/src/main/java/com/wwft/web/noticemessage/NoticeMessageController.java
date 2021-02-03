package com.wwft.web.noticemessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.wwft.service.noticemessage.NoticeMessageService;

@Controller
@RequestMapping("/noticeMessage/*")
public class NoticeMessageController {
	
	@Autowired
	@Qualifier("noticeMessageServiceImpl")
	private NoticeMessageService noticeMessageService;

	
	@RequestMapping(value = "getNoticeMessageList", method = RequestMethod.GET)
	public String getTreeNoticeMessageList(@RequestParam int treeNo, Model model) throws Exception{
		
		
		model.addAttribute("noticeMessageList", noticeMessageService.getTreeNoticeMessageList(treeNo));
		
		return "forward:/noticemessage/getNoticeMessage.jsp";
	}
	
}
