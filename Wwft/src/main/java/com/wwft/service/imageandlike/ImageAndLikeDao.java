package com.wwft.service.imageandlike;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.wwft.service.domain.ImageAndLike;

public interface ImageAndLikeDao {

		
	public List<String> addImageAndLikeList(ImageAndLike imageAndLike, MultipartHttpServletRequest request) throws Exception;
	
	public ImageAndLike getImageAndLike(int imageAndLikeNo) throws Exception;
	
	public List<ImageAndLike> getImageAndLikeList(int postNo) throws Exception;
		
	public List<String> removeImageAndLike(ImageAndLike imageAndLike, MultipartHttpServletRequest request) throws Exception;
}
