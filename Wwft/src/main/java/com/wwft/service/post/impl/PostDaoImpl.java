package com.wwft.service.post.impl;



import com.wwft.common.web.Search;
import com.wwft.service.domain.ImageAndLike;
import com.wwft.service.domain.Post;



import com.wwft.service.post.PostDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Repository("postDaoImpl")
public class PostDaoImpl implements PostDao {
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private	SqlSession sqlSession;

	public PostDaoImpl() {
		System.out.println(this.getClass()+"postDaoImpl생성");
	}
	
	/*
	 * public void setSqlSession(SqlSession sqlSession) {
	 * System.out.println("::"+getClass()+".setSqlSession() Call.....");
	 * this.sqlSession = sqlSession; }
	 */

	@Override
	public void addPost(Post post) throws Exception {
		System.out.println("addPost들어왔다");
		sqlSession.insert("PostMapper.addPost", post);
		System.out.println("addPost지나간다");
	}

	@Override
	public Post getPost(int postNo) throws Exception {
		return sqlSession.selectOne("PostMapper.getPost", postNo);
	}
	
	@Override
	public List<Post> getPostList(Search search,int postTreeNo) throws Exception {
		System.out.println("PostDaoImpl getPostList들어왔음");
		System.out.println("@@@@@@@@@@@@@@@@@@8888888"+search.getSearchCondition());
		System.out.println(search.getSearchKeyword());
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("postTreeNo", postTreeNo);
		
		List<Post> list = sqlSession.selectList("PostMapper.getPostList", map);
		for(int i =0; i < list.size(); i++) {
			System.out.println(list.get(i).getFirstImageName());
		}
		System.out.println(list);
		
		System.out.println("PostDaoImpl getPostList Mapper갔다옴");
		
		return list;
	}
	
	@Override
	public int getTotalCount(Search search,int postTreeNo) throws Exception {
		System.out.println("토탈카운트??????들어왔음");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("postTreeNo", postTreeNo);
		return sqlSession.selectOne("PostMapper.getTotalCount", map);
	}
	
	@Override
	public List<String> getAlbumList(int postTreeNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("PostMapper.getAlbumList", postTreeNo);
	}


	@Override
	public void updatePost(Post post) throws Exception {
		sqlSession.update("PostMapper.updatePost", post);
	}

	@Override
	public int removePost(int postNo) throws Exception {
		return sqlSession.delete("postMapper.removePost", postNo);
	}

	
	@Override
	public void addImageAndLike(ImageAndLike imageAndLike) throws Exception {
		
		System.out.println("postDaoImpl:addImageAndLike들어옴");
		sqlSession.insert("ImageAndLikeMapper.addImageAndLike", imageAndLike);
	}
	


	/*
	 * @Override public ImageAndLike getImageAndLike(int postNo) throws Exception {
	 * 
	 * //sqlSession.selectOne("ImageAndLikeMapper.getImageAndLike", postNo); int
	 * minPostNo = sqlSession.selectOne("ImageAndLikeMapper.getMinImageAndLike",
	 * postNo); System.out.println("minPostNo"+minPostNo); return
	 * sqlSession.selectOne("ImageAndLikeMapper.getImageAndLike", minPostNo); }
	 */
	
	
	
	@Override
	public List<String> getImageAndLikeList(int postNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ImageAndLikeMapper.getImageAndLikeList", postNo);
	}


	@Override
	public int removeImageAndLike(int imageAndLikeNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.delete("ImageAndLikeMapper.removeImageAndLike",imageAndLikeNo);
	}

	@Override
	public int lastPostNo() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("PostMapper.lastPostNo");
	}

	
	@Override
	public String getPostFirstImage(int postNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("PostMapper.getPostFirtImage", postNo);
	}
	

	
}
