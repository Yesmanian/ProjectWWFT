 <%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8"%>
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
</head>
 
<body>

	<header id="wrap"> 
        
        <jsp:include page="../common/navBar.jsp"/>

    </header>
    
    <form name = "detailForm" action="/post/getPostList">
    	<!-- 임시데이터 -->
    	<%-- <input type="hidden" name="treeNo" value="${post.postTreeNo}"> --%>
    	<%-- <input type="hidden" name="postTreeNo" value="${ }"> --%>
   		
<!-- Page Content -->
<div class="container">
	<%-- ${tree.treeNo }
	${param.postTreeNo} --%>
  <!-- <h1 class="font-weight-light text-center text-lg-left mt-4 mb-0"> -->
  	<input type="hidden" id="currentPage" name="currentPage" value=""/>
  	<input type="hidden" name="postTreeNo" value="${param.postTreeNo}">
  	<select class="form-control" name="sel" id ="sel" style="width: 50%">
  	
  			<option value="">기본</option>
  			<c:set var ="i" value ="0"/>
            <c:forEach var="item" items="${albumList}" begin="0" end="6" step="1">
            <%-- <c:set var ="i" value="${i+1}"/> --%>
                <option value ="${item}"  ${ ! empty search.searchKeyword && search.searchKeyword=='${item}' ? "selected" : "" }>${item}</option>
            </c:forEach>
        </select>
  <!-- </h1> -->
		 <!-- <button type="button"  onClick="location.href='/post/addPostView.jsp'"class="btn btn-primary">게시글 쓰기</button> -->
  
  
  <hr class="mt-2 mb-5">
  		<c:set var ="treeNo" value="${tree.treeNo }"/>
		<c:if test="${treeNo == param.postTreeNo}">
			<button type="button"  onClick="location.href='/post/addPostView.jsp'"class="btn btn-primary">게시글 쓰기</button>
		</c:if>
		  <div class="row text-center text-lg-left">
			<c:forEach var="post" items ="${list}">
		    <div class="col-lg-3 col-md-4 col-6" style="width:40%; height: 40%">
		     ${post.postRegDate} 
		      <a href="/post/getPost?postNo=${post.postNo}" class="d-block mb-4 h-70">
		            <img class="img-fluid img-thumbnail" src="/resources/images/uploadFiles/${post.firstImageName}" alt="" style="width: 400px; height: 200px;">
		      </a>
		     
		    </div>
	   </c:forEach> 

    
    </div> 
   </div>
   <div align="center" style="margin-top: 50px">
		<jsp:include page="../common/pageNavigator.jsp"/>
	</div>
<!-- /.container -->
 



 </form>



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
<script type="text/javascript">

$("#sel").change(function(){
   /*  var  searchCondition =  $("#sel option:Selected").val();
    alert(searchCondition); */
   /*  var searchKeyword = 'dddkdi'; */
     var searchKeyword = $("#sel option:Selected").val();
	alert(searchKeyword);
	 var postTreeNo = $("[name='postTreeNo']").val();
	/* var postTreeNo = '1'; */
	alert(postTreeNo);
	javascript:fncGetList('1'); 
	self.location ="/post/getPostList?postTreeNo="+postTreeNo+"&searchKeyword="+searchKeyword
})
  function fncGetList(currentPage){
	   document.getElementById("currentPage").value = currentPage;
  		document.detailForm.submit();
}


/* var 컨디션 = $  var()
atr */

</script>
</body>

</html>
