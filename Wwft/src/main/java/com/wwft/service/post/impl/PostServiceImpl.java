package com.wwft.service.post.impl;


import java.io.File;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.wwft.common.web.Search;
import com.wwft.service.domain.ImageAndLike;
import com.wwft.service.domain.Post;
import com.wwft.service.post.PostDao;
import com.wwft.service.post.PostService;

@Service("postServiceImpl")
public class PostServiceImpl implements PostService {

	@Autowired
	@Qualifier("postDaoImpl")
	private PostDao postDao;
	
	public void setProductDao(PostDao postDao) {
		this.postDao = postDao;
	}
	
	public PostServiceImpl() {
		System.out.println(this.getClass()+"postServiceImpl생성");
	}

	@Override
	public Post addPost(Post post) throws Exception {
		
		post.setPostNo(postDao.lastPostNo());
		postDao.addPost(post);
		
		return post;
				
	}


	@Override
	public Map<String, Object> getPost(int postNo) throws Exception {
		
		Post post = postDao.getPost(postNo);
		List<String> fileList = postDao.getImageAndLikeList(postNo);
		System.out.println("getPost에서 fileList확인중"+fileList);
		//String file = "";
		//String path = "C:\\Users\\dkgur\\git\\ProjectWWFT\\Wwft\\WebContent\\resources\\images\\uploadFiles\\";
		/*
		 * List<String> fileList = new ArrayList<String>();
		 * 
		 * for(int i =0; i < files.size(); i++) {
		 * System.out.println("getPost에서 경로합치기전:"+files.get(i));
		 * 
		 * fileList.add( path+files.get(i)); System.out.println("getPost에서 ");
		 * 
		 * }
		 */
		
		Map<String, Object> map = new HashMap<String, Object>(); 
		map.put("post", post);
		map.put("fileList", fileList);
		
		return map;
		}
	
	@Override
	public Map<String, Object> getPostList(Search search ,int postTreeNo) throws Exception {
		System.out.println("getPostList들어왔나");
		System.out.println(postTreeNo);
		/* System.out.println(postNo); */
		
		List<Post> list = postDao.getPostList(search,postTreeNo);
		List<String> albumList = postDao.getAlbumList(postTreeNo);
		int totalCount = postDao.getTotalCount(search,postTreeNo);
		System.out.println("토탈카운트다!!!!!!!!!!!!!!1"+totalCount);
		
		/*
		 * ImageAndLike fileName = postDao.getImageAndLike(postNo);
		 * System.out.println("getPostList에서 filName"+fileName);
		 */
		for(int i =0; i< albumList.size(); i++) {
			System.out.println("여기는!!!!!!!!!!!!!!!!!!!"+albumList.get(i));
		}
		//System.out.println("list !!!!!!!111?????? : "+list.get(0).getPostNo());
		System.out.println("???????????????"+albumList.size());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		/* map.put("fileName", fileName); */
		map.put("albumList", albumList);
		map.put("totalCount", new Integer(totalCount));

		/*
		 * Map<String, Object> map = new HashMap<String,Object>(); map.put("list",
		 * list);
		 */
		System.out.println("postServiceImpl에서 controller로 넘어간다");
		return map;
	
	}

	@Override
	public void updatePost(Post post,ImageAndLike imageAndLike, MultipartHttpServletRequest request) throws Exception {
		postDao.updatePost(post);
	}

	@Override
	public void removePost(int postNo) throws Exception {
		 postDao.removePost(postNo);
		 postDao.removeImageAndLike(postNo);
	}

	@Override
	public void uploadFile(ImageAndLike imageAndLike, MultipartHttpServletRequest request) throws Exception {
		System.out.println("PostService/uploadFile들어옴");
		
		
		List<MultipartFile> files = request.getFiles("input_imgs");
		
		//List<String> fileList = new ArrayList<String>();
		String tt  = request.getServletContext().getRealPath("/");
		System.out.println("경로확인"+tt);
		
		  String originalImageName = null; 
		  String saveImageName = null ; 
		  String savePath = null;
		  String uuid = UUID.randomUUID().toString().replaceAll(",", "");
		  

		  Map<String, Object> map = new HashMap<String, Object>();
		
		if(files != null){
			
			 //파일이 저장될 경로 설정
			//String path ="C:\\uploadFiles\\";
			 //String path = "C:\\Users\\dkgur\\git\\ProjectWWFT\\Wwft\\WebContent\\resources\\images\\uploadFiles\\";
			   String path= "C:\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Wwft\\resources\\images\\uploadFiles";
			// C:\\Users\\dkgur\\git\\ProjectWWFT\\Wwft\\WebContent\\resources\\images\\uploadFiles\\
			 File dir = new File(path);
			 if(!dir.isDirectory()){
				 dir.mkdirs();
			 }
			 
			
			
			 if(!files.isEmpty()){
			 //넘어온 파일을 리스트로 저장
				 for(int i = 0; i < files.size() ; i++){
					 //파일 중복명 처리
					  System.out.println("imageAndLike여부확인중"+imageAndLike.getDeleteImageState());
					 //원래 파일명
					  originalImageName = files.get(i).getOriginalFilename();
					 System.out.println("기본 파일명:"+originalImageName);
					
					 //저장되는 파일이름
					 saveImageName = uuid + "_"+ originalImageName;
					 System.out.println("저장 파일명"+saveImageName);
					
					 //저장될 파일 경로
					 savePath = path + saveImageName;
					 
					 //파일 저장
					 files.get(i).transferTo(new File(path,saveImageName));
					 
					// List<String> fileList = new ArrayList<String>();
					// fileList.add(originalImageName);
					// fileList.add(saveImageName);
					// imageAndLike = new ImageAndLike();
					 imageAndLike.setOriginalImageName(originalImageName);
					 imageAndLike.setSaveImageName(saveImageName);
					 imageAndLike.setDeleteImageState("N");
					 imageAndLike.setImageAndLikeState("0");
					 
					 System.out.println(originalImageName);
					 System.out.println(saveImageName);
					
					 postDao.addImageAndLike(imageAndLike);
				}
					
			}
			 
		}
		
		/*
		 * ImageAndLike imageAndLike2 = new ImageAndLike();
		 * imageAndLike2.setOriginalImageName(originalImageName);
		 * imageAndLike2.setSaveImageName(saveImageName);
		 */
		
	//	Map<String, Object> map = new HashMap<String, Object>();
		//map.put("fileList", fileList);
	
		
		//return null;
		//return postDao.addImageAndLike(fileList);
	}

	
	@Override
	public String getPostFirstImage(int postNo) throws Exception {
		// TODO Auto-generated method stub
		return postDao.getPostFirstImage(postNo);
	}



	

}
