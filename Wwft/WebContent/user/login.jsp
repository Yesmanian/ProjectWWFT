<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="EUC-KR">
	<title>로그인</title>
</head>

<style>
 * {margin: 0; padding: 0; box-sizeing:border-box;}

		body {
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100vh;
			background-image: url("/resources/images/profile/tree-4637270_1280.png");
			background-size: cover;
		}
		
		.login-form{position: relative; z-index: 2;}
		.login-form h1 {
			font-size: 32px; color:#fff;
			text-align: center;
			margin-bottom: 60px;
		}	
		.int-area{
			width: 400px; position: relative;
			margin-top: 20px;		
		}
				
		.int-area:first-child {margin-top: 0;}
		.int-area input {
			width: 100%;
			padding: 20px 10px 10px;
			background-color: transparent;
			border: none;
			border-bottom: 1px solid #fff;
			font-size: 18px; color: #fff;
			ouline: none;
		}
		.btn-area1{
			color: #fff;
		}
		
		.int-area label {
			position: absolute; left: 10px; top: 15px;
			font-size: 18px; color: #fff;
			transition: all .5s ease;
		} 
		.int-area label.warning {
			color:red;
			animation: warning .3s ease;
			animation-iteration-count: 3;
			
		}
		@keyframes warning {
			0% {transform: translateX(-8px);}
			25% {transform: translateX(8px);}
			50% {transform: translateX(-8px);}
			75% {transform: translateX(-8px);}
		}
		
		.int-area input:focus + label,
		.int-area input:valid + label {
			top: 0;
			font-size: 13px; color: #166cea;
		}
		
		.btn-area {margin-top: 30px;}
		.btn-area button {
			width: 100%; height: 50px;
			background: #166cea;
			color: #fff;
			font-size: 20px;
			border: none;
			border-radius: 25px;
			cusor: pointer;
		}
		
		.caption {
			margin-top: 20px;
			text-align: center;
		}
		.caption a {
			font-size: 15px; color: #999;
			text-decoration: none;
		}
			
				
		
		
		
</style>
<body>


		<section class="login-form">
			<h1>로그인</h1>
			<form action="/user/login" method="post">
			
				<div class="int-area">
					<input type="text" name="userId" id="userId" autocomplete="off"
						required> <label for="userId">아이디</label>
				</div>
				<div class="int-area">
					<input type="password" name="password" id="password"
						autocomplete="off" required><label for="password">패스워드</label>
				</div>
				<div class="btn-area">
					<button type="submit">로그인</button>
				</div>
				<div class="btn-area1">
					<input type="checkbox" id="chk1"> <label for="chk1">아이디 저장</label>
				</div>
			</form>
			<div class="caption">
				<a href="findId.jsp">아이디 찾기</a>
				<a href="findPassword.jsp">비밀번호 찾기</a>
				<a href="addUser.jsp">회원가입</a>
			</div>
		</section>
		
		<script>
			let user_id = $('#userId');
			let password = $('#password');
			let btn = $('#btn');
			
			$(btn).on('click',function() {
				if($(id).val() == "") {
					$(userId).next('label').addClass('warning');
					setTimeout(function(){
						$('label').removeClass('warning');
					},1500);
				}
				else if($(pw).val() = "") {
					$(password).next('label').addClass('warning');
					setTimeout(function(){
						$('label').removeClass('warning');
					},1500);
				}
			});
		</script>
		
</body>
</html>