<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
	<!DOCTYPE html>
	<html>
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door-fill"
		viewBox="0 0 16 16">
		<path
			d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5z" />
	</svg>

	<head>
		<link rel=”stylesheet” href=”http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css“>
		<meta charset="EUC-KR">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>회원가입</title>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"
			id="bootstrap-css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
		<script  src="https://code.jquery.com/jquery-3.5.1.min.js"  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="  crossorigin="anonymous"></script>
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		
		<!------ Include the above in your HEAD tag ---------->

		
		
		
	</head>

	<script>

		$(document).ready(function () {

			//email 유효성 체크
			function chkEmail(str) {

			var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

			if (regExp.test(str)) return true;

			else return false;

			}// /email 유효성 체크 







			let joinCode;
			let checkAjaxSetTimeout;
			$(document).on("keyup","input[name=userId]",function() {
				clearTimeout(checkAjaxSetTimeout);
				if($(this).val().length>=6){
				let userId = $(this).val()
				checkAjaxSetTimeout = setTimeout(function(){
					

					$.ajax({
	        url: `/user/json/idCheck`,
	        type: 'POST',
	        data: JSON.stringify({ userId: userId }),
	        dataType: 'json',
	        headers: {
	                     "Accept": "application/json",
	                    "Content-Type": "application/json"

	                     },
	    success: function (data, status) {
	            // alert('성공')
	            //  alert(JSON.stringify(data))
	            if(data==true){
					$('input[name=userId]').removeClass('is-invalid');
					$('input[name=userId]').addClass('is-valid');
					$('dd[name=userId]').html(`\${userId}는 사용가능한 아이디 입니다.`).css("color","green")
	            }else{
					$('input[name=userId]').removeClass('is-valid');
					$('input[name=userId]').addClass('is-invalid');
					$('dd[name=userId]').html(`\${userId}는 이미 사용중인 아이디 입니다.`).css("color","red")
				}
		
                }
            }); // end ajax

		},500); //end setTimeout

	}else{
		$('input[name=userId]').addClass('is-invalid');
		$('dd[name=userId]').html(`id는 6글자 이상 이어야 합니다.`).css("color","red")

	}

				})//end Keyup

				//id input blur()

				$(document).on('blur',"input[name=userId]",function(){
					$('dd[name=userId]').hide()


				})

				//id input forcus()
				$(document).on('focus',"input[name=userId]",function(){
					$('dd[name=userId]').show()


				})

				$(document).on('blur',"input[name=email]",function(){
					$('dd[name=email]').hide()


				})

				//id input forcus()
				$(document).on('focus',"input[name=email]",function(){
					$('dd[name=email]').show()


				})


				$(document).on("keyup","input[name=email]",function() {

					

				clearTimeout(checkAjaxSetTimeout);
				let email = $(this).val()
				if(chkEmail(email)==true){//email 유효한 형식이라면
				checkAjaxSetTimeout = setTimeout(function(){
					

					$.ajax({
	        url: `/user/json/emailCheck`,
	        type: 'POST',
	        data: JSON.stringify({ email: email }),
	        dataType: 'json',
	        headers: {
	                     "Accept": "application/json",
	                    "Content-Type": "application/json"

	                     },
	    success: function (data, status) {
	            // alert('성공')
	            //  alert(JSON.stringify(data))
	            if(data==true){

					$('input[name=email]').removeClass('is-invalid');
					$('input[name=email]').addClass('is-valid');
					$('dd[name=email]').html(`\${email}는 사용가능한 Email 입니다.`).css("color","green");
					$('#sendEmailAuth').show();//인증코드 발송버튼창 show
	            }else{
					$('input[name=email]').removeClass('is-valid');
					$('input[name=email]').addClass('is-invalid');
					$('dd[name=email]').html(`\${email}는 이미 사용중인 Email 입니다.`).css("color","red");
					$('#sendEmailAuth').hide();//인증코드 발송버튼창 hide
				}
		
                }
            }); // end ajax

		},500); //end setTimeout


		}else{//email이 형식에 맞지 않다면
			$('#sendEmailAuth').hide();//인증코드 발송버튼창 hide
			$('input[name=email]').addClass('is-invalid');
			$('dd[name=email]').html(`email은 ex)abc@wwft.com 형식으로 입력 해주세요.`).css("color","red");
		}

				})//end Keyup

			

				//sendEmailAuth

				$(document).on('focus',"input[name=email]",function(){
					$('dd[name=email]').show()


				})

				//발송 버튼을 누르면
				$(document).on("click","#sendEmailAuth",function() {
					$( '#joinCode' ).prop( "disabled", true );//disable
					$('input[joinCode]').attr("placeholder", "인증코드 발송 중입니다.");
					$('#joinCode').show()
				let email = $("input[name=email]").val();
					

					$.ajax({
	        url: `/user/json/sendEmail/auth`,
	        type: 'POST',
	        data: { email: email },
	        dataType: 'json',
	       
	    success: function (data, status) {
	            // alert('성공')
	            //  alert(JSON.stringify(data))
	            if(data==true){
					
					alert("전송성공")
				
	            }else{
					alert("전송실패")
				}
		
                }
            }); // end ajax

			//총 두번 거쳐야하네 처음 메일 보낼때 세션에 인증코드 담고 메일이 보내지면 true 이고 true일때 인증코드를 restController 보내면 거기서 세션의 값과 보낸값을 비교 T/F 리턴


				})//end sendEmailAuth



		})


		function check_pw() {

			var pw = document.getElementById('pw').value;
			var SC = ["!", "@", "#", "$", "%"];
			var check_SC = 0;

			if (pw.length < 6 || pw.length > 16) {
				window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
				document.getElementById('pw').value = '';
			}
			for (var i = 0; i < SC.length; i++) {
				if (pw.indexOf(SC[i]) != -1) {
					check_SC = 1;
				}
			}
			if (check_SC == 0) {
				window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
				document.getElementById('pw').value = '';
			}
			if (document.getElementById('pw').value != ''
				&& document.getElementById('pw2').value != '') {
				if (document.getElementById('pw').value == document
					.getElementById('pw2').value) {
					document.getElementById('check').innerHTML = '비밀번호가 일치합니다.'
					document.getElementById('check').style.color = 'blue';
				} else {
					document.getElementById('check').innerHTML = '비밀번호가 일치하지 않습니다.';
					document.getElementById('check').style.color = 'red';
				}
			}

		}
	</script>
	
	<body>
	<!-- <header id="wrap"> 
           <jsp:include page="../common/navBar.jsp"/>
      </header>    -->
		<div class="container">
			<br>
			<p class="text-center">
				W W F T
			</p>
			<hr>

			<div class="card bg-light">
				<article class="card-body mx-auto" style="max-width: 70%;">
					<h4 class="card-title mt-3 text-center">Create Account</h4>
					<p class="text-center">Get started with your account</p>
					<form action="/user/addUser" method="post">
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-user"></i>
								</span>
							</div>
							<input name="userId" id="userId" class="form-control" placeholder="ID" type="text" id="userId"
								onsubmit="check_pw();">
						</div>
						<dd name="userId"></dd>
						<!-- form-group// -->
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-envelope"></i>
								</span>
							</div>
							<input name="email" class="form-control" placeholder="Email address" type="email">
							<div class="input-group-append" >
								<button class="btn btn-outline-secondary" type="button" id="sendEmailAuth" style="display: none;" >인증코드 발송</button>
							  </div>
						</div>
						<dd name="email"></dd>

						<div class="form-group input-group" id="joinCode" style="display: none;">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-envelope"></i>
								</span>
							</div>
							<input name="joinCode" class="form-control" placeholder="joinCode" type="text" >
							<div class="input-group-append">
								<button class="btn btn-outline-secondary" type="button">인증하기</button>
							  </div>
						</div>

						
						<!-- form-group// -->
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-lock"></i>
								</span>
							</div>
							<input name="password"class="form-control" placeholder="Create password" type="password" id="pw"
								onchange="check_pw()">
						</div>

						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-lock"></i>
								</span>
							</div>
							<input class="form-control" placeholder="Repeat password" type="password" id="pw2"
								onchange="check_pw()">&nbsp;<span id="check"></span>
						</div>

						<!-- form-group// -->
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-tree "></i>
								</span>
							</div>
							<input name="treeName" class="form-control" placeholder="treeName" type="text" id="treeName">
						</div>
						<!-- form-group// -->
					  	<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-flag"></i>
								</span>
							</div>
							<input name="countryId" class="form-control" placeholder="country" type="text" id="countryId">
						</div>
						<!-- form-group// -->

						<!-- form-group// -->
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block">
								Create Account</button>
								<button type="submit" class="btn btn-primary btn-block" onclick="history.back(-1);">
								back</button>
						</div>
						<!-- form-group// -->
						<p class="text-center">
							Have an account? <a href="">Log In</a>
						</p>
					</form>
				</article>
			</div>
			<!-- card.// -->

		</div>
		<!--container end.//-->

		<br>
		<br>
		<article class="bg-secondary mb-3">
			<div class="card-body text-center">
				<h3 class="text-white mt-3"></h3>
				<p class="h5 text-white">
					Components and templates <br> W: WOLRD W: WIDE F: FAMILY T: TREE
				</p>
				<br>
				<p>
					<a class="btn btn-warning" target="_blank" href="http://bootstrap-ecommerce.com/">
						Bootstrap-ecommerce.com
						<i class="fa fa-window-restore "></i>
					</a>
					
					
				</p>
			</div>
			<br>
			<br>
		</article>

	</body>
	</html>