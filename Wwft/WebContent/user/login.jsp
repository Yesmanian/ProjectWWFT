<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
        
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        
	<link rel="stylesheet" href="../resources/css/user/login.css" >
	<meta charset="EUC-KR">
	<title>로그인</title>
	<link rel="stylesheet" href="user.css">
	<script src="jquery-3.4.1.js"></script>
</head>
<body>
<script type="text/javascript">
    console.log("fighting!");
    console.log(document); // html 태그 전체를 콘솔에 띄워주자.

    var signinButton = document.getElementById("signinButton") // 버튼을 만들고.
    signinButton.addEventListener('click', signinFunc) // 'click'이란 id의 버튼을 누르면 signinFunc 함수를 실행.

    function signinFunc () {
      var userId = document.getElementById("userId").value; // userid 의 값을 받아와 넣음.
      var password = document.getElementById("password").value; // userpw 의 값을 받아와 넣음.


      if(user_id == $("#userId").val() && password == $("#password").val() ){
        alert("로그인 성공");
        console.log("로그인 성공했습니다.");
      } else {
        alert("로그인 실패");
        console.log("로그인 실패했습니다.");
      }

    }

  </script>
		


	<section class="login-form">
			<h1>로그인</h1>
			<form action="/user/login" method="post">
				<div class="int-area">
					<input type="text" value="" name="userId" id="userId" 
					autocomplete="off"required> <label for="userId" >아이디</label>
				</div>
				<div class="int-area">
					<input type="password" name="password" id="password"
						autocomplete="off" required><label for="password">패스워드</label>
				</div>
				<div class="btn-area">
					<button type="submit">login</button>
					</div>
				
			<div class="caption">
				<a href="/user/addUser">회원가입</a>
			</div>
			
	</form>
</section>

	
</body>
</html>