package com.wwft.web.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.wwft.service.domain.ImageAndLike;
import com.wwft.service.domain.Post;
import com.wwft.service.imageandlike.ImageAndLikeService;
import com.wwft.service.post.PostService;


public class UploadController {

	@RequestMapping(value= "/uploadForm", method = RequestMethod.GET)
	public void uploadForm() {
		System.out.println("upload form");
	}
	
	@RequestMapping(value="/uploadFormAction", method = RequestMethod.POST)
	public void uploadFormPost(MultipartFile[] uploadFile, Model model) {
		for(MultipartFile multipartFile : uploadFile) {
			System.out.println("--------------------------------------");
			System.out.println("Upload File Name : " + multipartFile.getOriginalFilename());
			System.out.println("Upload File Size : " + multipartFile.getSize());
		}
	
	}
}