<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>



 

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>getPost화면</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<!-- <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script> -->
   
<style type="text/css">
	
body {
            background-color: #eeeeee;
        }

        .h7 {
            font-size: 0.8rem;
        }

        .gedf-wrapper {
            margin-top: 0.97rem;
        }

        @media (min-width: 992px) {
            .gedf-main {
                padding-left: 4rem;
                padding-right: 4rem;
            }
            .gedf-card {
                margin-bottom: 2.77rem;
            }
        }

        /**Reset Bootstrap*/
        .dropdown-toggle::after {
            content: none;
            display: none;
        }

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
  position: center;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}

</style>

</head>
<body>

	<header id="wrap">

		<jsp:include page="../common/navBar.jsp" />

	</header>
	<form action="uploadFormAction.jsp" method="post"
		enctype="multipart/form-data" style="text-align: -webkit-center">
		<input type="hidden" name="postNo" value="${post.postNo}"> <input
			type="hidden" name="menu" value="${menu}" /> <input type="hidden"
			name="treeName" value="${tree.treeName}"> <input
			type="hidden" name="profileName" value="${profile.profileName}">


		<%-- <div class="slideshow-container shadow-lg bg-white" style="width: 60%">
			<c:set var="i" value="0" />
			<c:forEach var="file" items="${fileList}">
				<c:set var="i" value="${i+1}" />
				<div class="mySlides fade">
					<div class="numbertext">1 / 3</div>
					<img src="/resources/images/uploadFiles/${file}"
						style="width: 50%; display: block; margin: 0px auto;">
				</div>
			</c:forEach> --%>


			<!--- \\\\\\\Post-->
			<div class="card gedf-card" style="width: 60%">
				<div class="card-header">
					<div class="d-flex justify-content-between align-items-center">
						<div class="d-flex justify-content-between align-items-center">
							<div class="mr-2">
								<!-- <img class="rounded-circle" width="45"
									src="https://picsum.photos/50/50" alt=""> -->
							</div>
							<div class="ml-2">
								<!-- <div class="h5 m-0">@LeeCross</div> -->
								<div class="h7 text-muted">커피네#김커피</div>
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
					 <p><span ><strong>Comment</strong></span>  <span id="cCnt"></span></p>
					<div>
						<textarea style="width: 80%" rows="2" cols="50" id="commentDetail" name="commentDetail" placeholder="댓글을 입력하세요"></textarea>
						<a href='#' onClick="fn_comment('${post.postNo}'); return false;" class="btn btn-link" style="text-decoration:none">등록</a>
						
						<input type="hidden" name="commentTreeNo" value="${post.postTreeNo}">
						<input type="hidden" id="postNo" name="commentPostNo" value="${post.postNo} " />   
	        			<!-- <input type="hidden" name="commentWriter" value="초초">  -->
	        			<input type="hidden" name="commentWriter" value="`\${tree.treeName}#\${profile.profileName}`"> 
	        			
					</div>
				</form>
				<div>
					<form id="commentListForm" name="commentListForm" method="post" style="width: 80%;margin-left: 5%;">
						<div id="commentList">
			       
			        	</div>
					</form>
				</div>
			</div>
			<!-- 댓글END -->
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
			<!-- Post /////-->

			<!-- "C:\\uploadFiles\\"; -->




			<!-- <div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="/resources/images/uploadFiles/385b48a9-ab0a-42ba-bb6d-26ef48d5d29b_11.jfif" style=" width:50%; display: block; margin: 0px auto;">
</div>

<div class="mySlides fade" style="align-content: center;">
  <div class="numbertext">2 / 3</div>
  <img src="/resources/images/uploadFiles/385b48a9-ab0a-42ba-bb6d-26ef48d5d29b_13.jfif" style=" width:50%; display: block; margin: 0px auto;">
</div>

<div class="mySlides fade" style="align-content: center;">
  <div class="numbertext" >3 / 3</div>
  <img src="/resources/images/uploadFiles/385b48a9-ab0a-42ba-bb6d-26ef48d5d29b_14.jfif" style=" width:50%; display: block; margin: 0px auto;">
</div> -->
		<%-- </div>
		<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next"
			onclick="plusSlides(1)">&#10095;</a>

		<!-- </div> -->
		<br>

		<div style="text-align: center">
			<span class="dot" onclick="currentSlide(1)"></span> <span class="dot"
				onclick="currentSlide(2)"></span> <span class="dot"
				onclick="currentSlide(3)"></span>

			<p style="display: block; margin: 0px auto;">
			<h4>${post.postRegDate}</h4>
			</p>
			<button type="button" class="btn btn-danger" style="">신고</button>
		</div>

		<div style="text-align: center;">
			<p style="width: 500px; display: block; margin: 0px auto;">
				${post.postDetail}</p>
		</div>
	</form>
	</tr>
	</tr>
	</tr>
	</tr>
	</tr>




	<div class="container"
		style="width: 50%; display: block; margin: 0px auto;">
		<form id="commentForm" name="commentForm" method="post">
			<div class="shadow-lg p-4 mb-2 bg-white author"
				style="width: 50%; display: block; margin: 0px auto;">
				<p>
					<span><strong>Comment</strong></span> <span id="cCnt"></span>
				</p>
				<textarea style="width: 500px" rows="2" cols="50" id="commentDetail"
					name="commentDetail" placeholder="댓글을 입력하세요"></textarea>
				<!-- <div> -->
				<a href='#' onClick="fn_comment('${post.postNo}'); return false;"
					class="btn btn-link" style="text-decoration: none">등록</a>
				<!--  </div> -->

				<input type="hidden" id="postNo" name="commentPostNo"
					value="${post.postNo} " /> <input type="hidden"
					name="commentWriter" value="초초">
		</form>

	</div>
	</div>
	<!--/ col-lg-3 -->
	<div class="container"
		style="width: 500px; display: block; margin: 0px auto;">
		<form id="commentListForm" name="commentListForm" method="post">
			<div id="commentList"></div>
		</form>
	</div>
	</div> --%>
	</form>

	<script type="text/javascript">
 var slideIndex = 1;
 showSlides(slideIndex);

 function plusSlides(n) {
   showSlides(slideIndex += n);
 }

 function currentSlide(n) {
   showSlides(slideIndex = n);
 }

 function showSlides(n) {
   var i;
   var slides = document.getElementsByClassName("mySlides");
   var dots = document.getElementsByClassName("dot");
   if (n > slides.length) {slideIndex = 1}    
   if (n < 1) {slideIndex = slides.length}
   for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
   }
   for (i = 0; i < dots.length; i++) {
       dots[i].className = dots[i].className.replace(" active", "");
   }
   slides[slideIndex-1].style.display = "block";  
   dots[slideIndex-1].className += " active";
 }
 
 function fn_comment(){
		//alert(JSON.stringify($("#commentForm").serializeObject()));
		
		/* $('#commentDetail').val(''); */
		//e.prventDefault();
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
	            	 /* $('#commentDetail').val(''); */
	                getCommentList();
	                $("#commentDetail").val("");
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
		alert(commentNo);
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
	                	 
	                	   html += `<div style= width:50%; display: block; margin: 0px auto;> <table class= table><h6><strong>\${res[i].commentRegDate} \${res[i].commentWriter}<tr><strong></h6>
		                	   </strong></h6>\${res[i].commentDetail} 
		                	   <a href=# onClick=remove_comment(\${res[i].commentNo}) class = btn pull-right btn-success style=text-decoration:none>삭제</a>
		                	   <input type=hidden name=commentNo
		                	   value='\${res[i].commentNo}'<tr><td></td></tr></table></div></div>`;
	                	/*    html += `<div style= width:50%; display: block; margin: 0px auto;> \${res[i].commentRegDate}<tr><strong>\${res[i].commentWriter}
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

</script>
</body>

</html>