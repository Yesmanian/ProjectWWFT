package com.wwft.web.post;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.wwft.common.web.Page;

import com.wwft.common.web.Search;
import com.wwft.service.domain.ImageAndLike;
import com.wwft.service.domain.Post;
import com.wwft.service.domain.Report;
import com.wwft.service.post.PostService;

@RestController
@RequestMapping("/post/*")
public class PostRestController {

	@Autowired
	@Qualifier("postServiceImpl")
	private PostService postService;

	public PostRestController() {
		System.out.println(this.getClass() + "Restcontroller");
	}

	@Value("#{commonProperties['pageUnit']}")

	int pageUnit;

	@Value("#{commonProperties['pageSize']}")

	int pageSize;

	@RequestMapping(value = "json/addPost", method = RequestMethod.POST)
	public int addPost(@RequestBody(required = false) Post post, HttpSession session) throws Exception {
		System.out.println("post:" + post.getPostDetail());
		System.out.println("/post/addPost : POST");
		System.out.println("postWriter:" + post.getPostWriter());
		/*
		 * post.setPostTreeNo(1); post.setPostWriter("√ √ ");
		 */

		Post rePost = new Post();
		rePost = postService.addPost(post);

		/*
		 * List<MultipartFile> files = request.getFiles("input_imgs"); for(int i=0;
		 * i<files.size(); i++) { System.out.println(files.get(i)); }
		 * 
		 * @ModelAttribute("post") Post post, Model model, MultipartHttpServletRequest
		 * request, ImageAndLike imageAndLike postService.addPost(post);
		 * imageAndLikeService.addImageAndLikeList(imageAndLike, request); List<String>
		 * fileList = imageAndLikeService.uploadFile(imageAndLike, request);
		 * 
		 * model.addAttribute("fileList", fileList);
		 */

		return rePost.getPostNo();
	}

	/*
	 * @RequestMapping(value = "json/getSearchPostList", method =
	 * RequestMethod.POST) public Map getSearchPostList(@RequestBody PostForm post)
	 * throws Exception {
	 * 
	 * public Map getSearchPostList(@RequestParam(value="postTreeNo", required =
	 * false ) Integer postTreeNo , Search search
	 * ,@RequestParam(value="searchKeyword", required = false ) String
	 * searchKeyword, Model model,HttpSession session) throws Exception {
	 * System.out.println("getSearchPostList : "+ post.getPostTreeNo());
	 * System.out.println("getSearchPostList : "+
	 * post.getSearch().getSearchKeyword());
	 * 
	 * Search search = post.getSearch(); String searchKeyword =
	 * search.getSearchKeyword(); int postTreeNo = post.getPostTreeNo();
	 * if(search.getCurrentPage() ==0 ){ search.setCurrentPage(1); }
	 * search.setPageSize(pageSize); search.setSearchKeyword(searchKeyword);
	 * 
	 * Map<String , Object> map = postService.getPostList(search, postTreeNo);
	 * 
	 * List<Post> list = (List<Post>)map.get("list"); Page resultPage = new Page(
	 * search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(),
	 * pageUnit, pageSize);
	 * 
	 * //model.addAttribute("list", list); //model.addAttribute("resultPage",
	 * resultPage);
	 * 
	 * Map<String , Object> test = new HashMap<String, Object>(); test.put("list",
	 * list); test.put("resultPage", resultPage); return test; }
	 */
}