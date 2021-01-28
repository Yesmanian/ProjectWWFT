<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html>
<head>

<meta charset="EUC-KR">
<title>로그인완료</title>
</head>
<body>


<form action="/user/logout" method="post">
	<h3>로그인 완료</h3>
		<p>${user.userId} 님 로그인을 환영합니다</p>
		
	
<ul class="dropdown-menu">
	<li><a href="getUser.jsp">내정보보기</a></li>
	<li><a href="getUserList.jsp">회원목록</a></li>
	<li><a href="login.jsp">로그아웃</a></li>
</ul>	
</form>
</body>
</html>