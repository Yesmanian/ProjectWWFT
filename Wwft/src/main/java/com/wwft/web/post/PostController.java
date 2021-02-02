package com.wwft.web.post;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
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

	public PostController() {
		System.out.println(this.getClass() + "controller");
	}

	@RequestMapping(value = "addPostView", method = RequestMethod.GET)
	public String addPostView() throws Exception {
		System.out.println("/post/addPostView : GET");

		return "redirect:/post/addPostView.jsp";
	}

	/*
	 * //@RequestMapping(value = "json/addPost", method = RequestMethod.POST) public
	 * int addPost(@RequestBody(required = false ) Post post ) throws Exception {
	 * System.out.println("post:"+post.getPostDetail());
	 * System.out.println("/post/addPost : POST"); post.setPostTreeNo(1);
	 * post.setPostWriter("초초");
	 * 
	 * 
	 * Post rePost = new Post(); rePost = postService.addPost(post);
	 * 
	 * 
	 * 
	 * List<MultipartFile> files = request.getFiles("input_imgs"); for(int i=0;
	 * i<files.size(); i++) { System.out.println(files.get(i)); }
	 * 
	 * 
	 * 
	 * @ModelAttribute("post") Post post, Model model, MultipartHttpServletRequest
	 * request, ImageAndLike imageAndLike
	 * 
	 * 
	 * 
	 * 
	 * postService.addPost(post);
	 * imageAndLikeService.addImageAndLikeList(imageAndLike, request);
	 * 
	 * 
	 * List<String> fileList = imageAndLikeService.uploadFile(imageAndLike,
	 * request);
	 * 
	 * 
	 * 
	 * model.addAttribute("fileList", fileList);
	 * 
	 * 
	 * return rePost.getPostNo(); }
	 */
	@RequestMapping(value = "addPost", method = RequestMethod.POST)
	public String addPost(@ModelAttribute("imageAndLike") ImageAndLike imageAndLike, Model model, MultipartHttpServletRequest request, int postNo)
			throws Exception {
		System.out.println("controller"+request.getFiles("input_imgs"));
		postService.uploadFile(imageAndLike, request);
		System.out.println("addPost controller애서imageAndLike확인중"+imageAndLike);
		/*
		 * List<MultipartFile> files = request.getFiles("input_imgs");
		 * 
		 * for(int i =0; i < files.size(); i++) { String random =
		 * UUID.randomUUID().toString().replaceAll(",", ""); //원래 파일명 String
		 * originalImageName = files.get(i).getOriginalFilename();
		 * System.out.println("기본 파일명:"+originalImageName);
		 * 
		 * // 저장되는 파일이름 String saveImageName = random + "_"+ originalImageName;
		 * System.out.println("저장 파일명"+saveImageName); }
		 */
		
		//System.out.println("dddd"+request.getFileNames().toString());
		
		/*
		 * Map<String, Object> map = postService.getPost(postNo);
		 * 
		 * List<String> fileList = (List<String>)map.get("fileList"); Post post =
		 * (Post)map.get("post"); //int postNo = post.getPostNo();
		 * 
		 * post.setPostRegDate(post.getPostRegDate().substring(0, 10)); // String path =
		 * "C:\\Users\\dkgur\\git\\ProjectWWFT\\Wwft\\WebContent\\resources\\images\\uploadFiles\\";
		 * for(int i =0; i < fileList.size(); i++) {
		 * System.out.println("파일확인하기"+fileList.get(i)); }
		 * 
		 * //System.out.println("파일확인하기"+fileList.get(0));
		 * System.out.println("이미지확인"+fileList); System.out.println("post확인"+post);
		 * model.addAttribute("fileList", fileList); model.addAttribute("post", post);
		 */
		
		//return null;
		// return "forward:/post/getPost.jsp"; 
		 return "redirect:/post/getPost?postNo="+postNo; 
	}

	
	@RequestMapping(value="getPost", method=RequestMethod.GET)
	public String getPost( @RequestParam("postNo") int postNo, Model model, HttpServletRequest request ) throws Exception {
		
		System.out.println("/post/getPost : GET");
		Map<String, Object> map = postService.getPost(postNo);
		
		Post post = (Post)map.get("post");
		List<String> fileList = (List<String>)map.get("fileList");
		
		System.out.println(post);
		System.out.println(fileList);
		
		post.setPostRegDate(post.getPostRegDate().substring(0, 10));
		
		System.out.println("getPost 확인중 fileList사이즈:"+fileList.size());
		model.addAttribute("fileList", fileList);
		model.addAttribute("post", post);
		
		return "forward:/post/getPost.jsp";
	}
	
	
	
	
	
	
	
}
