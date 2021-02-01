package com.wwft.service.comment.test;

import java.util.List;



import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.wwft.service.comment.CommentService;
import com.wwft.service.domain.Comment;
import com.wwft.service.domain.Post;
import com.wwft.service.post.PostService;



//@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/context-common.xml" ,
										"classpath:config/context-aspect.xml",
										"classpath:config/context-mybatis.xml",
										"classpath:config/context-transaction.xml"})
public class CommentServiceTest {

	
	@Autowired
	@Qualifier("commentServiceImpl")
	private CommentService commentService;

	//@Test
	public void testinsertComment() throws Exception {
		
		Comment comment = new Comment();
		
		comment.setCommentDetail("����׽�Ʈ���Դϴ�");
		comment.setCommentPostNo(5);
		comment.setCommentTreeNo(1);
		comment.setCommentWriter("�׽�Ʈ�״��");
		
		commentService.addComment(comment);
		
		
		comment = commentService.getComment(22);
		
	
		
		Assert.assertEquals("����׽�Ʈ���Դϴ�", comment.getCommentDetail());
		Assert.assertEquals(5, comment.getCommentPostNo());
		Assert.assertEquals(1, comment.getCommentTreeNo());
		Assert.assertEquals("�׽�Ʈ�״��", comment.getCommentWriter());
		
		
	 }
	
	  // @Test
		public void testfindComment() throws Exception {
			
		   Comment comment = new Comment();
		   
		   comment = commentService.getComment(22);
		   
		Assert.assertEquals("����׽�Ʈ���Դϴ�", comment.getCommentDetail());
		Assert.assertEquals(5, comment.getCommentPostNo());
		Assert.assertEquals(1, comment.getCommentTreeNo());
		Assert.assertEquals("�׽�Ʈ�״��", comment.getCommentWriter());
		
		Assert.assertNotNull(commentService.getComment(8));
		Assert.assertNotNull(commentService.getComment(21));
			
		}
	
		//@Test
		 public void testgetCommentList() throws Exception{
			 
			Comment comment = new Comment();
			comment.setCommentPostNo(24);
			
			
			List<Comment> list = commentService.getCommentList(comment.getCommentPostNo());
		
			Assert.assertEquals("����",list.get(0).getCommentWriter());
			Assert.assertEquals("��ȫȫ����̴�",list.get(0).getCommentDetail());
			Assert.assertEquals("����",list.get(1).getCommentWriter());
			Assert.assertEquals("��۴��",list.get(1).getCommentDetail());
			
			Assert.assertEquals(3, list.size());
			
			
			
		 }
		
		//@Test
		 public void testremoveComment() throws Exception{
			 
			Comment comment = new Comment();
			comment.setCommentNo(21);
			
            comment.setCommentPostNo(5);
			commentService.removeComment(comment.getCommentNo());
			
			List<Comment> list = commentService.getCommentList(comment.getCommentPostNo());
			
					
		
			Assert.assertEquals(3,list.size());
			
			
			
		 }
		
		
}
	 