package com.wwft.web.forest;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.wwft.service.domain.Forest;
import com.wwft.service.domain.Post;
import com.wwft.service.domain.Profile;
import com.wwft.service.forest.ForestService;
import com.wwft.service.noticemessage.NoticeMessageService;
import com.wwft.service.post.PostService;
import com.wwft.service.tree.TreeService;

@Controller
@RequestMapping("/forest/*")
public class ForestController {
	
	
	@Autowired
	@Qualifier("forestServiceImpl")
	private ForestService forestService;
	
	@Autowired
	@Qualifier("noticeMessageServiceImpl")
	private NoticeMessageService noticeMessageService;
	
	@Autowired
	@Qualifier("postServiceImpl")
	private PostService postService;
	
	@Autowired
	@Qualifier("treeServiceImpl")
	private TreeService treeService;
	
	public ForestController() {
		System.out.println("::"+this.getClass()+"default ForestController Constructor..");
		
	}
	
	public StringBuffer postTime(Date timeValue) {
		Date today =  new Date();
		StringBuffer time = new StringBuffer();
		String temp = String.valueOf((Math.floor((today.getTime()-timeValue.getTime()) / 1000 / 60)));
		System.out.println(temp.substring(0, temp.length()-2));
		int betweenTime = Integer.parseInt(temp.substring(0, temp.length()-2));
		System.out.println(betweenTime);
		if(betweenTime < 1) {
			return time.append("just few seconds ago");
		}
		if(betweenTime < 60) {
			return time.append(betweenTime+"seconds ago");
		}
		
		int betweenTimeHour = Integer.parseInt(String.valueOf((int)Math.floor(betweenTime / 60)));
		System.out.println("betweenTimeHour "+betweenTimeHour);
		if (betweenTimeHour < 24) {
	        return time.append(betweenTimeHour+"hours ago");
	    }
		
		int betweenTimeDay = (int)Integer.parseInt(String.valueOf((int)Math.floor(betweenTime / 60 / 24)));
		System.out.println("betweenTimeDay "+betweenTimeDay);
	    if (betweenTimeDay < 365) {
	        return time.append(betweenTimeDay+"days ago");
	    }

	    return time.append(betweenTimeDay+"years ago");
	}
	
	
	
	
	@RequestMapping(value = "getForest", method = RequestMethod.GET)
	public ModelAndView getForset(@RequestParam("forestNo")int forestNo,HttpServletRequest req) throws Exception {
		
		System.out.println("/getForest Start...");
		
		
		//Business /Logic
		Forest forest = forestService.getForest(forestNo);
		
		//PostBusiness Logic
		Map<String, Object> postMap = new HashMap<String, Object>();
		postMap.put("postList", forestService.getPostList(forestNo));
		System.out.println(postMap.get("postList").toString());
		//Post Business Logic
		Map<String, Object> getPostMap = new HashMap<String, Object>();
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<HashMap<String, Object>> listPost = new ArrayList<HashMap<String,Object>>();
		for (int i = 0; i < ((List)((Map<String, Object>)postMap.get("postList")).get("list")).size(); i++) {
			System.out.println(((Post)((List)((Map<String, Object>)postMap.get("postList")).get("list")).get(i)).getPostNo());
			getPostMap = postService.getPost(((Post)((List)((Map<String, Object>)postMap.get("postList")).get("list")).get(i)).getPostNo());
			
			Post post = (Post)getPostMap.get("post");
			
			//settime
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			
			
			Date timeValue = transFormat.parse(post.getPostRegDate());
			System.out.println("timeValue"+timeValue);
			String postTime = postTime(timeValue).toString();
			post.setPostRegDate(postTime);
			//String betweenTime = Integer.toString(Integer.parseInt(String.valueOf((Math.floor((today.getTime()-timeValue.getTime()) / 1000 / 60)))));
			
			
			
			
			
			
			
			
			
			
			
			
			String treeName = treeService.getUserTree(post.getPostTreeNo()).getTreeName();
			System.out.println(treeName);
			List<String> fileList = (List<String>)getPostMap.get("fileList");
			
			resultMap.put("post"+i, post);
			resultMap.put("fileList"+i, fileList);
			
			HashMap<String, Object> listPostMap = new HashMap<String, Object>();
			listPostMap.put("listPostMapPost", post);
			listPostMap.put("listPostMapList", fileList);
			listPost.add(listPostMap);
			
			
			
		}
		int postSize = ((List)((Map<String, Object>)postMap.get("postList")).get("list")).size();
		
		
		
		//System.out.println(forest);
		Map<String, Object> map = forestService.getTreeList(forestNo);
		
		
		
		//ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/forest/getForest.jsp");
		modelAndView.addObject("list", map.get("list"));
		modelAndView.addObject("acceptTreeList", map.get("acceptTreeList"));
		modelAndView.addObject("forest", forest);
		modelAndView.addObject("postList", resultMap);
		modelAndView.addObject("postSize", postSize);
		modelAndView.addObject("listPost", listPost);
		
		
		System.out.println("/getForest End...");
		
		return modelAndView;
	}
	
	//추가로 나무숲 디비에
	@RequestMapping(value = "addForest", method = RequestMethod.POST)
	public ModelAndView addForest(@ModelAttribute("forest")Forest forest) throws Exception {
		
		System.out.println("/addForest Start...");
		
		//Business Logic
		System.out.println(forest);
		forestService.addForest(forest);
		
		
		System.out.println("/addForest End...");
		
		return null;
		
	}
	
	@RequestMapping(value = "getTreeList", method = RequestMethod.GET )
	public ModelAndView getTreeList(@RequestParam("forestNo")int forestNo) throws Exception{
		
		System.out.println("/forest/getTreeList start..");
		
		//Business Logic
		Map<String, Object> map = forestService.getTreeList(forestNo);
		System.out.println(forestNo);
		//ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/forest/getTreeList.jsp");
		modelAndView.addObject("list", map.get("list"));
		
		System.out.println("/forest/getTreeList End....");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "inviteTree",method = RequestMethod.POST)
	public ModelAndView inviteTree(@RequestParam("forestNo")int forestNo,HttpSession session,HttpServletRequest req) throws Exception {
		
		System.out.println("/forest/inviteTree Start...");
		;
		Profile profile = (Profile)session.getAttribute("profile"); 
		System.out.println(forestNo);
		System.out.println(profile.getProfileNo());
		String[] stringTreeNo = req.getParameterValues("checkbox");
		
		List<Integer> treeNo = new ArrayList<Integer>();
		
		for (int i = 0; i < stringTreeNo.length; i++) {
			treeNo.add(Integer.parseInt(stringTreeNo[i]));
			  
		}
		System.out.println(treeNo.toString());
		//Business Logic
		forestService.inviteTree(treeNo,forestNo,profile.getProfileNo());
		
		//ModelAndView
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/forest/getForest?forestNo="+forestNo+"&profileNo="+profile.getProfileNo());
		 
		
		return modelAndView;
	}
	
	
	
}
