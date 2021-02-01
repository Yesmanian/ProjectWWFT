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
		System.out.println(this.getClass()+"postServiceImpl����");
	}

	@Override
	public Post addPost(Post post) throws Exception {
		
		post.setPostNo(postDao.lastPosttNo());
		postDao.addPost(post);
		
		return post;
				
	}


	@Override
	public Map<String, Object> getPost(int postNo) throws Exception {
		
		Post post = postDao.getPost(postNo);
		List<String> fileList = postDao.getImageAndLikeList(postNo);
		System.out.println("getPost���� fileListȮ����"+fileList);
		//String file = "";
		//String path = "C:\\Users\\dkgur\\git\\ProjectWWFT\\Wwft\\WebContent\\resources\\images\\uploadFiles\\";
		/*
		 * List<String> fileList = new ArrayList<String>();
		 * 
		 * for(int i =0; i < files.size(); i++) {
		 * System.out.println("getPost���� �����ġ����:"+files.get(i));
		 * 
		 * fileList.add( path+files.get(i)); System.out.println("getPost���� ");
		 * 
		 * }
		 */
		
		Map<String, Object> map = new HashMap<String, Object>(); 
		map.put("post", post);
		map.put("fileList", fileList);
		
		return map;
		}
	
	@Override
	public Map<String, Object> getPostList(int postTreeNo,int postNo) throws Exception {
		System.out.println("getPostList���Գ�");
		System.out.println(postTreeNo);
		System.out.println(postNo);
		
		List<Post> list = postDao.getPostList(postTreeNo);
		
		ImageAndLike fileName = postDao.getImageAndLike(postNo);
			
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("fileName", fileName);
		

		/*
		 * Map<String, Object> map = new HashMap<String,Object>(); map.put("list",
		 * list);
		 */
		
		return map;
	
	}

	@Override
	public void updatePost(Post post,ImageAndLike imageAndLike, MultipartHttpServletRequest request) throws Exception {
		postDao.updatePost(post);
	}

	@Override
	public void removePost(int postNo,int imageAndLikeNo) throws Exception {
		 postDao.removePost(postNo);
		 postDao.removeImageAndLike(imageAndLikeNo);
	}

	@Override
	public void uploadFile(ImageAndLike imageAndLike, MultipartHttpServletRequest request) throws Exception {
		System.out.println("PostService/uploadFile����");
		
		
		List<MultipartFile> files = request.getFiles("input_imgs");
		
		//List<String> fileList = new ArrayList<String>();
		String tt  = request.getServletContext().getRealPath("/");
		System.out.println("���Ȯ��"+tt);
		
		  String originalImageName = null; 
		  String saveImageName = null ; 
		  String savePath = null;
		  String uuid = UUID.randomUUID().toString().replaceAll(",", "");
		  

		  Map<String, Object> map = new HashMap<String, Object>();
		
		if(files != null){
			
			 //������ ����� ��� ����
			 String path = "C:\\Users\\dkgur\\git\\ProjectWWFT\\Wwft\\WebContent\\resources\\images\\uploadFiles\\";
			                //C:\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Wwft\
			// C:\\Users\\dkgur\\git\\ProjectWWFT\\Wwft\\WebContent\\resources\\images\\uploadFiles\\
			 File dir = new File(path);
			 if(!dir.isDirectory()){
				 dir.mkdirs();
			 }
			 
			
			
			 if(!files.isEmpty()){
			 //�Ѿ�� ������ ����Ʈ�� ����
				 for(int i = 0; i < files.size() ; i++){
					 //���� �ߺ��� ó��
					  
					 //���� ���ϸ�
					  originalImageName = files.get(i).getOriginalFilename();
					 System.out.println("�⺻ ���ϸ�:"+originalImageName);
					
					 //����Ǵ� �����̸�
					 saveImageName = uuid + "_"+ originalImageName;
					 System.out.println("���� ���ϸ�"+saveImageName);
					
					 //����� ���� ���
					 savePath = path + saveImageName;
					 
					 //���� ����
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

	



	

}
