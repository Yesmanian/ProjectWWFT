package com.wwft.web.tree;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	
	
	@RequestMapping(value = "getTree", method = RequestMethod.GET)
	public String getTree(@RequestParam("treeNo") int treeNo, Model model) throws Exception{
		System.out.println("/tree/getTree : GET");
		System.out.println("확인1:"+treeNo);
		Tree tree = treeService.getTree(treeNo);
		System.out.println("확인1:"+treeNo);
		System.out.println("확인:"+tree);
		
		
		model.addAttribute("tree", tree);
		
		
		
		return "/tree/getTree.jsp";
	}
	
	@RequestMapping( value = "addTree", method = RequestMethod.POST)
	public String  addTree(@ModelAttribute("tree") Tree tree) throws Exception{
		System.out.println("addTree : POST");
		System.out.println("addTree확인:"+tree);
		
		treeService.addTree(tree);
		
		return "forward:/tree/addTree.jsp";
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
	

	
	
		
		
		
	
	
}

	
	
