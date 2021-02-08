<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내정보보기</title>
	<script type="text/javascript">
		
	</script>

</head>
<body>
<form action="/user/getUser" method="get">
<h3>내정보보기</h3>
		<p>
			<label for="userId">아이디: ${user.userId}</label>
		</p>
		
		<p>
			<label for="password">비밀번호: ${user.password}</label>
			 
		</p>
		<p>
			<label for="email">이메일: ${user.email}</label> 
		</p>
		 <p>
			<label for="treeName">나무 닉네임 : ${tree.treeName}</label>
		</p>
		<p>
			<label for="countryId">나무 주소  : ${tree.countryId}</label>
		</p>
		  <p>
			<label>둥근씨앗</label> 
		</p>
		<p>
			<input id="seed1" type="radio" value="씨앗" name="seed">
		</p>
	
		<p>
		<input type="submit" value="수정" /> <input type="submit" value="취소" /> <input type="submit" value="회원탈퇴" />
		</p>

</form>
</body>
</html>