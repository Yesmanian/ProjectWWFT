package com.wwft.web.tree;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.ui.Model;
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
	public String addBucketList(@RequestBody  BucketList bucketList) throws Exception{
		System.out.println("addBucketList : POST");
		System.out.println("확인:"+bucketList);
	

		treeService.addBucketList(bucketList);
		
		return null;		
	}	
		
	@RequestMapping(value = "json/getBucketList", method = RequestMethod.POST)
	public Map<String, Object> getBucketList(@RequestBody HashMap<String, Object> treeMap) throws Exception{
		
		System.out.println("/tree/json/getBucketList : POST");
		System.out.println("확인1:"+treeMap.get("treeNo"));
		
		
		
		Map<String, Object> map = new HashMap<String, Object>();
	
		 map.put("bucketList", treeService.getBucketList(
		(Integer)treeMap.get("treeNo")));
		System.out.println("확인2:"+map);
		
		System.out.println("/tree/json/getBucketList END ");
		
		return map;
		
	}

		

		


	
	
}
	
	
	
