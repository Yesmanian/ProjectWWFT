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
	public  Map<String, Object>	addBucketList(@RequestBody  BucketList bucketList) throws Exception{
		System.out.println("addBucketList : POST");
		System.out.println("확인:");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("bucketList", bucketList);
		System.out.println("확인2:"+map);
		
		treeService.addBucketList(bucketList);
		
		return map;
	}	
	
	@RequestMapping(value = "json/updateBucketList")
	public Map<String, Object> updateBucketList(@RequestBody BucketList bucketList) throws Exception{
		
		System.out.println("json/updateBucketList : START");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("bucketList", bucketList);
		treeService.updateBucketList(bucketList);
		
		return map;
		
	}
		
	@RequestMapping(value = "json/removeBucketList", method = RequestMethod.POST)
	public Map<String, Object> removeBucketList(@RequestBody BucketList bucketList) throws Exception{
		
		System.out.println("json/removeBucketList : START");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("bucketList", bucketList);
		System.out.println("확인:"+map);
		treeService.removeBucketList(bucketList);
		
		return map;
		
	}
		
		
	
		
	
		
	@RequestMapping(value = "json/getBucketList", method = RequestMethod.GET)
	public Map<String, Object> getBucketList(@RequestBody HashMap<String, Object> treeMap) throws Exception{
		
		System.out.println("/tree/json/getBucketList : GET");
		
		Map<String, Object> map = new HashMap<String, Object>();
	
		 map.put("bucketList", treeService.getBucketList((Integer)treeMap.get("treeNo")));
	
			System.out.println("/tree/json/getBucketList End");

		return map;
		
		}
		
}
	
		 
		
		 
		
	

		

		


	
	

	
	
	
