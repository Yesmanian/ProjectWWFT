package com.wwft.web.tree;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.wwft.service.domain.BucketList;
import com.wwft.service.tree.TreeService;

@RestController
@RequestMapping("/tree/*")
public class TreeRestController {
	
	@Autowired
	@Qualifier("treeServiceImpl")
	private TreeService treeService;
	
	public TreeRestController() {
		System.out.println("::"+this.getClass()+"TreeRestController Constructor");
	}
	
	@RequestMapping(value = "json/addBucketList", method = RequestMethod.POST)
	public String addBucketList(@RequestBody  BucketList bucketList) throws Exception{
		System.out.println("addBucketList : POST");
		System.out.println("»Æ¿Œ:"+bucketList);
	

		treeService.addBucketList(bucketList);
		
		return null;		
	}	
		
	@RequestMapping(value = "json/getBucketList", method = RequestMethod.POST)
	public Map<String, Object> getBucketList(@RequestBody HashMap<String, Object> treeMap) throws Exception{
		
		System.out.println("/tree/json/getBucketList : POST");
		
		Map<String, Object> map = new HashMap<String, Object>();
	
		 map.put("bucketList", treeService.getBucketList((Integer)treeMap.get("treeNo")));
	
			System.out.println("/tree/json/getBucketList End");

		return map;
		
		}
		
}
	
		 
		
		 
		
	

		

		


	
	

	
	
	
