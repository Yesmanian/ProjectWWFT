package com.wwft.web.forest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wwft.service.domain.Forest;
import com.wwft.service.forest.ForestService;

//@Controller
@RequestMapping("/forest/*")
public class ForestController {
	
	
	@Autowired
	@Qualifier("forestServiceImpl")
	private ForestService forestService;
	
	public ForestController() {
		System.out.println("::"+this.getClass()+"default ForestController Constructor..");
		
	}
	
	@RequestMapping(value = "getForest", method = RequestMethod.GET)
	public String getForset(@ModelAttribute("forset")Forest forest) {
		
		System.out.println("/getForest Start...");
		
		
		
		
		
		
		System.out.println("/getForest End...");
		
		return null;
	}
	
}
