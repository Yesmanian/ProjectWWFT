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




.row-0 {
  .make-row();
  .col-0-1 {
    .make-md-column(2);
  }
  .col-0-1 {
    .make-md-column(8);
  }
  .col-0-2 {
    .make-md-column(2);
  }
  .col-0-3 {
    .make-md-column(2);
  }
  .col-0-4 {
    .make-md-column(8);
  }
  .col-0-5 {
    .make-md-column(2);
  }
  .col-0-6 {
    .make-md-column(2);
  }
  .col-0-7 {
    .make-md-column(8);
  }
  .col-0-8 {
    .make-md-column(2);
  }
}
.row-1 {
  .make-row();
  .col-2-0 {
    .make-md-column(2);
  }
  .col-2-1 {
    .make-md-column(8);
  }
  .col-2-2 {
    .make-md-column(2);
  }
  .col-2-3 {
    .make-md-column(2);
  }
  .col-2-4 {
    .make-md-column(8);
  }
  .col-2-5 {
    .make-md-column(2);
  }
}
.row-2 {
  .make-row();
  .col-2-0 {
    .make-md-column(2);
  }
  .col-2-1 {
    .make-md-column(8);
  }
  .col-2-2 {
    .make-md-column(2);
  }
  .col-2-3 {
    .make-md-column(2);
  }
  .col-2-4 {
    .make-md-column(8);
  }
  .col-2-5 {
    .make-md-column(2);
  }
  .col-2-6 {
    .make-md-column(2);
  }
  .col-2-7 {
    .make-md-column(8);
  }
  .col-2-8 {
    .make-md-column(2);
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


<div class="container">
    <div class="row-0">
        <div class="col-0-1"></div>
        <div class="col-0-1"></div>
        <div class="col-0-2"></div>
        <div class="col-0-3"></div>
        <div class="col-0-4"></div>
        <div class="col-0-5"></div>
        <div class="col-0-6"></div>
        <div class="col-0-7"></div>
        <div class="col-0-8"></div>
    </div>
    <div class="row-1">
        <div class="col-2-0"></div>
        <div class="col-2-1"></div>
        <div class="col-2-2"></div>
        <div class="col-2-3"></div>
        <div class="col-2-4"></div>
        <div class="col-2-5"></div>
    </div>
    <div class="row-2">
        <div class="col-2-0"></div>
        <div class="col-2-1"></div>
        <div class="col-2-2"></div>
        <div class="col-2-3"></div>
        <div class="col-2-4"></div>
        <div class="col-2-5"></div>
        <div class="col-2-6"></div>
        <div class="col-2-7"></div>
        <div class="col-2-8"></div>
    </div>
</div>
 
<c:forEach var="post" items ="${list}">
	
		<div class="card" style="width: 50%;">
			 <a href="/post/getPost?postNo=${post.postNo}"  class = btn pull-right btn-success style=text-decoration:none> 
			 <img src="/resources/images/uploadFiles/${post.firstImageName}" class="card-img-top" alt="..." style="width: 300px; height: 300px"></a>
			  <div class="card-body">
			    <p class="card-text">${post.postRegDate}</p>
			  </div>
		</div>

</c:forEach> 


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
