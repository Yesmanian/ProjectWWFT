package com.wwft.service.imageandlike;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.wwft.service.domain.ImageAndLike;

public interface ImageAndLikeDao {

		
	public ImageAndLike getImageAndLike(int imageAndLikeNo, MultipartHttpServletRequest request) throws Exception;
	
	public List<String> getImageAndLikeList(ImageAndLike imageAndLike, MultipartHttpServletRequest request) throws Exception;
		
	public List<String> updateImageAndLike(ImageAndLike imageAndLike, MultipartHttpServletRequest request) throws Exception;
}
