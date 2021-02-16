package com.wwft.web.post;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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

	@RequestMapping(value = "json/addPost", method = RequestMethod.POST)
	public int addPost(@RequestBody(required = false) Post post, HttpSession session) throws Exception {
		System.out.println("post:" + post.getPostDetail());
		System.out.println("/post/addPost : POST");
		System.out.println("postWriter:"+post.getPostWriter());
		/*
		 * post.setPostTreeNo(1); post.setPostWriter("√ √ ");
		 */
		
		Post rePost = new Post();
		rePost = postService.addPost(post);

		/*
		 * List<MultipartFile> files = request.getFiles("input_imgs"); for(int i=0;
		 * i<files.size(); i++) { System.out.println(files.get(i)); }
		
		 * @ModelAttribute("post") Post post, Model model, MultipartHttpServletRequest
		 * request, ImageAndLike imageAndLike
		 * postService.addPost(post);
		 * imageAndLikeService.addImageAndLikeList(imageAndLike, request);
		 * List<String> fileList = imageAndLikeService.uploadFile(imageAndLike,
		 * request);
		
		 * model.addAttribute("fileList", fileList);
		 */

		return rePost.getPostNo();
	}


}