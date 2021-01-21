package com.wwft.web.forest;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.wwft.service.domain.Forest;
import com.wwft.service.forest.ForestService;

@RestController
@RequestMapping("/forest/*")
public class ForestRestController {

	//Field
	@Autowired
	@Qualifier("forestServiceImpl")
	private ForestService forestService;
	
	//Constructor
	public ForestRestController() {
		System.out.println("::ForestRestController default Constructor");
	}
	
	@RequestMapping(value = "json/updateForestName", method =RequestMethod.POST )
	public Map<String,Object> updateForestName(@RequestBody Forest forest) throws Exception {
		System.out.println("/forest/json/updateForestName start..");
		System.out.println(forest);
//		String changeForestName = (String)param.get("forestName");
//		String forestNo = (String)param.get("forestNo");
//		System.out.println(changeForestName);
		//Business Logic
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("forest", forestService.updateForestName(forest));
		System.out.println(map);
		return map;
		
	}
	
	@RequestMapping(value = "json/updateForestInform", method = RequestMethod.POST)
	public Map<String, Object> updateForestInform(@RequestBody Forest forest ) throws Exception{
		
		System.out.println("/forest/json/updateInformText start..");
		
		System.out.println(forest);
		//Business Logic
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("forest", forestService.updateForestInform(forest));
		System.out.println(map);
		
		
		return null;
		
	}
	
	
	
	
	@RequestMapping(value = "json/getTreeList", method = RequestMethod.POST)
	public Map<String ,Object> getTreeList(@RequestBody HashMap<String, Object> restMap) throws Exception {
		
		System.out.println("/forest/json/getTreeList start..");
		
		System.out.println(restMap.get("forestNo"));
		System.out.println(restMap.get("pageNumber"));
		
		//Business Logic
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("treeList", forestService.getTreeRestList(
			(Integer)restMap.get("forestNo"),(Integer)restMap.get("pageNumber")));
		System.out.println(map);
		
		
		
		System.out.println("/forest/json/getTreeList End..");
		return map;
		
	}
	
}
