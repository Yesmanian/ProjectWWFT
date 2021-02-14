<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>getPost화면</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	</head>
<style type="text/css">

/* html,

body {

    margin:0;

    padding:0;

    height:	60px;
    
    background-image:url("/resources/images/tree/post.jfif");
    
     background-size: cover;

}
	 */
	.wrapper {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
}

.content {
  padding: 3rem;
</style>
	
	<body style="text-align: center;">
		<header id="wrap"> 
			 <jsp:include page="../common/navBar.jsp"/>
		 </header>
		 <div>
			<input type="hidden" name="treeNo" value="${post.postTreeNo}">
			<input type="hidden" name="postNo" value="${post.postNo}">
			<input type="hidden"  name="menu" value="${menu}"/>
			<input type="hidden" name="treeName" value="${tree.treeName}">
			<input type="hidden" name="profileName" value="${profile.profileName}">
			
			
			<div class="wrapper">
 				 <div class="content" >
			<div class="card gedf-card" style="width: 100%">
				<div class="card-header">
					<div class="d-flex justify-content-between align-items-center">
						<div class="d-flex justify-content-between align-items-center">
							<div class="mr-2">
								<!-- <img class="rounded-circle" width="45"
									src="https://picsum.photos/50/50" alt=""> -->
							</div>
							<div class="ml-2">
								<!-- <div class="h5 m-0">@LeeCross</div> -->
								<div class="h7 text-muted">${post.postWriter}<h4>${post.postRegDate}</h4></div>
							</div>
						</div>
						<div>
							<div class="dropdown">
								<button class="btn btn-link dropdown-toggle" type="button"
									id="gedf-drop1" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">
									<i class="fa fa-ellipsis-h"></i>
								</button>
								<div class="dropdown-menu dropdown-menu-right"
									aria-labelledby="gedf-drop1">
									<div  style="text-align-last: center;">
										<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
										 	 신고
										</button>
									</div>
									
								</div>
							</div>
						</div>
					</div>

				</div>
			<!-- <!-- 신고영역 start 
			<div  style="text-align-last: right;">
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
				 	 신고
				</button>
			</div>
			신고영역 end -->
			
			<div class="card-body">
			<!-- 슬라이드 start -->
			<div class="" style="margin-left: 60px; margin-right: 60px;">
				<div id="carouselExampleIndicators" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<c:set var ="i" value ="0"/>
			  			<c:forEach var ="file" items="${fileList}">
				  			<c:set var ="i" value="${i+1}"/>
				  			<li data-target="#carouselExampleIndicators" data-slide-to="${i}" id ="liList"></li>
  						</c:forEach>
						<!-- <li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li> -->
					</ol>
					<div class="carousel-inner" style="width: 500px;">
						<c:set var="i" value="-1" />
						<c:forEach var="file" items="${fileList}">
							<c:set var="i" value="${i+1}" />
							<c:choose>
								<c:when test="${i eq 0}">
								    <div class="carousel-item active">
										<img src="/resources/images/uploadFiles/${file}" class="d-block w-100" alt="..." style=" height: 400px;">
									</div>
								    </c:when>
								
								  <c:otherwise>
								       <div class="carousel-item">
											<img src="/resources/images/uploadFiles/${file}" class="d-block w-100" alt="..." style=" height: 400px;">
										</div>
								   </c:otherwise>
							</c:choose>
						</c:forEach>
						<%-- <c:forEach var="file" items="${fileList}">
							<div class="carousel-item active">
								<img src="/resources/images/uploadFiles/${file}" class="d-block w-100" alt="...">
							</div>
						</c:forEach> --%>
						<!-- <div class="carousel-item">
							<img src="/resources/images/uploadFiles/4f9e8cf8-f435-4634-9196-30a9eabea543_8.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/resources/images/uploadFiles/4f9e8cf8-f435-4634-9196-30a9eabea543_8.jpg" class="d-block w-100" alt="...">
						</div> -->
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>  
			<!-- 슬라이드END -->
			
			<!-- 게시글Start -->
			<div>
				<div>
					<p style="display: block; margin: 0px auto;"><h4>${post.postRegDate}</h4> </p>
				</div>
						
				<div style="text-align:center;">
					<p style="width:500px; display: block; margin: 0px auto;">
						${post.postDetail}
					</p>
				</div>
			</div>	
			<!-- 게시글END -->
			
			<div class="card-footer">
			<!-- 댓글start -->
			<div>
				<form id="commentForm" name="commentForm" method="post" style="float: left; width: 100%;">
					 <p  style="text-align: left;"><span ><strong>Comment</strong></span>  <span id="cCnt"></span></p>
					<div>
						<textarea style="width: 80%" rows="2" cols="50" id="commentDetail" name="commentDetail" placeholder="댓글을 입력하세요"></textarea>
						<a href='#' onClick="fn_comment('${post.postNo}'); return false;" class="btn btn-link" style="text-decoration:none">등록</a>
						
						<input type="hidden" name="commentTreeNo" value="${post.postTreeNo}">
						<input type="hidden" id="postNo" name="commentPostNo" value="${post.postNo} " />  
						<input type="hidden" name="profileNo" value="${profile.profileNo}">
	        			<input type="hidden" name="treeName" value="${tree.treeName}">
	        			<input type="hidden" name="profileName" value="${profile.profileName}">
	        			<%-- <input type="hidden" name="commentWriter" value="`\${tree.treeName}#\${profile.profileName}`">  --%>
	        			<!-- <input type="hidden" name="commentWriter" value="커피네#김커피"> -->
					</div>
				</form>
				<div>
					<form id="commentListForm" name="commentListForm" method="post" style="width: 80%;margin-left: 5%; text-align-last: left;">
						<div id="commentList">
			       
			        	</div>
					</form>
				</div>
			</div>
			<!-- 댓글END -->
			</div>
		</div>
		</div>
		</div>
		
		
		
		
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  	<div class="modal-dialog">
		    	<div class="modal-content">
		      		<div class="modal-header">
		        		<h5 class="modal-title" id="exampleModalLabel">신고</h5>
		        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          			<span aria-hidden="true">&times;</span>
		        		</button>
		      		</div>
		     	 	<div class="modal-body">
		        		<div class="form-group">
				    		<label for="exampleFormControlSelect1">신고 내용</label>
				    		<select class="form-control" id="exampleFormControlSelect1">
						      <option value="0">욕설</option>
						      <option value="1">음란물</option>
						      <option value="2">도박</option>
						      <option value="3">아동학대</option>
				    		</select>
				  		</div>
		      		</div>
		      		<div class="modal-footer">
		    			<input Type="hidden" value='$("#exampleFormControlSelect1 option:selected").val();'>  
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
				        <button type="button"  onClick="fn_addReport()" class="btn btn-primary">신고하기</button>
		      		</div>
		    	</div>
		  	</div>
		</div>
	
		<!-- Modal -->
		
		<script type="text/javascript">
		/*슬라이드  */
		$("#liList").addClass("active");
		$('.carousel').carousel()
 
		
		/**
		 * 초기 페이지 로딩시 댓글 불러오기
		 */
		$(function(){
		    
		    getCommentList();
		    
		});
		
		function fn_comment(){
			
			 var commentTreeNo = $("[name='commentTreeNo']").val();
			 var commentPostNo = $("[name='commentPostNo']").val();
	    	 var profileName = $("[name='profileName']").val();
	         var treeName	= $("[name='treeName']").val();
	         var commentWriter = `\${treeName}#\${profileName}`;
	         var commentDetail = $("#commentDetail").val();
		   
			$.ajax({

					url : "/comment/json/addComment",
					method : 'POST',
					data : JSON.stringify({commentTreeNo : commentTreeNo, commentPostNo : commentPostNo, commentWriter : commentWriter, commentDetail : commentDetail}),
					/* data : JSON.stringify($("#commentForm").serializeObject()), */
					dateType : "json",
					headers : {
						"Accept" : "application/json",
						"Content-Type" : "application/json"
					},

					success : function(res, status) {
						//alert(status);
						if (status == "success") {
							/* $('#commentDetail').val(''); */
							getCommentList();
							fn_sendNoticeMessage();

							$("#commentDetail").val("");
							$('input[name=commentPostNo]').val();
						}
					},
					error : function(request, status, error) {
						alert("code:" + request.status + "\n" + "message:"
								+ request.responseText + "\n" + "error:"
								+ error);
					}

				});
			}
		
		
			/* 댓글 삭제하기(Ajax) */
			function remove_comment(commentNo) {

				/* var commentNo = $('input[name=commentNo]').val(); */
				var postNo = $('input[name=commentPostNo]').val();
				//alert(commentNo);
				$.ajax({

					url : "/comment/json/removeComment/" + commentNo,
					method : 'POST',
					// data : JSON.stringify({commentNo : commentNo}) ,
					//data : JSON.stringify({commentNo : commentNo, postNo : postNo }) ,
					dateType : "json",
					headers : {
						"Accept" : "application/json",
						"Content-Type" : "application/json"
					},

					success : function(res, status) {
						//	alert(status);
						if (status == "success") {
							getCommentList();

							// $("#commentDetail").val("");
							$('input[name=commentPostNo]').val();
						}
					},
					error : function(request, status, error) {
						alert("code:" + request.status + "\n" + "message:"
								+ request.responseText + "\n" + "error:"
								+ error);
					}

				});
			}
			
			/**
			 * 댓글 불러오기(Ajax)
			 */
			function getCommentList(){
				 
				var postNo = $('input[name=commentPostNo]').val();

				//alert(postNo);
				
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
			                	 
			                	   html += `<div style= display: block; margin: 0px auto;> <table class= table><h6><strong>\${res[i].commentRegDate} \${res[i].commentWriter}<tr><strong></h6>
				                	   </strong></h6>\${res[i].commentDetail} 
				                	   <a href=# onClick="remove_comment('\${res[i].commentNo}'); return false;"  class = btn pull-right btn-success style=text-decoration:none>삭제</a>
				                	   <input type=hidden name=commentNo
				                	   value='\${res[i].commentNo}'<tr><td></td></tr></table></div></div>`;
			                	/* html += `<div style= width:50%; display: block; margin: 0px auto;> \${res[i].commentRegDate}<tr><strong>\${res[i].commentWriter}
			                	   </strong></h6>\${res[i].commentDetail} 
			                	   <a href=# onClick=remove_comment(\${res[i].commentNo}) class = btn pull-right btn-success>삭제</a>
			                	   <input type=hidden name=commentNo
			                	   value='\${res[i].commentNo}'</div>`; */
				                   
			                  /*    html += "<div>";
			                    html += res[i].commentRegDate + "<tr><td></td></tr>";
			                    html +=" <div><table class='table'><h6><strong>"+res[i].commentWriter+"</strong></h6>";
			                    html += res[i].commentDetail + "<tr><td></td></tr>&emsp; <a href='#' onClick=\'remove_comment("+res[i].commentNo+")\; return false;' class='btn pull-right btn-success'>삭제</a><input type='hidden' name='commentNo' value='"+res[i].commentNo+"'>";
			                    html += "</table></div>"; 							 */
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
			
			/*댓글알림메시지보내기  */
			 function fn_sendNoticeMessage(){
					
				
					var profileName = $("[name='profileName']").val();
				    var treeName	= $("[name='treeName']").val();
				    var profileNo = $("[name='profileNo']").val();
				    var noticeMessageType = '0';
					var noticeMessageDetail ="게시글에 댓글이 달렸어요~";
					var sender = `\${treeName}#\${profileName}`;
					var postNo = $('input[name=commentPostNo]').val();
					var treeNo = $('input[name=treeNo]').val();
					
					alert(postNo);
					alert(treeNo);
					alert(sender);
					alert(profileNo);
					
					 
				    $.ajax({
				       
				        url : "/noticeMessage/json/sendNoticeMessage",
				        method :'POST',
				        data : JSON.stringify({noticeMessageType : noticeMessageType, noticeMessageDetail : noticeMessageDetail,
				        	sender : sender, postNo: postNo, treeNo : treeNo, profileNo : profileNo }),
				        dateType : "json",
				        headers : {
							"Accept" : "application/json",
							"Content-Type" : "application/json"
						},
						
				        success : function(res,status){
				        	//alert(status);
				            if(status=="success")
				            {
				            	 alert(JSON.stringify(res));
				               
				            	 
				               
				            }
				        },
				        error:function(request,status,error){
				            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				       }
				        
				    }); 
				} 
			
			/*신고하기  */
			 function fn_addReport(){
					
				    var reporterTreeNo  = '2';										//신고하는 나무번호
					var reportedPostNo	 =$('input[name=postNo]').val();		//신고받은게시글번호
					var reportedTreeNo	 = $('input[name=treeNo]').val();		//신고받은나무번호
					var reportType	 = $("#exampleFormControlSelect1 option:selected").val();	//신고종류
				
					
					alert(reporterTreeNo);
					alert(reportedPostNo);
					alert(reportedTreeNo);
					alert(reportType);
					
					 
				    $.ajax({
				       
				        url : "/admin/json/addReport",
				        method :'POST',
				        data : JSON.stringify({reporterTreeNo : reporterTreeNo, reportedPostNo : reportedPostNo,
				        	reportedTreeNo : reportedTreeNo, reportType: reportType}),
				        dateType : "json",
				        headers : {
							"Accept" : "application/json",
							"Content-Type" : "application/json"
						},
						
				        success : function(res,status){
				        	//alert(status);
				            if(status=="success")
				            {
				            	 alert(JSON.stringify(res));
				               
				            	 
				               
				            }
				        },
				        error:function(request,status,error){
				            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				       }
				        
				    }); 
				}
		</script>
	</body>
</html>