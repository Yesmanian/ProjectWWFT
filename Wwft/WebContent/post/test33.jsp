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
/*card-header{
 background:#eee;
    margin-top:10px;

}*/



  
</style>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha256-7dA7lq5P94hkBsWdff7qobYkp9ope/L5LQy2t/ljPLo=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.min.js" integrity="sha512-Zq2BOxyhvnRFXu0+WE6ojpZLOU2jdnqbrM1hmVdGzyeCa1DgM3X5Q4A/Is9xA1IkbUeDd7755dNNI/PzSf2Pew==" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossorigin="anonymous" />
</head>
 
<body>


<div class="card text-center">
  <div class="card-header">
    <ul class="nav nav-pills card-header-pills">
      <li class="nav-item">
        <a class="nav-link active" href="#">제주도</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">가족</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">보라카이</a>
      </li>
    </ul>
  </div>
  <div class="card-body">
  
  		<div class="card-group">
  		
  		<div class="card-deck">
		  <div class="card border-info mb-3">
		    <img src="/resources/images/uploadFiles/98c9c7a5-ba24-41e1-9b3a-a92c41da2943_2.jfif" class="card-img-top rounded" alt="...">
		   <!--  <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		    </div> -->
		    <div class="card-footer">
		      <small class="text-muted">Last updated 3 mins ago</small>
		    </div>
		  </div>
		  <div class="card">
		    <img src="/resources/images/uploadFiles/98c9c7a5-ba24-41e1-9b3a-a92c41da2943_4.jfif" class="card-img-top" alt="...">
		    <!-- <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
		    </div> -->
		    <div class="card-footer">
		      <small class="text-muted">Last updated 3 mins ago</small>
		    </div>
		  </div>
		  <div class="card">
		    <img src="/resources/images/uploadFiles/98c9c7a5-ba24-41e1-9b3a-a92c41da2943_9.jpg" class="card-img-top" alt="...">
		    <!-- <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
		    </div> -->
		    <div class="card-footer">
		      <small class="text-muted">Last updated 3 mins ago</small>
		    </div>
		  </div>
		</div>
</div>
    
    	<div class="row row-cols-1 row-cols-md-2">
  <div class="col mb-4" style=" display: inline-block">
    <div class="card" style="width: 15rem;">
      <img src="/resources/images/uploadFiles/98c9c7a5-ba24-41e1-9b3a-a92c41da2943_2.jfif" class="card-img-top" alt="..." style="width: 80; height: 50">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card" style="width: 15rem;">
      <img src="/resources/images/uploadFiles/98c9c7a5-ba24-41e1-9b3a-a92c41da2943_4.jfif" class="card-img-top" alt="..." >
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card" style="width: 15rem;">
      <img src="/resources/images/uploadFiles/98c9c7a5-ba24-41e1-9b3a-a92c41da2943_9.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
      </div>
    </div>
  </div>
  <div class="col mb-4">
    <div class="card" style="width: 15rem;">
      <img src="/resources/images/uploadFiles/98c9c7a5-ba24-41e1-9b3a-a92c41da2943_10.jfif" class="card-img-top" alt="...">
      <div class="card text-right">
        <!-- <h5 class="card-title">Card title</h5> -->
        <p class="card-text">2021-02-05</p>
      </div>
    </div>
  </div>
</div>
  </div>
</div>

 
<%-- <c:forEach var="post" items ="${list}">
	
		<div class="card" style="width: 50%;">
			 <a href="/post/getPost?postNo=${post.postNo}"  class = btn pull-right btn-success style=text-decoration:none> 
			 <img src="/resources/images/uploadFiles/${post.firstImageName}" class="card-img-top" alt="..." style="width: 300px; height: 300px"></a>
			  <div class="card-body">
			    <p class="card-text">${post.postRegDate}</p>
			  </div>
		</div>

</c:forEach>  --%>


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
<script type="text/javascript">



</script>
</body>

</html>
