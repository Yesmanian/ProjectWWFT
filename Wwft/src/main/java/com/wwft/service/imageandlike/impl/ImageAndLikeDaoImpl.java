package com.wwft.service.imageandlike.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.wwft.service.domain.ImageAndLike;
import com.wwft.service.imageandlike.ImageAndLikeDao;

@Repository("imageAndLikeDaoImpl")
public class ImageAndLikeDaoImpl implements ImageAndLikeDao {

	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	public ImageAndLikeDaoImpl() {
		System.out.println(this.getClass()+"»ý¼º");
	}

	public void setSqlSession(SqlSession sqlSession) {
		System.out.println("::"+getClass()+".setSqlSession() Call.....");
		this.sqlSession = sqlSession;
	}

	@Override
	public ImageAndLike getImageAndLike(int imageAndLikeNo, MultipartHttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> getImageAndLikeList(ImageAndLike imageAndLike, MultipartHttpServletRequest request)
			throws Exception {
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
