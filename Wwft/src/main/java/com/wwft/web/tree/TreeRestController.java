package com.wwft.web.tree;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.wwft.service.domain.BucketList;
import com.wwft.service.domain.Tree;
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
	
		

	@RequestMapping(value = "json/updateFamilyMotto", method = RequestMethod.POST)
	public Map	addFamilyMotto(@RequestBody Tree tree) throws Exception{
		
		System.out.println("/tree/json/updateFamilyMotto : POST");
		
		System.out.println(tree);
			
		treeService.updateFamilyMotto(tree);
	
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tree", tree);

			
			
		return map;
		
		}
		

	
}
	
		 
		
		 
		
	

		

		


	
	

	
	
	
