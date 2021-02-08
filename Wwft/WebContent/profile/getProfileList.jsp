<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../resources/css/profile/getProfileList.css" >
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<meta charset="EUC-KR">
<title>프로필 목록</title>

</head>

<body>	
        <!-- 미리보기 공간 -->
	<h3>프로필 목록</h3>
	<ul>
		<c:forEach items="${getProfileList}" var="list" >
      <div class="product-item">
        <div class="image">
          <a href="/profile/getProfile?profileNo=${list.profileNo}&treeNo=${user.treeNo}"><img src="/resources/images/profile/fa.png" style="float:left" alt="Product 1" class="rounded-circle"></a>
        </div>
          <div class="name text-center">
          	${list.profileName}
          </div>
        </div>
		</c:forEach>
	</ul>
		
		
    <!--/ Product Item -->
          <div class="product-item">
        </div>
        <div class="image">
          <a href="/profile/addProfile"><img src="/resources/images/profile/412rXWdCJ7L.png" style="float:left" alt="Product 4"></a>
        </div>
          <div class="name text-center">
            <label for="profileNmae">프로필 생성</label>
          </div>
          
 	      <input type="button" value="프로필 관리" onclick="location='/profile/updateProfileList.jsp'"/>
          <input type="button" value="뒤로가기" onclick="goBack();"/>

		<img src="/resources/images/profile/fa.png" alt="Product" class="rounded-circle">
		
</body>
</html>