package com.wwft.web.tree;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
		
		Tree tree = treeService.getTree(treeNo);
		
		model.addAttribute("tree", tree);
		
		
		return null;
	}
	
	@RequestMapping(value = "addFamilyMotto", method = RequestMethod.POST)
	public String addFamilyMotto(@ModelAttribute("tree")Tree tree) throws Exception{
		
		System.out.println("/tree/addFamilyMott : POST star");
		treeService.addFamilyMotto(tree);
		return null;
		
		
	}
	
	
	
}
