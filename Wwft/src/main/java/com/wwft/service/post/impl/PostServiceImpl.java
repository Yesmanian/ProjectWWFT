package com.wwft.service.post.impl;


import java.io.File;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
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
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		return map;
		}
	
	@Override
	public Map<String, Object> getPostList(int postTreeNo,int imageAndLikeNo) throws Exception {
		
		
		List<Post> list = postDao.getPostList(postTreeNo);
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("imageAndLikeNo", imageAndLikeNo);
		

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
	public List<String> uploadFile(ImageAndLike imageAndLike, MultipartHttpServletRequest request) throws Exception {
		
		List<MultipartFile> files = request.getFiles("input_imgs");
		
		String originalImageName = null;
		String saveImageName = null ;
		String uuid = UUID.randomUUID().toString().replaceAll(",", "");
		
		
		if(files != null){
			 //������ ����� ��� ����
			 String path = "C:/File/";
			 File dir = new File(path);
			 if(!dir.isDirectory()){
				 dir.mkdirs();
			 }
			
			 if(!files.isEmpty()){
			 //�Ѿ�� ������ ����Ʈ�� ����
				 for(int i = 0; i < files.size() ; i++){
					 //���� �ߺ��� ó��
					 String random = UUID.randomUUID().toString();
					 //���� ���ϸ�
					 String originalfilename = files.get(i).getOriginalFilename();
					 System.out.println("�⺻ ���ϸ�:"+originalImageName);
					 //����Ǵ� �����̸�
					 String saveFileName = random + "_"+ originalfilename;
					 System.out.println("���� ���ϸ�"+saveImageName);
					//����� ���� ���
					 String savePath = path + saveFileName;
					 
					 //���� ����
					 files.get(i).transferTo(new File(savePath));
					 ImageAndLike imagAndLike = new ImageAndLike(postNo,originalfilename, savePath);
					 
				}
			}
			}

		
			 
		/*
		 * String path = request.getSession().getServletContext().getRealPath("");*/
		
				
		/*
		 * for(int i =0; i<files.size(); i++) { originalImageName =
		 * files.get(i).getOriginalFilename();
		 * System.out.println("�⺻ ���ϸ�:"+originalImageName); saveImageName =
		 * uuid+"_"+originalImageName; System.out.println("���� ���ϸ�"+saveImageName); }
		 */
		  
				
		
		
		return null;
	}

	



	

}
