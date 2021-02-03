package com.wwft.web.admin;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wwft.common.web.Page;
import com.wwft.common.web.Search;
import com.wwft.service.admin.AdminService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	@Autowired
	@Qualifier("adminServiceImpl")
	private AdminService adminService;
	
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
	
	
	@RequestMapping(value = "getReportList")
	public ModelAndView getReportList(@ModelAttribute("search")Search search) throws Exception {
		
		System.out.println("/admin/getReportList Start...");
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		//Business Logic
		Map<String ,  Object> map = adminService.getReportList(search);
		
		Page resultPage = new Page(search.getCurrentPage(),
				((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		//role?
		
		//ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("forward:/admin/ReportList.jsp");
		modelAndView.addObject("list", map.get("list"));
		modelAndView.addObject("resultPage", resultPage);
		modelAndView.addObject("search", search);
		
		return modelAndView;
		
	}
	
	
	
}
