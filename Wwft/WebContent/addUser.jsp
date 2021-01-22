<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>
<form action="#" method="post">
		<p>
			<label for="name">아이디:</label>
			 <input id="name" type="text" name="userid">
			<input type="submit" value="ID중복 체크" />
		</p>
		<p>
			<label for="password">비밀번호:</label>
			 <input id="password" type="text" name="userpassword">
			 
		</p>
		<p>
			<label for="password">비밀번호 확인:</label>
			 <input id="password" type="text" name="userpassword">
		</p>
		<p>
			<label for="email">이메일:</label> 
			<input id="email" type="text" name="useremail">
			<input type="submit" value="e-mail중복 체크" />
			<input type="submit" value="e-mail인증" />
		</p>
		<p>
			<label for="code">인증코드</label>
			<input id="code" type="text" name="code">
			<input type="submit" value="인증확인" />
		</p>
		<p>
			<label for="treeName">나무 닉네임</label>
			<input id="treeName" type="text" name="text">
		</p>
		<p>
			<label for="treeAddress">나무 주소</label>
			<input id="treeAddress" type="text" name="text">
		</p>
		<p>
			<label>둥근씨앗</label> <label>네모씨앗</label> <label>세모씨앗</label>
		</p>
			<input id="seed1" type="radio" value="씨앗" name="seed">
			
			<input id="seed2" type="radio" value="씨앗1" name="seed">	
			
			<input id="seed3" type="radio" value="씨앗2" name="seed">
		<p>
		<input type="submit" value="회원가입 완료" /> <input type="submit" value="취소" />
	</p>
</form>
</body>
</html>