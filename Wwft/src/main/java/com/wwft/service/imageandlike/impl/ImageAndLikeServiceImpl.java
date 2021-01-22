package com.wwft.service.imageandlike.impl;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import com.wwft.service.domain.ImageAndLike;
import com.wwft.service.imageandlike.ImageAndLikeDao;
import com.wwft.service.imageandlike.ImageAndLikeService;

@Service("imageAndLikeServiceImpl")
public class ImageAndLikeServiceImpl implements ImageAndLikeService {
	
	@Autowired
	@Qualifier("imageAndLikeDaoImpl")
	private ImageAndLikeDao imageAndLikeDao;
	
	public void setImageAndLikeDao(ImageAndLikeDao imageAndLikeDao){
		this.imageAndLikeDao = imageAndLikeDao;
	}

	public ImageAndLikeServiceImpl() {
		System.out.println(this.getClass()+"»ý¼º");	
		}

	
	@Override
	public List<String> addImageAndLikeList(ImageAndLike imageAndLike, MultipartHttpServletRequest request)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	@Override
	public ImageAndLike getImageAndLike(int imageAndLikeNo, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> getImageAndLikeList(ImageAndLike imageAndLike, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> updateImageAndLike(ImageAndLike imageAndLike, MultipartHttpServletRequest request)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	

	
	}
	


