package com.wwft.web.tree;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wwft.service.domain.BucketList;
import com.wwft.service.domain.Tree;
import com.wwft.service.tree.TreeService;


@Controller
@RequestMapping("/tree/*")
public class TreeController {
	
	@Autowired
	@Qualifier("treeServiceImpl")
	private TreeService treeService;
	
	public TreeController() {
		System.out.println("::"+this.getClass()+"default TreeController Constructor...");
	}

	
	
	@RequestMapping(value = "getUserTree", method = RequestMethod.GET)
	public String getUserTree(@RequestParam("treeNo")int treeNo, @RequestParam("userId")String userId,  Model model, HttpServletRequest req) throws Exception{
		
		System.out.println("/tree/getUserTree : GET");
	
		System.out.println("확인:"+treeNo);
		System.out.println("확인1:"+userId);
	
		
		Map<String, Object> map = treeService.getUserTree(treeNo, userId);
		System.out.println("확인2:"+map);

		
		model.addAttribute("map", map);
	
		
		return "/tree/getUserTree.jsp";
	}

		

	

	@RequestMapping(value = "removeTree", method = RequestMethod.GET )
	public String removeTree(@RequestParam("treeNo") int treeNo) throws Exception{
		System.out.println("removeTree : GET");
		System.out.println("removeTree 확인:"+treeNo);

		treeService.removeTree(treeNo);
		
		return "redirect:/tree/getTree.jsp";
	}
	
	@RequestMapping(value = "getBucketList", method = RequestMethod.GET)
	public String getBucketList(@RequestParam("treeNo")  int treeNo, Model model) throws Exception{
		
		System.out.println("getBucketList : GET");
		
		Map<String, Object> map = treeService.getBucketList(treeNo);
		System.out.println("확인");
		
		model.addAttribute("list", map.get("list"));
		
		return "/tree/getBucketList.jsp";
		
		
	}
	
	@RequestMapping(value="updateBucketListView", method = RequestMethod.GET)
	public String  updateBucketList(@RequestParam(value = "treeNo", required = false ) int treeNo, Model model)throws Exception{
		
		System.out.println("tree/updateBucketList : GET");
		System.out.println("11:"+treeNo);

		
		Map<String, Object> map =  treeService.getBucketList(treeNo);
		model.addAttribute("list", map.get("list"));
	
		
		System.out.println("업데이트 확인:"+map);
		
		return "/tree/updateBucketListView.jsp";
		
	}
	
	@RequestMapping(value = "updateBucketList", method = RequestMethod.POST)
	public String updateBukcetList(@RequestParam(value = "bucketListNo", required = false)int bucketListNo, @RequestParam("treeNo")int treeNo) throws Exception{
		
		System.out.println("tree/updateBucketList : POST");
		System.out.println("check1:"+bucketListNo);

		
		
		
		treeService.updateBucketList(bucketListNo);
		
		System.out.println("디버깅:"+bucketListNo);

		
		return "redirect:/tree/getBucketList?treeNo="+treeNo;
	
		
}
	
	
	
	@RequestMapping(value = "removeBucketList", method = RequestMethod.GET)
	public String removeBucketList(@RequestParam(value =   "bucketListNo", required = false) int bucketListNo, @RequestParam(value = "treeNo", required = false) int treeNo) throws Exception{
	
		 treeService.removeBucketList(bucketListNo);
		System.out.println("확인:"+bucketListNo);
		
		
		return "redirect:/tree/getBucketList?treeNo="+treeNo;
		
		
		
	}
	
	@RequestMapping(value = "getFamilyMotto", method = RequestMethod.GET)
	public String getFamilyMotto(@RequestParam("treeNo")int treeNo, Model model) throws Exception{
		
		System.out.println("tree/getFamilyMotto : GET");
		Tree tree = treeService.getFamilyMotto(treeNo);
		System.out.println("확인:"+treeNo);
		
		model.addAttribute("tree", tree);
		
		return "/tree/getFamilyMotto.jsp";
		
	}

	
	
		
		
		
	
	
}

	
	
