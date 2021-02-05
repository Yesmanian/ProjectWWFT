<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<!DOCTYPE html>

<html>
<head>
	<link rel="stylesheet" href="../resources/css/user/login.css" >
	<meta charset="EUC-KR">
	<title>로그인</title>
	<link rel="stylesheet" href="user.css">
	<script src="jquery-3.4.1.js"></script>
</head>
<body>
	
		<script>
			let user_id = $('#userId');
			let password = $('#password');
			let btn = $('#btn');
			
			$(btn).on('click', function() {
				if($(user_id).val() == "") {
					$(user_id).next('label').addClass('warning');
					setTimeout(function() {
						$('label').removeClass('warning');
					},1500);
				}
				else if($(password).val() == "") {
					$(password).next('label').addClass('warning');
					setTimeout(function(){
						$('label').removeClass('warning');
					},1500);
				}
			});
		</script>

	<section class="login-form">
			<h1>로그인</h1>
			<form action="/user/login" method="post">
				<div class="int-area">
					<input type="text" value="" name="userId" id="userId" 
					autocomplete="off"required> <label for="userId">아이디</label>
				</div>
				<div class="int-area">
					<input type="password" name="password" id="password"
						autocomplete="off" required><label for="password">패스워드</label>
				</div>
				<div class="btn-area">
					<button type="submit">login</button>
					</div>
				
				<div class="btn-area1">
					<input type="checkbox" id="chk1"> <label for="chk1">아이디 저장</label>
				</div>
			<div class="caption">
				<a href="/user/findId">아이디 찾기</a>
				<a href="/user/findPassword">비밀번호 찾기</a>
				<a href="/user/addUser">회원가입</a>
			</div>
			
	</form>
		</section>
	
		
</body>
</html>