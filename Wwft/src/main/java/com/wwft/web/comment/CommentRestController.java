package com.wwft.web.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.wwft.service.comment.CommentService;
import com.wwft.service.domain.Comment;

@RestController
@RequestMapping("/comment/*")
public class CommentRestController {

	
	@Autowired
	@Qualifier("commentServiceImpl")
	private CommentService commentService;
	
	public CommentRestController() {
		System.out.println(this.getClass() + "Restcontroller");
	}
	
	
	@RequestMapping(value = "json/addComment", method = RequestMethod.POST)
	public String addComment(@RequestBody(required = false ) Comment comment) throws Exception {
		
		System.out.println("/comment/addComment : POST");
		
		comment.setCommentTreeNo(1);
		comment.setCommentWriter("√ √ ");
		
	
	    commentService.addComment(comment);
		System.out.println("ø©±‚¥¬ addcontroller  commentService∞¨¥Ÿø»");
		
	 
		
	

		return null;
	}

	@RequestMapping(value = "json/getCommentList/{postNo}", method = RequestMethod.GET)
	public List<Comment> getCommentList(@PathVariable int postNo) throws Exception {
		
		
		
		System.out.println("/comment/getCommentList : GET");
	
		
	    int commentPostNo = postNo;
	    List<Comment> comments = commentService.getCommentList(commentPostNo);
		System.out.println("comments»Æ¿Œ:"+comments);
	
	for(int i = 0; i<comments.size(); i++) {
			comments.get(i).setCommentRegDate(comments.get(i).getCommentRegDate().substring(0, 10));
		}
		
	    System.out.println("getCommentListø°º≠ ªÁ¿Ã¡Ó»Æ¿Œ¡ﬂ:"+comments.size());
		
		System.out.println(comments.toString());
	
				
	    System.out.println("ø©±‚¥¬ getCommentList controller  commentService∞¨¥Ÿø»");
	

		return comments;
	}
	
	@RequestMapping(value = "json/removeComment/{commentNo}", method = RequestMethod.POST)
	public String removeComment(@PathVariable int commentNo) throws Exception {
		
		System.out.println("/comment/removeComment : POST");
		
		
		
	    commentService.removeComment(commentNo);
	    
		System.out.println("ø©±‚¥¬ removecontroller  commentService∞¨¥Ÿø»");
		
	 
		
	

		return null;
	}
}
