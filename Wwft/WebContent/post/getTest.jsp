<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<%--
<%@ page import="com.model2.mvc.service.domain.Product" %>

<%
	Product product = (Product)request.getAttribute("product");
%>
--%>
<html>
	<meta charset="EUC-KR">
	<head>

	<title>게시글 상세 조회</title>
	<link rel="stylesheet" href="/css/admin.css" type="text/css">
	
	<!-- CDN(Content Delivery Network) 호스트 사용 -->
	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
		
		//==> 추가된부분 : "수정" "확인"  Event 연결 및 처리
		 $(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			//==> 1 과 3 방법 조합 : $("tagName.className:filter함수") 사용함.	
			$( "td.ct_btn01:contains('확인')" ).on("click" , function() {
				location.href="/product/listProduct?menu=${param.menu}"
			});
			$( "td.ct_btn01:contains('수정')" ).on("click" , function() {
				location.href="/product/updateProduct?prodNo=${param.prodNo}&menu=${param.menu}"
			});
			
		});
	
	</script>
	
</head>

<body bgcolor="#ffffff" text="#000000">

<!-- <form name="detailForm" method="post"> -->
<form>
<div id="contents">
	<div class="r">
		<div>
			<div class="title_image">
				<c:choose>
					<c:when test="${p.user.profile_photo == null}">
						<a href="/main/user/${p.user.id}"> <img
							src="/images/noimage.png" class="tiny_image" align="left">
						</a>
					</c:when>
					<c:otherwise>
						<a href="/main/user/${p.user.id}"> 
							<img src="/images/profile/${p.user.profile_photo}" class="tiny_image" align="left">
						</a>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="userid_txt">
				<a href="/main/user/${p.user.id}">${p.user.userId}</a>
			</div>
		</div>
		<div id="gallery_wrap">
			<ul class="slide_gallery">
				<c:forEach var="img" items="${img}">
					<c:if test="${p.id == img.postId}">
						<li><img src="/images/${p.user.userId}/${img.filename}" class="imgg"></li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
		<div class="bar">
			<div class="like"></div>
		</div>
		<div class="write">
			<span>${p.description}</span>
		</div>
	</div>
	<div class="comment"></div>
</div>
<div id="footer">
	<%-- <%@ include file="../include/bottom.jsp"%> --%>
</div>
</form>

</body>
</html>