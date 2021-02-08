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
  .make-row();
  .col-7-0 {
    .make-md-column(1);
  }
  .col-7-1 {
    .make-md-column(6);
  }
  .col-7-2 {
    .make-md-column(1);
  }
}

/*card-header{
 background:#eee;
    margin-top:10px;

}*/



/* body{
    background:#eee;
    margin-top:20px;} */
/*------- portfolio -------*/
/* .project {
  margin: 15px 0;
}

.no-gutter .project {
  margin: 0 !important;
  padding: 0 !important;
}

.has-spacer {
  margin-left: 30px;
  margin-right: 30px;
  margin-bottom: 30px;
}

.has-spacer-extra-space {
  margin-left: 30px;
  margin-right: 30px;
  margin-bottom: 30px;
}

.has-side-spacer {
  margin-left: 30px;
  margin-right: 30px;
}

.project-title {
  font-size: 1.25rem;
}

.project-skill {
  font-size: 0.9rem;
  font-weight: 400;
  letter-spacing: 0.06rem;
}

.project-info-box {
  margin: 15px 0;
  background-color: #fff;
  padding: 30px 40px;
  border-radius: 5px;
}

.project-info-box p {
  margin-bottom: 15px;
  padding-bottom: 15px;
  border-bottom: 1px solid #d5dadb;
}

.project-info-box p:last-child {
  margin-bottom: 0;
  padding-bottom: 0;
  border-bottom: none;
}

/*--- default effect ---*/
/* .hovereffect {
  width: 100%;
  height: 100%;
  float: left;
  overflow: hidden;
  position: relative;
  text-align: center;
  z-index: 2;
}

.hovereffect .overlay {
  width: 100%;
  height: 100%;
  position: absolute;
  overflow: hidden;
  top: 0;
  left: 0;
  opacity: 0;
  background-color: rgba(0, 0, 0, 0.25);
  -webkit-transition: all .3s ease-in-out;
  transition: all .3s ease-in-out;
  border-radius: 5px;
}

.primary-dark .hovereffect .overlay {
  background-color: rgba(215, 48, 39, 0.95);
}

.white .hovereffect .overlay {
  background-color: rgba(255, 255, 255, 0.75);
}

.dark-overlay .hovereffect .overlay {
  background-color: rgba(0, 0, 0, 0.5);
}

.hovereffect img {
  display: block;
  position: relative;
  -webkit-transition: all .3s linear;
  transition: all .3s linear;
  border: 10px solid #fff;
  border-radius: 5px;
}

.no-image-border .hovereffect img {
  border: none;
  border-radius: 5px;
}

.no-image-border.no-gutter .hovereffect img, .no-image-border.no-gutter .hovereffect .overlay {
  border: none;
  border-radius: 0;
}

.hovereffect:hover img {
  -webkit-transform: rotate(-7deg) scale(1.33);
  -ms-transform: rotate(-7deg) scale(1.33);
  transform: rotate(-7deg) scale(1.33);
}

.hovereffect-title .project-title-wrapper {
  position: absolute;
  top: 45%;
  left: 0;
  margin-top: -32px;
  width: 100%;
  padding: 10px;
  -webkit-transition: all .5s ease-in-out;
  transition: all .5s ease-in-out;
}

.project:hover .hovereffect-title .project-title-wrapper {
  top: 50%;
}

.hovereffect-title .project-title {
  color: #fff;
  background: transparent;
  margin-bottom: 5px;
}

.white .hovereffect-title .project-title {
  color: #171819;
}

.hovereffect-title p {
  color: #fff;
  background: transparent;
  font-size: 12px;
  margin: 0;
}

.white .hovereffect-title p {
  color: #686c6d;
}

.hovereffect-title .hover-icons {
  font-size: 16px;
  background: transparent;
  position: absolute;
  bottom: 10%;
  left: 0;
  right: 0;
  -webkit-transition: all .3s ease-in-out;
  transition: all .3s ease-in-out;
}

.project:hover .hovereffect-title .hover-icons {
  bottom: 15%;
}

.hovereffect-title .hover-icons a {
  color: #fff;
}

.white .hovereffect-title .hover-icons a {
  color: #171819;
}

.hovereffect-title.project-icons {
  position: absolute;
  right: 0;
  bottom: -10px;
  -webkit-transition: all .5s ease-in-out;
  transition: all .5s ease-in-out;
}

.project:hover .hovereffect-title.project-icons {
  bottom: 0;
}

.hovereffect-title.project-icons a {
  display: inline-block;
  position: relative;
  color: #fff;
  font-size: 11px;
  line-height: 40px;
  width: 45px;
  height: 38px;
  background: #8e9294;
  opacity: 0.75;
}

.hovereffect-title.project-icons a i {
  margin-right: -2px;
}

.hovereffect-title.project-icons a:first-child {
  background-color: #7c8284;
  margin-right: -4px;
}

.project-icons a:hover, .project-icons a:first-child:hover {
  background-color: #505254 !important;
  opacity: 1;
}

.hovereffect-title.project-icons .hover-icons {
  color: #fff;
  position: relative;
  top: 0;
  left: 0;
  right: 0;
  margin-top: 0;
  opacity: 1;
}

.hovereffect-title.project-icons a:hover {
  background: #931c19;
}

.primary-dark .project-icons a {
  color: #d73027;
  background-color: #fff;
}

.primary-dark .project-icons a:hover {
  background-color: #efefef;
}

.primary-dark .project-icons a:hover {
  color: #fff;
}

.primary-dark .hovereffect-title.project-icons .hover-icons {
  color: #d73027;
}

.white .hovereffect-title .hover-icons {
  color: #171819;
}

.white .hovereffect-title.project-icons .hover-icons {
  color: #171819;
}

.hovereffect-title .hover-icons a {
  opacity: 0.7;
  margin: 0 4px;
}

.hovereffect-title .hover-icons a {
  opacity: 0.7;
}

.hovereffect-title .hover-icons a:hover {
  opacity: 1;
}

.hovereffect:hover .overlay {
  opacity: 1;
  filter: alpha(opacity=100);
}

.boxed-portfolio .card {
  background-color: #fff;
  -webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.025), 0 1px 4px rgba(0, 0, 0, 0.05) !important;
  box-shadow: 0 1px 4px rgba(0, 0, 0, 0.025), 0 1px 4px rgba(0, 0, 0, 0.05) !important;
}

.boxed-portfolio .hovereffect img, .boxed-portfolio .hovereffect .overlay {
  border: none;
  border-bottom-left-radius: 0;
  border-bottom-right-radius: 0;
}

.boxed-portfolio .card-body {
  padding: 25px 30px;
  border-top: 1px solid #efefef;
}

/*--- end of default effect ---*/
/*--- portfolio-filter ---*/
/* .portfolio-filter {
  padding: 20px 0;
}

.no-gutter .portfolio-filter {
  margin-bottom: 30px;
}

.portfolio-filter.list-inline li {
  display: inline-block;
  color: #fff;
  font-size: 1rem;
  padding: 0;
  margin-right: 7px;
}

.portfolio-filter a {
  color: #d5dadb;
  background-color: #7c8284;
  font-family: "Barlow", sans-serif !important;
  font-size: 0.75rem;
  font-weight: 400;
  letter-spacing: 0.06rem;
  line-height: 40px;
  border-radius: 2px;
  margin: 0;
  padding: 6px 24px;
  border-radius: 50px;
  opacity: 1 !important;
}

.portfolio-filter a:hover {
  color: #d5dadb;
  background-color: #252728;
}

.portfolio-filter a.active {
  color: #fff;
  background-color: #d73027;
}

#portfolio-slider .project {
  max-width: 900px;
  margin: 0 auto;
}
img {
    width: 100%;
    max-width: 100%;
    height: auto;
    -webkit-backface-visibility: hidden;
} */
  
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
        	 <button type="button" class="btn btn-danger" style="">�Ű�</button>
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
        	 <textarea style="width: 500px" rows="2" cols="50" id="commentDetail" name="commentDetail" placeholder="����� �Է��ϼ���"></textarea>
        </div>
        <div class="col-6-2"></div>
        <div class="col-6-3">
        	<a href='#' onClick="fn_comment('${post.postNo}'); return false;" class="btn btn-link" style="text-decoration:none">���</a>
               <!--  </div> -->
               
	        <input type="hidden" id="postNo" name="commentPostNo" value="${post.postNo} " />   
	        <input type="hidden" name="commentWriter" value="����">
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