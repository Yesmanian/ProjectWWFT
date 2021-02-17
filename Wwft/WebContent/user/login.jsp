<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Rowdies:wght@700&display=swap" rel="stylesheet">        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        
	<link rel="stylesheet" href="../resources/css/user/login.css" >
	<meta charset="EUC-KR">
	<title>로그인</title>
	
	<!-- <script src="jquery-3.4.1.js"></script> -->
</head>
<body>
	<jsp:include page="../user/userModal.jsp"/>

<script type="text/javascript">

	$(document).ready(function(){
		//아이디 비밀번호 라디오체크시 모달 바디 변경
		$(document).on('change',"input[name=findRadio]",function(){

			alert($(this).val());
			if($(this).val()=='0'){
				// alert('id찾기')
				// $('.email-form').show();
				$('#id-form').hide();

			}else{
				// alert('pw찾기')
				$('#id-form').show();

			}
		})// /change

		$(document).on('click','#confirm1', function(){
			alert($('input[name=findRadio]:checked').val())

			if($('input[name=findRadio]:checked').val()=='0'){//id찾기 email을 비교해 email에 맞는 id를 찾아서 alert창으로 띄워준다
				// alert('아이디찾기')
			let email = $('#email').val();
				// alert(email)
				//아이디 찾기일때 전송을 누르면 id찾아서 alert창으로 띄워줌 
	// 			$.ajax({
	//         url: `/user/json/emailCheck`,
	//         type: 'POST',
	//         data: JSON.stringify({ email: email }),
	//         dataType: 'json',
	//         headers: {
	//                      "Accept": "application/json",
	//                     "Content-Type": "application/json"

	//                      },
	//     success: function (data, status) {
	// 	}

	// })// /id찾기 끝


			}else{//비밀번호 찾기 id와 email을 비교해서 true false를 리턴 받는다
				let email = $('#email').val();
				let userId = $('#id').val();
				// alert(email+userId);
			}


		})

	})



  </script>
		


	<section class="login-form">
			<P style="text-align: center;margin-block: revert;margin-top: -100;margin-bottom: -50px;">Login</p>
			<form action="/user/login" method="post" style="margin-top: 0px;padding-top: 100px;">
				<div class="int-area">
					<input type="text" value="" name="userId" id="userId" 
					autocomplete="off"required> <label for="userId" >아이디</label>
				</div>
				<div class="int-area">
					<input type="password" name="password" id="password"
						autocomplete="off" required><label for="password">패스워드</label>
				</div>
				<div class="btn-area" style="text-align-last: center;">
					<button type="submit" style="background: border-box;">
					<h5>Login</h5></button>
					
					</div>
				
			<div class="caption">
				<a href="/user/addUser"   style="text-decoration: none;color: white;"><h5>Sign up</h5></a>
			</div>
			
			<div class="btn-area" style="text-align-last: center;">
				<button type="button" data-toggle="modal" data-target="#findModal" id="find" style="background: border-box;">
					<h5>Forgot ID/PW?</h5></button>
			</div>
	</form>
</section>




	
</body>
</html>