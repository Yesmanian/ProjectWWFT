<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
    
    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
    
<!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<style type="text/css">
	
	.grid-container {
  display: grid;
  grid-template-columns: 1fr 0.4fr 2.2fr 0.4fr 1fr;
  grid-template-rows: 0.6fr 2.1fr 0.7fr 0.6fr 1.6fr 0.4fr;
  gap: 5px 0px;
  grid-template-areas:
    ". . . . ."
    ". image image image ."
    ". detail detail detail ."
    ". comment comment comment ."
    ". commentList commentList commentList ."
    ". . . . .";
}

.image { grid-area: image; }

.detail { grid-area: detail; }

.comment { grid-area: comment; }

.commentList { grid-area: commentList; }
	

</style>
</head>
<body>
<div class="grid-container">
  <div class="image"></div>
  <div class="detail"></div>
  <div class="comment"></div>
  <div class="commentList"></div>
</div>






<div class="container">
    <form id="commentForm" name="commentForm" method="post">
    <br><br>
        <div>
            <div>
                <span><strong>Comments</strong></span> <span id="cCnt"></span>
            </div>
            <div>
                <table class="table">                    
                    <tr>
                        <td>
                            <textarea style="width: 1100px" rows="3" cols="30" id="comment" name="comment" placeholder="댓글을 입력하세요"></textarea>
                            <br>
                            <div>
                                <a href='#' onClick="fn_comment('${post.postNo }')" class="btn pull-right btn-success">등록</a>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="postNo" name="postNo" value="${post.postNo }" />        
    </form>
</div>
<div class="container">
    <form id="commentListForm" name="commentListForm" method="post">
        <div id="commentList">
        </div>
    </form>
</div>
 




<script type="text/javascript">
/*
 * 댓글 등록하기(Ajax)
 */
function fn_comment(commentPostNo){
    
    $.ajax({
       
        url : "/comment/json/addComment/",
        method :'POST',
        data : $("#commentForm").serialize(),
        dateType : "json",
        headers : {
			"Accept" : "application/json",
			"Content-Type" : "application/json"
		},
        success : function(data){
            if(data=="success")
            {
                getCommentList();
                $("#comment").val("");
            }
        },
        error:function(request,status,error){
            //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
        
    });
}
 
/**
 * 초기 페이지 로딩시 댓글 불러오기
 */
$(function(){
    
    getCommentList();
    
});
 
/**
 * 댓글 불러오기(Ajax)
 */
function getCommentList(){
    
    $.ajax({
        type:'GET',
        url : "/comment/json/getCommentList/",
        dataType : "json",
        data:$("#commentForm").serialize(),
        contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
        success : function(data){
            
            var html = "";
            var cCnt = data.length;
            
            if(data.length > 0){
                
                for(i=0; i<data.length; i++){
                    html += "<div>";
                    html += "<div><table class='table'><h6><strong>"+data[i].writer+"</strong></h6>";
                    html += data[i].comment + "<tr><td></td></tr>";
                    html += "</table></div>";
                    html += "</div>";
                }
                
            } else {
                
                html += "<div>";
                html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
                html += "</table></div>";
                html += "</div>";
                
            }
            
            $("#cCnt").html(cCnt);
            $("#getcommentList").html(html);
            
        },
        error:function(request,status,error){
            
       }
        
    });
}
 
</script>
 
</body>
</html>

