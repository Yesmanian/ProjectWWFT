package com.wwft.web.noticemessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.wwft.common.web.Search;
import com.wwft.service.noticemassage.NoticeMessageService;

@Controller
@RequestMapping("/noticeMessage/*")
public class NoticeMessageController {
	
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	
	
	@Autowired
	@Qualifier("noticeMessageServiceImpl")
	private NoticeMessageService noticeMessageService;

	
	@RequestMapping(value = "getTreeNoticeMessageList", method = RequestMethod.GET)
	public String getTreeNoticeMessageList(@RequestParam("treeNo") int treeNo, @RequestParam("profileNo") int profieNo, Model model,@ModelAttribute("search") Search search) throws Exception{
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		System.out.println("��ġŰ����� ?"+search.getSearchKeyword());
		System.out.println("����:"+search.getEndRowNum()+"��ŸƮ:"+search.getStartRowNum());
		// Business logic ����
//		Map<String , Object> map=productService.getProductList(search);
//		
//		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
//		System.out.println(resultPage);
//		
//		
		model.addAttribute("noticeMessageList", noticeMessageService.getTreeNoticeMessageList(treeNo,profieNo, search));
		model.addAttribute("count", noticeMessageService.getTreeNoticeMessageStateCount(treeNo,profieNo));
		return "forward:/noticemessage/getNoticeMessage.jsp";
	}
	
	@RequestMapping(value = "getFoestNoticeMessageList", method = RequestMethod.GET)
	public String getForestNoticeMessageList(@RequestParam int forestNo, Model model,@ModelAttribute("search") Search search) throws Exception{
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		System.out.println("��ġŰ����� ?"+search.getSearchKeyword());
		System.out.println("����:"+search.getEndRowNum()+"��ŸƮ:"+search.getStartRowNum());
		// Business logic ����
//		Map<String , Object> map=productService.getProductList(search);
//		
//		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
//		System.out.println(resultPage);
//		
//		
		model.addAttribute("noticeMessageList", noticeMessageService.getForestNoticeMessageList(forestNo, search));
		model.addAttribute("count", noticeMessageService.getForestNoticeMessageStateCount(forestNo));
		return "forward:/noticemessage/getNoticeMessage.jsp";
	}
	
}
