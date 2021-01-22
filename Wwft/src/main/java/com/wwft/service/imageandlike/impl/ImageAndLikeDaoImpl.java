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
		System.out.println(this.getClass()+"ImageAndLikeDaoImpl»ý¼º");
	}

	public void setSqlSession(SqlSession sqlSession) {
		System.out.println("::"+getClass()+".setSqlSession() Call.....");
		this.sqlSession = sqlSession;
	}

	@Override
	public List<String> addImageAndLikeList(ImageAndLike imageAndLike, MultipartHttpServletRequest request)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ImageAndLike getImageAndLike(int imageAndLikeNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ImageAndLike> getImageAndLikeList(int postNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> removeImageAndLike(ImageAndLike imageAndLike, MultipartHttpServletRequest request)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	


	


	

}
