<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내정보보기</title>

</head>
<body>
<form action="/user/getUser" method="post">
<h3>내정보보기</h3>
		<p>
			<label for="userid">아이디: ${user.userId}</label>
		</p>
		
		<p>
			<label for="password">비밀번호: ${user.password}</label>
			 
		</p>
		 <p>
			<label for="password">비밀번호 확인: ${user.password}</label>
		</p> 
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
			<label>둥근씨앗</label> <label>네모씨앗</label> <label>세모씨앗</label>
		</p>
		<p>
			<input id="seed1" type="radio" value="씨앗" name="seed">
			
			<input id="seed2" type="radio" value="씨앗1" name="seed">	
			
			<input id="seed3" type="radio" value="씨앗2" name="seed">
		</p>
	
		<p>
		<input type="submit" value="수정" /> <input type="submit" value="취소" /> <input type="submit" value="회원탈퇴" />
		</p>
	<a href="updateUser.jsp">수정</a>
	<a href="loginOk.jsp">취소</a>
	<a href="removeUser.jsp">회원탈퇴</a>

</form>
</body>
</html>