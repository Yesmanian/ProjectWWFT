<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>



 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>getPost화면</title>


    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
    <script>
function fn_comment(){
	//alert(JSON.stringify($("#commentForm").serializeObject()));
	
    $.ajax({
       
        url : "/comment/json/addComment",
        method :'POST',
        data : JSON.stringify($("#commentForm").serializeObject()),
        dateType : "json",
        headers : {
			"Accept" : "application/json",
			"Content-Type" : "application/json"
		},
		
        success : function(res,status){
        	//alert(status);
            if(status=="success")
            {
                getCommentList();
               // $("#commentDetail").val("");
                $('input[name=commentPostNo]').val();
            }
        },
        error:function(request,status,error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
        
    });
}

/* 댓글 삭제하기(Ajax) */
function remove_comment(){
	
	var commentNo = $('input[name=commentNo]').val();
	var postNo = $('input[name=commentPostNo]').val();
	//alert(commentNo);
    $.ajax({
       
        url : "/comment/json/removeComment/"+commentNo,
        method :'POST',
       // data : JSON.stringify({commentNo : commentNo}) ,
        //data : JSON.stringify({commentNo : commentNo, postNo : postNo }) ,
        dateType : "json",
        headers : {
			"Accept" : "application/json",
			"Content-Type" : "application/json"
		},
		
        success : function(res,status){
        //	alert(status);
            if(status=="success")
            {
                getCommentList();
               // $("#commentDetail").val("");
                $('input[name=commentPostNo]').val();
            }
        },
        error:function(request,status,error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
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
	var postNo = $('input[name=commentPostNo]').val();

	
	
	//alert("넘어오는지 확인중");
    $.ajax({
        
        url : "/comment/json/getCommentList/"+postNo,
        method:'GET',
        dateType :"json",
     
        contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
        success : function(res,status){
        	//alert(res[0].commentRegDate);
            
        	var html = "";
        	var cCnt = res.length;
        	
           // alert(res.length);
            if(res.length > 0){
                
                for(i=0; i<res.length; i++){
                    html += "<div>";
                    html += res[i].commentRegDate + "<tr><td></td></tr>";
                    html +=" <div><table class='table'><h6><strong>"+res[i].commentWriter+"</strong></h6>";
                    html += res[i].commentDetail + "<tr><td></td></tr>&emsp; <a href='#' onClick=\'remove_comment("+res[i].commentNo+")\' class='btn pull-right btn-success'>삭제</a><input type='hidden' name='commentNo' value='"+res[i].commentNo+"'>";
                    html += "</table></div>";							
                   // html += "</div><input type= 'button' value='삭제'><input type='hidden' name='commentNo' value='${res[i].commentNo }'>";
                   
                }
                
            } else {
                
                html += "<div>";
                html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
                html += "</table></div>";
                html += "</div>";
                
            }
            
            $("#cCnt").html(cCnt);
            $("#commentListForm").html(html);
           
            
        },
        error:function(request,status,error){
            
       }
        
    });
}
</script>
</head>
<body>

	<form action="uploadFormAction.jsp" method="post" enctype="multipart/form-data">
	<input type="hidden" name="postNo" value="${post.postNo }">
	<input type="hidden"  name="menu" value=${menu} />
	
		<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="26">
					
						<c:forEach var="file" items="${fileList}">
						
							<img src = "/resources/images/uploadFiles/${file}" style="width:350px"/><br/>
						</c:forEach>
					</td>
				</tr>
			</table>
			
			내용:${post.postDetail }
			${post.postRegDate }
			
			
	</form>
	
<div class="container">
    <form id="commentForm" name="commentForm" method="post">
    <br><br>
        <div>
            <div>
                <span><strong>Comment</strong></span>  <span id="cCnt"></span>
            </div>
            <div>
                <table class="table">                    
                    <tr>
                        <td>
                            <textarea style="width: 1100px" rows="3" cols="30" id="commentDetail" name="commentDetail" placeholder="댓글을 입력하세요"></textarea>
                            <br>
                            <div>
                                <a href='#' onClick="fn_comment('${post.postNo}')" class="btn pull-right btn-success">등록</a>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="postNo" name="commentPostNo" value="${post.postNo} " />   
        <input type="hidden" name="commentWriter" value="초초">     
    </form>

</div>
    <tr><td></td></tr>
<div class="container">
    <form id="commentListForm" name="commentListForm" method="post">
        <div id="commentList">
        </div>
    </form>
</div>
</body>
</html>