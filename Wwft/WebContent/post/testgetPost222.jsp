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
<title>getPostList</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha256-7dA7lq5P94hkBsWdff7qobYkp9ope/L5LQy2t/ljPLo=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.min.js" integrity="sha512-Zq2BOxyhvnRFXu0+WE6ojpZLOU2jdnqbrM1hmVdGzyeCa1DgM3X5Q4A/Is9xA1IkbUeDd7755dNNI/PzSf2Pew==" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossorigin="anonymous" />
<style type="text/css">
/*card-header{
 background:#eee;
    margin-top:10px;

}*/

 
  .carousel-inner {
    width: 100%;
    max-height: 600px !important;
  } 









/*  .container {
    background-color: #fafafa;
    padding: 0;
    margin: 0;
     width: 900px; 
    height: 500px;
} 
 .row{
	
	height: 500px;
}
.col-md-2
.col-md-8
.col-md-2{
	height: 500px;

} */

/*  .carouselExampleIndicators{
 
 	width: 900px;
    height: 500px;
 } */
  
/* .carousel-indicators{
	width: 730px;
}  */

/*
 .carousel-inner /* > .carousel-item > img */{
		 /*  width: 3%; */
	/*	height: 700px; 
		padding: 7em;
		background-color: #DCDCDC	;
 } 
 */
/* .carousel-item {
		width: 5%;
		height: 400px; 
		padding: 4em;
 } 

   .carousel-control-prev,
  .carousel-control-next {

       height: 200px;
 	 
 	
 } 
  
      .carousel-inner > .item > img {
      top: 0;
      left: 0;
      min-width: 50%;
      min-height: 100px;
    }  */

 /*  .carousel-control-prev,
  .carousel-control-next{
  	background-image: 
  	url("data:image/svg+xml;charset=utf8,%3Csvg 
  	xmlns='http://www.w3.org/2000/svg' 		
  	fill='%23c593d8' viewBox='0 0 8 8'%3E%3Cpath 
  	d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-			
  	4z'/%3E%3C/svg%3E"); */
</style>










</head>
 
<body>
<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">WWFT</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      
      <li class="nav-item">
        <a class="nav-link" href="#">
			<img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/fox.jpg" width="40" height="40" class="rounded-circle">
		</a>
      </li> 
      <li>
      </li>
      <li class="nav-item dropdown ">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">My Tree</a>
          <a class="dropdown-item" href="#">Search</a>
          <a class="dropdown-item" href="#">Change Profile</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Logout</a>
        </div>
      </li>
      
    </ul>
    
  </div>
</nav>

</header>


 
 <div class="container">
    	<div class="page-header">
       
      
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          
          <div class="item active">
            <img data-src="./Forest Flowers.jpg" width="1500" height="500" alt="First slide">
          </div>
         
          <div class="item">
            <img data-src="/resources/images/uploadFiles/6ddb9e05-9fa7-42db-8bb6-68b606f78b5a_14.jfif" width="1500"  height="500" alt="Second slide">
          </div>
         
          <div class="item">
            <img data-src="/resources/images/uploadFiles/6ddb9e05-9fa7-42db-8bb6-68b606f78b5a_11.jfif" width="1500"  height="500" alt="Third slide">
          </div>
        </div>
       
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
          <span class="/resources/images/uploadFiles/6ddb9e05-9fa7-42db-8bb6-68b606f78b5a_10.jfif" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    	
    
    
    </div>
    </div>
     <br/><br>  

 


<div class="container">
<div class="row">
<div class="col-md-1">
</div>
<div class ="col-md-10">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active w-5 h-5">
      <img src="/resources/images/uploadFiles/6ddb9e05-9fa7-42db-8bb6-68b606f78b5a_14.jfif" class="d-block w-100 h-100" alt="...">
    </div>
    <div class="carousel-item w-5 h-5">
      <img src="/resources/images/uploadFiles/6ddb9e05-9fa7-42db-8bb6-68b606f78b5a_11.jfif" class="d-block w-100 h-100" alt="...">
    </div>
    <div class="carousel-item w-5 h-5">
      <img src="/resources/images/uploadFiles/6ddb9e05-9fa7-42db-8bb6-68b606f78b5a_10.jfif" class="d-block w-100 h-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>
</div>
</div>
<div class="col-md-1"></div>
</div>
<%-- 
<div class="card1" style="width: 20rem;">
			 <a href="/post/getPost?postNo=${post.postNo}"   class = btn pull-right btn-success style=text-decoration:none> 
			 <img src="/resources/images/uploadFiles/${post.firstImageName}" class="card-img-top" alt="..." style="width: 300px; height: 300px"></a>
			  <div class="card-body">
			    <p class="card-text">${post.postRegDate}</p>
			  </div>
		</div>
 --%>


<%-- <div style="text-align:center">
		<c:set var ="i" value="0"/>
		<c:forEach var="file" items="${fileList}">
			<c:set var ="i" value="${i+1}"/>
			<span class="dot"  onclick="currentSlide(${i})"></span> 
			
		</c:forEach> --%>



<!-- 
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

</script> -->
</body>

</html>
