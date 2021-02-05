<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내정보보기</title>
	<script type="text/javascript">
		
		//==>"수정" "확인"  Event 연결 및 처리
		 $(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			//==> 1 과 3 방법 조합 : $("tagName.className:filter함수") 사용함.	
			 $( "td.ct_btn01:contains('확인')" ).on("click" , function() {
				Debug..
				alert(  $( "td.ct_btn01:contains('확인')" ).html() );
				history.go(-1);
			});
			
			 $( "td.ct_btn01:contains('수정')" ).on("click" , function() {
					Debug..
					alert(  $( "td.ct_btn01:contains('수정')" ).html() );
					self.location = "/user/updateUser?userId=${user.userId}"
				});
		});
		
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
			<label for="treeName">나무 닉네임</label>
		</p>
		<p>
			<label for="treeAddress">나무 주소 </label>
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
	<a href="/user/updateUser">수정</a>
	<a href="/uesr/loginOk">취소</a>
	<a href="/user/removeUser">회원탈퇴</a>

</form>
</body>
</html>