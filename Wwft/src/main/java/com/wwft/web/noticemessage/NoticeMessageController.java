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
import com.wwft.service.noticemessage.NoticeMessageService;

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

	
	@RequestMapping(value = "getNoticeMessageList", method = RequestMethod.GET)
	public String getTreeNoticeMessageList(@RequestParam int treeNo, Model model,@ModelAttribute("search") Search search) throws Exception{
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		System.out.println("서치키워드는 ?"+search.getSearchKeyword());
		System.out.println("엔드:"+search.getEndRowNum()+"ㅅ타트:"+search.getStartRowNum());
		// Business logic 수행
//		Map<String , Object> map=productService.getProductList(search);
//		
//		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
//		System.out.println(resultPage);
//		
//		
		model.addAttribute("noticeMessageList", noticeMessageService.getTreeNoticeMessageList(treeNo, search));
		model.addAttribute("count", noticeMessageService.getTreeNoticeMessageStateCount(treeNo));
		return "forward:/noticemessage/getNoticeMessage.jsp";
	}
	
}
