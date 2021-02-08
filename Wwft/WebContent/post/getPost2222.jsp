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
<style type="text/css">

.row-0 {
  .make-row();
  .col-0-0 {
    .make-md-column(8);
  }
}
.row-2 {
  .make-row();
  .col-2-0 {
    .make-xs-column(12);
    .make-md-column(1);
  }
  .col-2-1 {
    .make-md-column(6);
  }
  .col-1-2 {
    .make-md-column(1);
  }
}
.row-2 {
  .make-row();
  .col-2-0 {
    .make-md-column(1);
  }
  .col-2-1 {
    .make-md-column(6);
  }
  .col-2-2 {
    .make-md-column(1);
  }
}
.row-3 {
  .make-row();
  .col-3-0 {
    .make-md-column(1);
  }
  .col-3-1 {
    .make-md-column(6);
  }
  .col-3-2 {
    .make-md-column(1);
  }
}
.row-4 {
  .make-row();
  .col-4-0 {
    .make-md-column(1);
  }
  .col-4-1 {
    .make-md-column(6);
  }
  .col-4-2 {
    .make-md-column(1);
  }
}
.row-5 {
  .make-row();
  .col-5-0 {
    .make-md-column(1);
  }
  .col-5-1 {
    .make-md-column(6);
  }
  .col-5-2 {
    .make-md-column(1);
  }
}
.row-6 {
  .make-row();
  .col-6-0 {
    .make-md-column(1);
  }
  .col-6-2 {
    .make-md-column(5);
  }
  .col-6-2 {
    .make-md-column(1);
  }
  .col-6-3 {
    .make-md-column(1);
  }
}
.row-7 {
 .col-7-0 {
    .make-md-column(1);
  } .make-row();
  
  .col-7-1 {
    .make-md-column(6);
  }
  .col-7-2 {
    .make-md-column(1);
  }
}




  
</style>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha256-7dA7lq5P94hkBsWdff7qobYkp9ope/L5LQy2t/ljPLo=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.min.js" integrity="sha512-Zq2BOxyhvnRFXu0+WE6ojpZLOU2jdnqbrM1hmVdGzyeCa1DgM3X5Q4A/Is9xA1IkbUeDd7755dNNI/PzSf2Pew==" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossorigin="anonymous" />
</head>
 
<body>
<form action="uploadFormAction.jsp" method="post" enctype="multipart/form-data">

	<input type="hidden" name="postNo" value="${post.postNo}">
	<input type="hidden"  name="menu" value="${menu}" />
 
<%-- <c:forEach var="post" items ="${list}">
	
		<div class="card" style="width: 50%;">
			 <a href="/post/getPost?postNo=${post.postNo}"  class = btn pull-right btn-success style=text-decoration:none> 
			 <img src="/resources/images/uploadFiles/${post.firstImageName}" class="card-img-top" alt="..." style="width: 300px; height: 300px"></a>
			  <div class="card-body">
			    <p class="card-text">${post.postRegDate}</p>
			  </div>
		</div>

</c:forEach>  --%>


<div class="container">
    <div class="row-0">
        <div class="col-0-0"></div>
    </div>
    <div class="row-2">
        <div class="slideshow-container shadow-lg bg-white"></div>
        <div class="col-2-1">
        	<c:set var ="i" value="0"/>
			<c:forEach var="file" items="${fileList}">
			<c:set var ="i" value="${i+1}"/>
			<div class="mySlides fade">
		 		<div class="numbertext">1 / 3</div>
				<img src = "/resources/images/uploadFiles/${file}" style=" width:50%;  display: block; margin: 0px auto;">
			</div>
	
			</c:forEach>
        </div>
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
		<a class="next" onclick="plusSlides(1)">&#10095;</a>
        <div class="col-1-2">
        	 <button type="button" class="btn btn-danger" style="">신고</button>
        </div>
    </div>
    <div class="row-2">
        <div class="col-2-0"></div>
        <div class="col-2-1">
        	<c:set var ="i" value="0"/>
			<c:forEach var="file" items="${fileList}">
			<c:set var ="i" value="${i+1}"/>
			<span class="dot"  onclick="currentSlide(${i})"></span> 
			
		</c:forEach>
        </div>
        <div class="col-2-2"></div>
    </div>
    <div class="row-3">
        <div class="col-3-0"></div>
        <div class="col-3-1">
        	<p style="display: block; margin: 0px auto;"><h4>${post.postRegDate}</h4> </p>
        </div>
        <div class="col-3-2"></div>
    </div>
    <div class="row-4">
        <div class="col-4-0"></div>
        <div class="col-4-1">
        	<p style="width:500px; display: block; margin: 0px auto;">
				${post.postDetail}
			</p>
        </div>
        <div class="col-4-2"></div>
    </div>
    <div class="row-5">
    <form id="commentForm" name="commentForm" method="post">
        <div class="col-5-0"></div>
        <div class="col-5-1">
        	  <p><span ><strong>Comment</strong></span>  <span id="cCnt"></span></p> 
      
        </div>
        <div class="col-5-2">
        </div>
    
    <div class="row-6">
        <div class="col-6-0"></div>
        <div class="col-6-2">
        	 <textarea style="width: 500px" rows="2" cols="50" id="commentDetail" name="commentDetail" placeholder="댓글을 입력하세요"></textarea>
        </div>
        <div class="col-6-2"></div>
        <div class="col-6-3">
        	<a href='#' onClick="fn_comment('${post.postNo}'); return false;" class="btn btn-link" style="text-decoration:none">등록</a>
               <!--  </div> -->
               
	        <input type="hidden" id="postNo" name="commentPostNo" value="${post.postNo} " />   
	        <input type="hidden" name="commentWriter" value="초초">
        </div>
    </div>
    </form>
    </div>
    <div class="row-7">
     	<form id="commentListForm" name="commentListForm" method="post">
	        <div class="col-7-0"></div>
	        <div class="col-7-1" id="commentList"
	        
	        ></div>
	        <div class="col-7-2"></div>
	    </form>
    </div>
</div>
</form>
<%-- 
<div class="card1" style="width: 20rem;">
			 <a href="/post/getPost?postNo=${post.postNo}"   class = btn pull-right btn-success style=text-decoration:none> 
			 <img src="/resources/images/uploadFiles/${post.firstImageName}" class="card-img-top" alt="..." style="width: 300px; height: 300px"></a>
			  <div class="card-body">
			    <p class="card-text">${post.postRegDate}</p>
			  </div>
		</div>
 --%>






<!-- <script type="text/javascript">
/* window.onload = function(){

	var a = document.getElementById( 'hel' );

	a.style.color = "blue"

	} */
$(function(){
    $(".filtering").on("click", "span", function () {
        var a = $(".gallery").isotope({});
        alert(JSON.stringify($(this)));
        var e = $(this).attr("data-filter");
        a.isotope({ filter: e });
    });
    $(".filtering").on("click", "span", function () {
        $(this).addClass("active").siblings().removeClass("active");
    });
}) 
</script>  -->
<!-- <script type="text/javascript">



</script> -->
</body>

</html>
