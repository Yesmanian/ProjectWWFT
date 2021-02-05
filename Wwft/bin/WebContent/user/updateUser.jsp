<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원 정보 수정</title>
</head>
<body>
<h3>회원 정보 수정</h3>
<p>${user.userId} 님 로그인을 유지중</p>
<section id="container">
	<form action="/user/updateUser" method="post">
		<p>
			<label for="userid">아이디: ${user.userId}</label>
		</p>
		<div class="form-group has-feedback">
			<label class="control-label" for="password">패스워드</label>
			<input class="form-control" type="text" id="password" name="password" value="${user.password}">
		</div>
	
		
		<p>
			<label for="email">이메일: ${user.email}</label> 
		</p>
		 <p>
			<label for="treeName">나무 닉네임</label>
		</p>
		<p>
			<label for="treeAddress">나무 주소 </label>
		</p>
		  <p>
			<label>둥근씨앗</label> 
		</p>
			<div class="form-group has-feedback">
			<button class="btn btn-success" type="submit" id="submit">수정</button>
			<button class="cencle btn btn-danger" type="button">취소</button>
		</div>
	<a href="updateUser.jsp">수정</a>
	<a href="getUser.jsp">취소</a>
		
		
	
	
	</form>
</section>
</body>
</html>