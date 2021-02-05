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
    
    <script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
  <script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
 <!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>  -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<style type="text/css">
	
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

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
<form action="uploadFormAction.jsp" method="post" enctype="multipart/form-data">
	<input type="hidden" name="postNo" value="${post.postNo}">
	<input type="hidden"  name="menu" value="${menu}" />


<div class="slideshow-container shadow-lg bg-white">
<c:set var ="i" value="0"/>
<c:forEach var="file" items="${fileList}">
	<c:set var ="i" value="${i+1}"/>
		<div class="mySlides fade">
		  <div class="numbertext">1 / 3</div>
		  <img src = "/resources/images/uploadFiles/${file}" style=" width:50%; display: block; margin: 0px auto;">
	</div>
</c:forEach>

  


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
</div>
<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

<!-- </div> -->
<br>

<div style="text-align:center">
  <span class="dot"  onclick="currentSlide(1)"></span> 
  <span class="dot"  onclick="currentSlide(2)"></span> 
  <span class="dot"  onclick="currentSlide(3)"></span> 
  
  <p style="display: block; margin: 0px auto;"><h4>${post.postRegDate}</h4> </p>
  <button type="button" class="btn btn-danger" style="">신고</button>
</div>

<div style="text-align:center;">
<p style="width:500px; display: block; margin: 0px auto;">
${post.postDetail}
</p>
</div>
</form>
 </tr></tr></tr> </tr></tr>
   
  
 

<div class="container" style=" width:50%; display: block; margin: 0px auto;">
	<form id="commentForm" name="commentForm" method="post">
	<div class="shadow-lg p-4 mb-2 bg-white author" style=" width:50%; display: block; margin: 0px auto;">
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