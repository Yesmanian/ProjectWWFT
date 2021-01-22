package com.wwft.web.forest;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.wwft.service.domain.Forest;
import com.wwft.service.forest.ForestService;

@Controller
@RequestMapping("/forest/*")
public class ForestController {
	
	
	@Autowired
	@Qualifier("forestServiceImpl")
	private ForestService forestService;
	
	public ForestController() {
		System.out.println("::"+this.getClass()+"default ForestController Constructor..");
		
	}
	
	@RequestMapping(value = "getForest", method = RequestMethod.GET)
	public ModelAndView getForset(@RequestParam("forestNo")int forestNo,HttpServletRequest req) throws Exception {
		
		System.out.println("/getForest Start...");
		
		
		//Business Logic
		Forest forest = forestService.getForest(forestNo);
		System.out.println(forest);
		
		//ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/forest/getForest.jsp");
		modelAndView.addObject("forest", forest);
		
		
		System.out.println("/getForest End...");
		
		return modelAndView;
	}
	
	//추가로 나무숲 디비에
	@RequestMapping(value = "addForest", method = RequestMethod.POST)
	public ModelAndView addForest(@ModelAttribute("forest")Forest forest) throws Exception {
		
		System.out.println("/addForest Start...");
		
		//Business Logic
		System.out.println(forest);
		forestService.addForest(forest);
		
		
		System.out.println("/addForest End...");
		
		return null;
		
	}
	
	@RequestMapping(value = "getTreeList", method = RequestMethod.GET )
	public ModelAndView getTreeList(@RequestParam("forestNo")int forestNo) throws Exception{
		
		System.out.println("/forest/getTreeList start..");
		
		//Business Logic
		Map<String, Object> map = forestService.getTreeList(forestNo);
		System.out.println(forestNo);
		//ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/forest/getTreeList.jsp");
		modelAndView.addObject("list", map.get("list"));
		
		System.out.println("/forest/getTreeList End....");
		
		return modelAndView;
	}
	
}
