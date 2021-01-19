package com.wwft.web.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.wwft.service.domain.ImageAndLike;
import com.wwft.service.domain.Post;
import com.wwft.service.imageandlike.ImageAndLikeService;
import com.wwft.service.post.PostService;

@Controller
@RequestMapping("/post/*")
public class PostController {

	@Autowired
	@Qualifier("postServiceImpl")
	private PostService postService;

	@Autowired
	@Qualifier("imageAndLikeServiceImpl")
	private ImageAndLikeService imageAndLikeService;

	public PostController() {
		System.out.println(this.getClass() + "controller");
	}

	@RequestMapping(value = "addPost", method = RequestMethod.GET)
	public String addPost() throws Exception {
		System.out.println("/post/addPost : GET");

		return "redirect:/post/addPostView.jsp";
	}

	@RequestMapping(value = "addPost", method = RequestMethod.POST)
	public String addPost(@ModelAttribute("post") Post post, Model model, MultipartHttpServletRequest request,
			ImageAndLike imageAndLike) throws Exception {
		System.out.println("/post/addPost : POST");

		postService.addPost(post);

		/*
		 * List<String> fileList = imageAndLikeService.uploadFile(imageAndLike,
		 * request);
		 * 
		 * 
		 * 
		 * model.addAttribute("fileList", fileList);
		 */

		return "forward:/post/getPost.jsp";
	}

}
