<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>



 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>getPost화면</title>
<!-- <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script> -->
   <!--  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha256-7dA7lq5P94hkBsWdff7qobYkp9ope/L5LQy2t/ljPLo=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.min.js" integrity="sha512-Zq2BOxyhvnRFXu0+WE6ojpZLOU2jdnqbrM1hmVdGzyeCa1DgM3X5Q4A/Is9xA1IkbUeDd7755dNNI/PzSf2Pew==" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script> -->
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossorigin="anonymous" /> -->
   <!--  <script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
  <script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script> -->
<style type="text/css">

.carousel-inner /* > .carousel-item > img */{
		  width: 30%;
		height: 400px; 
		padding: 6em;
		background-color: #DCDCDC	;
 }
.carousel-item {
		  width: 5%;
		height: 400px; 
		padding: 6em;
 }

	
/*  {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;} */

/* Slideshow container */
/* .slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
  position: center;
} */

/* Next & previous buttons */
/* .prev, .next {
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
 */
/* Position the "next button" to the right */
/* .next {
  right: 0;
  border-radius: 3px 0 0 3px;
} */

/* On hover, add a black background color with a little bit see-through */
/* .prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
} */

/* Caption text */
/* .text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
} */

/* Number text (1/3 etc) */
/* .numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
} */

/* The dots/bullets/indicators */
/* .dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
} */

/* .active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
/*.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
} */

/* @keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
} */

/* On smaller screens, decrease text size */
/* @media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
} */

</style>

</head>
<body>
<header id="wrap"> 
        
          
        <jsp:include page="../common/navBar.jsp"/>
      

      </header>
      
<%-- <form action="uploadFormAction.jsp" method="post" enctype="multipart/form-data"> --%>
	<input type="hidden" name="treeNo" value="${post.postTreeNo}">
	<input type="hidden" name="postNo" value="${post.postNo}">
	<input type="hidden"  name="menu" value="${menu}" />

<div class="container">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
 <%--  	<c:set var ="i" value ="0"/>
  		<c:forEach var ="file" items="${fileList}">
  		<c:set var ="i" value="${i+1}"/>
  			 <li data-target="#carouselExampleIndicators" data-slide-to="${i}" id ="liList"></li>
  		
  		</c:forEach>
  	 --%>
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li> 
  </ol>
   <div class="carousel-inner">
   	<c:forEach var="file" items="${fileList}">
    <div class="carousel-item active w-5 h-10">
      <img src="/resources/images/uploadFiles/${file}" class="d-block w-100 h-100" alt="...">
    </div>
    </c:forEach>
    
     <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
    <!-- <div class="carousel-item w-5 h-10">
      <img src="/resources/images/uploadFiles/6ddb9e05-9fa7-42db-8bb6-68b606f78b5a_11.jfif" class="d-block w-100 h-100" alt="...">
    </div>
    <div class="carousel-item w-5 h-10">
      <img src="/resources/images/uploadFiles/6ddb9e05-9fa7-42db-8bb6-68b606f78b5a_10.jfif" class="d-block w-100 h-100" alt="...">
    </div>
  </div> -->
<%-- <div class="slideshow-container">
<c:set var ="i" value="0"/>
<c:forEach var="file" items="${fileList}">
	<c:set var ="i" value="${i+1}"/>
		 <div class="mySlides fade"> 
		<!--   <div class="numbertext"> / 3</div> -->
		  <img src = "/resources/images/uploadFiles/${file}" style=" width:50%;  display: block; margin: 0px auto;">
	 </div> 
	
</c:forEach> --%>

  


<!-- "C:\\uploadFiles\\"; -->





<!-- </div>
<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a> -->

<!-- </div> -->

</div>
</div>
</div>
<div style="text-align:center">
		<%-- <c:set var ="i" value="0"/>
		<c:forEach var="file" items="${fileList}">
			<c:set var ="i" value="${i+1}"/>
			<span class="dot"  onclick="currentSlide(${i})"></span> 
			
		</c:forEach> --%>
<!--   <span class="dot"  onclick="currentSlide(1)"></span> 
  <span class="dot"  onclick="currentSlide(2)"></span> 
  <span class="dot"  onclick="currentSlide(3)"></span>  -->
  
  <p style="display: block; margin: 0px auto;"><h4>${post.postRegDate}</h4> </p>
  <!-- <button type="button" class="btn btn-danger" style="">신고</button> -->
  
  <!-- Button trigger modal -->
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
		  신고
		</button>
		
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
		</div>
		<!-- Modal -->
<div style="text-align:center;">
<p style="width:500px; display: block; margin: 0px auto;">
${post.postDetail}
</p>
</div>
</form>
 </tr></tr></tr> </tr></tr>
   
  
 

<div class="container" style=" width:50%; display: block; margin: 0px auto;">
	<form id="commentForm" name="commentForm" method="post">
	 <!-- <div class="shadow-lg p-4 mb-2 bg-white author" style=" width:50%; display: block; margin: 0px auto;">  -->
		  <p><span ><strong>Comment</strong></span>  <span id="cCnt"></span></p> 
       <textarea style="width: 500px" rows="2" cols="50" id="commentDetail" name="commentDetail" placeholder="댓글을 입력하세요"></textarea>
                <!-- <div> -->
            <a href='#' onClick="fn_comment('${post.postNo}'); return false;" class="btn btn-link" style="text-decoration:none">등록</a>
               <!--  </div> -->
       
        <input type="hidden" id="postNo" name="commentPostNo" value="${post.postNo} " />   
        <input type="hidden" name="commentWriter" value="초초"> 
    </form>
			 
			</div>
		   </div><!--/ col-lg-3 -->
		   <div class="container"  style=" width:500px; display: block; margin: 0px auto;">
		    <form id="commentListForm" name="commentListForm" method="post">
		        <div id="commentList">
		       
		        </div>
    		</form>
		</div>
</div>
	</form>
	
 <script type="text/javascript">
 /* var slideIndex = 1;
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
 } */
 
/*  var aaa = document.getElementById('carousel-indicators');
 var bbb = aaa.firstChild.value; */
 
 /* .firstChild.val() */
 /* alert(aaa); */
/*  setAttribute("class","active"); */

$("#liList").addClass("active");
$('.carousel').carousel()
 
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
	              fn_sendNoticeMessage();
	            	 
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
	 
	 function fn_sendNoticeMessage(){
			
		    var noticeMessageType = '0';
			var noticeMessageDetail ="게시글에 댓글이 달렸어요~";
			var sender = "진구네나무#노진구";
			var postNo = $('input[name=commentPostNo]').val();
			var treeNo = $('input[name=treeNo]').val();
			
			alert(postNo);
			alert(treeNo);
			
			 
		    $.ajax({
		       
		        url : "/noticeMessage/json/sendNoticeMessage",
		        method :'POST',
		        data : JSON.stringify({noticeMessageType : noticeMessageType, noticeMessageDetail : noticeMessageDetail,
		        	sender : sender, postNo: postNo, treeNo : treeNo }),
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