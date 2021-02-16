<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
	<!DOCTYPE html>
	<html>

	<head>
		<script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
		<link rel=”stylesheet” href=”http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css“>
		<meta charset="EUC-KR">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>회원가입</title>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"
			id="bootstrap-css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"
			integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

		<!------ Include the above in your HEAD tag ---------->

		<style type="text/css">
			h1 {
				font-family: 'Anton', sans-serif;
			}

			#foot {
				line-height: 400%;

			}
		</style>


	</head>

	<script>
		//회원가입 flag 전역 변수 선언
		let isUserId = false;
		let isUserEmail = false;
		let isUserPassword = false;
		let isUserJoinCode = false;

		$(document).ready(function () {








			//email 유효성 체크
			function chkEmail(str) {

				var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

				if (regExp.test(str)) return true;

				else return false;

			}// /email 유효성 체크 







			let joinCode;
			let checkAjaxSetTimeout;
			$(document).on("keyup", "input[name=userId]", function () {
				clearTimeout(checkAjaxSetTimeout);
				if ($(this).val().length >= 6) {
					let userId = $(this).val()
					checkAjaxSetTimeout = setTimeout(function () {


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
								if (data == true) {
									isUserId = true;
									$('input[name=userId]').removeClass('is-invalid');
									$('input[name=userId]').addClass('is-valid');
									$('dd[name=userId]').html(`\${userId}는 사용가능한 아이디 입니다.`).css("color", "green")
								} else {
									isUserId = false;
									$('input[name=userId]').removeClass('is-valid');
									$('input[name=userId]').addClass('is-invalid');
									$('dd[name=userId]').html(`\${userId}는 이미 사용중인 아이디 입니다.`).css("color", "red")
								}

							}
						}); // end ajax

					}, 500); //end setTimeout

				} else {
					$('input[name=userId]').addClass('is-invalid');
					$('dd[name=userId]').html(`id는 6글자 이상 이어야 합니다.`).css("color", "red")

				}

			})//end Keyup
			// bluer 와 focus
			//id input blur()

			$(document).on('blur', "input[name=userId]", function () {
				$('dd[name=userId]').hide()


			})

			//id input forcus()
			$(document).on('focus', "input[name=userId]", function () {
				$('dd[name=userId]').show()


			})

			$(document).on('blur', "input[name=email]", function () {
				$('dd[name=email]').hide()


			})

			//id input forcus()
			$(document).on('focus', "input[name=email]", function () {
				$('dd[name=email]').show()


			})

			$(document).on('blur', "input[name=joinCode]", function () {
				$('dd[name=joinCode]').hide()


			})

			//id input forcus()
			$(document).on('focus', "input[name=joinCode]", function () {
				$('dd[name=joinCode]').show()


			})

			//password 안내
			$(document).on('focus', "input[name=password]", function () {
				$('dd[name=password]').show()
				$('dd[name=password]').html(`비밀번호는 비밀번호는 6글자 이상, 16글자 이하여야 하며,<br/>
					특수문자 !,@,#,$,%를 반드시 포함하여야합니다. `).css('color', 'blue');


			})

			$(document).on('blur', "input[name=password]", function () {
				$('dd[name=password]').hide()


			})


			$(document).on("keyup", "input[name=email]", function () {



				clearTimeout(checkAjaxSetTimeout);
				let email = $(this).val()
				if (chkEmail(email) == true) {//email 유효한 형식이라면
					checkAjaxSetTimeout = setTimeout(function () {


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
								if (data == true) {
									isUserEmail = true;

									$('input[name=email]').removeClass('is-invalid');
									$('input[name=email]').addClass('is-valid');
									$('dd[name=email]').html(`\${email}는 사용가능한 Email 입니다.`).css("color", "green");
									$('#sendEmailAuth').show();//인증코드 발송버튼창 show
								} else {
									isUserEmail = false;
									$('input[name=email]').removeClass('is-valid');
									$('input[name=email]').addClass('is-invalid');
									$('dd[name=email]').html(`\${email}는 이미 사용중인 Email 입니다.`).css("color", "red");
									$('#sendEmailAuth').hide();//인증코드 발송버튼창 hide
								}

							}
						}); // end ajax

					}, 500); //end setTimeout


				} else {//email이 형식에 맞지 않다면
					$('#sendEmailAuth').hide();//인증코드 발송버튼창 hide
					$('input[name=email]').addClass('is-invalid');
					$('dd[name=email]').html(`email은 ex)abc@wwft.com 형식으로 입력 해주세요.`).css("color", "red");
				}

			})//end Keyup



			//sendEmailAuth

			$(document).on('focus', "input[name=email]", function () {
				$('dd[name=email]').show()


			})

			//발송 버튼을 누르면
			$(document).on("click", "#sendEmailAuth", function () {
				$('input[name=joinCode]').prop("disabled", true);//disable
				$('input[name=joinCode]').attr("placeholder", "인증코드 발송 중입니다.");
				$('#joinCodeButton').hide();
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
						if (data == true) {
							// alert("전송성공")
							$('input[name=joinCode]').prop("disabled", false);//disable
							$('input[name=joinCode]').attr("placeholder", "인증코드를 입력해주세요.");
							$('#joinCodeButton').show();


						} else {
							alert("전송실패 다시 전송해주세요")
						}

					}
				}); // end ajax

				//총 두번 거쳐야하네 처음 메일 보낼때 세션에 인증코드 담고 메일이 보내지면 true 이고 true일때 인증코드를 restController 보내면 거기서 세션의 값과 보낸값을 비교 T/F 리턴


			})//end sendEmailAuth
			//인증하기 버튼 클릭시
			$(document).on('click', '#joinCodeButton', function () {

				let userJoinCode = $.trim($('input[name=joinCode]').val());
				if (userJoinCode != '') {
					// alert(userJoinCode);
				}

				//session의 코드와 회원이 입력한 코드간 비교
				$.ajax({
					url: `/user/json/checkJoinCode`,
					type: 'POST',
					data: { userJoinCode: userJoinCode },
					dataType: 'json',

					success: function (data, status) {
						// alert('성공')
						//  alert(JSON.stringify(data))
						if (data == true) {
							// alert("일치")
							isUserJoinCode = true;
							$('input[name=joinCode]').removeClass('is-invalid');
							$('input[name=joinCode]').addClass('is-valid');
							$('dd[name=joinCode]').html('인증 완료').css("color", "green");

							// $('input[name=joinCode]').prop( "disabled", false );//disable
							// $('input[name=joinCode]').attr("placeholder", "인증코드를 입력해주세요.");
							// $('#joinCodeButton').show();


						} else {
							// alert("불일치")
							isUserJoinCode = false;
							$('dd[name=joinCode]').html(`\${userJoinCode}는 잘못된 인증번호입니다.`).css("color", "red");
							$('input[name=joinCode]').removeClass('is-valid');
							$('input[name=joinCode]').addClass('is-invalid');
							$('dd[name=joinCode]').show()
						}

					}
				}); // end ajax


			})


		})

		//비밀번호 유효성 체크
		function check_pw() {

			var pw = document.getElementById('pw').value;
			var SC = ["!", "@", "#", "$", "%"];
			var check_SC = 0;

			if (pw.length < 6 || pw.length > 16) {
				Swal.fire({
					icon: 'warning',
					title: '비밀번호 글자수 제한 오류!',
					text: '비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.',
					showConfirmButton: true,
					confirmButtonText: '확인',
					confirmButtonColor: '#282828',
					timer: 5000
				})


				document.getElementById('pw').value = '';
			}
			for (var i = 0; i < SC.length; i++) {
				if (pw.indexOf(SC[i]) != -1) {
					check_SC = 1;
				}
			}
			if (check_SC == 0) {
				Swal.fire({
					icon: 'warning',
					title: '비밀번호 특수문자 오류!',
					text: '!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.',
					showConfirmButton: true,
					confirmButtonText: '확인',
					confirmButtonColor: '#282828',
					timer: 5000
				})

				document.getElementById('pw').value = '';
			}
			if (document.getElementById('pw').value != ''
				&& document.getElementById('pw2').value != '') {
				if (document.getElementById('pw').value == document
					.getElementById('pw2').value) {
					isUserPassword = true;
					document.getElementById('check').innerHTML = '비밀번호가 일치합니다.'
					document.getElementById('check').style.color = 'blue';
				} else {
					isUserPassword = false;
					document.getElementById('check').innerHTML = '비밀번호가 일치하지 않습니다.';
					document.getElementById('check').style.color = 'red';
				}
			}

		}

		$(document).on('click', '#submitButton', function () {

			if (isUserId == false) {
				Swal.fire({
					icon: 'warning',
					title: '유효하지 않은 ID입니다!',
					text: 'ID를 다시 입력해 주세요.',
					showConfirmButton: true,
					confirmButtonText: '확인',
					confirmButtonColor: '#282828',
					timer: 5000
				})

				return;
			}
			if (isUserEmail == false) {
				Swal.fire({
					icon: 'warning',
					title: '유효하지 않은 EMAIL입니다!',
					text: 'EMAIL을 다시 입력해 주세요.',
					showConfirmButton: true,
					confirmButtonText: '확인',
					confirmButtonColor: '#282828',
					timer: 5000
				})

				return;
			}
			if (isUserPassword == false) {
				Swal.fire({
					icon: 'warning',
					title: '유효하지 않은 PASSWORD입니다!',
					text: 'PASSWORD를 다시 입력해 주세요.',
					showConfirmButton: true,
					confirmButtonText: '확인',
					confirmButtonColor: '#282828',
					timer: 5000
				})

				return;
			}
			if (isUserJoinCode == false) {
				Swal.fire({
					icon: 'warning',
					title: '잘못된 EMAIL입니다!',
					text: 'EMAIL을 다시 인증해 주세요.',
					showConfirmButton: true,
					confirmButtonText: '확인',
					confirmButtonColor: '#282828',
					timer: 5000
				})

				return;
			}
			if ($('input[name=countryId]').val().length > 3) {
				Swal.fire({
					icon: 'warning',
					title: '국가명은',
					text: 'EX)KR, UK, NA 형식으로 입력 하셔야합니다.',
					showConfirmButton: true,
					confirmButtonText: '확인',
					confirmButtonColor: '#282828',
					timer: 5000
				})

				return;
			}
			// alert("email"+isUserEmail)
			// alert("id"+isUserId)
			// alert("pw"+isUserPassword)
			// alert("code"+isUserJoinCode)

			$('form').attr('method', "POST").attr("action", "/user/addUser").submit();


		})

	</script>

	<body>
		<!-- <header id="wrap"> 
           <jsp:include page="../common/navBar.jsp"/>
      </header>    -->
		<div class="container">
			<br>
			<p>
			<h1 class="text-center">World Wide Family Tree</h1>
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
							<input name="userId" id="userId" class="form-control" placeholder="User Id" type="text"
								id="userId" onsubmit="check_pw();">
						</div>
						<dd name="userId"></dd>
						<!-- form-group// -->
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-envelope"></i>
								</span>
							</div>
							<input name="email" class="form-control" placeholder="Email address" type="email">
							<div class="input-group-append">
								<button class="btn btn-outline-secondary" type="button" id="sendEmailAuth"
									style="display: none;">인증코드 발송</button>
							</div>
						</div>
						<dd name="email"></dd>

						<div class="form-group input-group" id="joinCode" style="display: none;">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-envelope"></i>
								</span>
							</div>
							<input name="joinCode" class="form-control" placeholder="joinCode" type="text">
							<div class="input-group-append">
								<button class="btn btn-outline-secondary" type="button"
									id="joinCodeButton">인증하기</button>
							</div>
						</div>
						<dd name="joinCode"></dd>


						<!-- form-group// -->
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-lock"></i>
								</span>
							</div>
							<input name="password" class="form-control" placeholder="Create password" type="password"
								id="pw" onchange="check_pw()">
						</div>
						<dd name="password"></dd>

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
							<input name="treeName" class="form-control" placeholder="Tree name" type="text"
								id="treeName">
						</div>
						<!-- form-group// -->
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-flag"></i>
								</span>
							</div>
							<input name="countryId" class="form-control" placeholder="Country" type="text"
								id="countryId">
						</div>
						<!-- form-group// -->

						<!-- form-group// -->
						<div class="form-group">
							<button type="button" id="submitButton" class="btn  btn-dark btn-block">
								Create Account</button>
							<button type="button" class="btn  btn-dark btn-block" onclick="history.back(-1);">
								Go Back</button>
						</div>
						<!-- form-group// -->

					</form>
				</article>
			</div>
			<!-- card.// -->

		</div>
		<!--container end.//-->




		<br>
		<br>

		<div class="card bg-light">
		</div>
		<article class="bg-deafult mb-3 text-center">
			<div class="card-body">
				<h5 id="foot" class="mt-6">ⓒ Family Tree Corp All Rights Reserved</h5>
				<h6 class="mt-6">This site is a family community site.<br>
					We hope that our site reflects on the true meaning of family.</h6>




			</div>

		</article>

	</body>

	</html>