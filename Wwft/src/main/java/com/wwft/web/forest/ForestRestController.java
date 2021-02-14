package com.wwft.web.forest;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
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
import com.wwft.service.domain.Post;
import com.wwft.service.forest.ForestService;
import com.wwft.service.post.PostService;
import com.wwft.service.tree.TreeService;

@RestController
@RequestMapping("/forest/*")
public class ForestRestController {

	//Field
	@Autowired
	@Qualifier("forestServiceImpl")
	private ForestService forestService;
	
	@Autowired
	@Qualifier("postServiceImpl")
	private PostService postService;
	
	@Autowired
	@Qualifier("treeServiceImpl")
	private TreeService treeService;
	
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
		
		
		return map;
		
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
	
	@RequestMapping(value = "json/getPostList", method = RequestMethod.POST)
	public Map<String ,Object> getPostList(@RequestBody HashMap<String, Object> restMap) throws Exception {
		
		System.out.println("/forest/json/getPostList start..");
		
		System.out.println(restMap.get("forestNo"));
		System.out.println(restMap.get("pageNumber"));
		
		//Business Logic
		Map<String, Object> postMap = new HashMap<String, Object>();
		postMap.put("postList", forestService.getPostRestList(
				(Integer)restMap.get("forestNo"),(Integer)restMap.get("pageNumber")));
		System.out.println(postMap);
		System.out.println(((List)((Map<String, Object>)postMap.get("postList")).get("list")).size());
		//Post Business Logic
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> resultMap = new HashMap<String, Object>();
		for (int i = 0; i < ((List)((Map<String, Object>)postMap.get("postList")).get("list")).size(); i++) {
			System.out.println(((Post)((List)((Map<String, Object>)postMap.get("postList")).get("list")).get(i)).getPostNo());
			map = postService.getPost(((Post)((List)((Map<String, Object>)postMap.get("postList")).get("list")).get(i)).getPostNo());
			
			Post post = (Post)map.get("post");
			String treeName = treeService.getUserTree(post.getPostTreeNo()).getTreeName();
			System.out.println(treeName);
			List<String> fileList = (List<String>)map.get("fileList");
			
			resultMap.put("post"+i, post);
			resultMap.put("fileList"+i, fileList);
			
		}
		System.out.println(resultMap);
		System.out.println("/forest/json/getPostList End..");
		return resultMap;
		
	}
	
	@RequestMapping(value = "json/getInviteTreeList", method = RequestMethod.POST)
	public Map<String ,Object> getInviteTreeList(@RequestBody HashMap<String, Object> restMap) throws Exception {
		
		System.out.println("/forest/json/getInviteTreeList start...");
		System.out.println(restMap.get("searchCondition"));
		System.out.println(restMap.get("forestNo"));
		//Business Logic
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("inviteTreeList",forestService.getInviteTreeList((Integer)restMap.get("forestNo"),(String)restMap.get("searchCondition")));
		
		System.out.println(map.get("inviteTreeList"));
		
		return map;
	}
	
}
