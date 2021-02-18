<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
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
		<title>회원 정보 수정</title>
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

		let isUserPassword = false;
		


		$(document).ready(function () {
			$(document).on('click','#remove',function(){
				let userId = $('#userId').val();
				let removeConfirm =	confirm('삭제 하시겠습니까?');
				if(removeConfirm==true){

					history.back();
				}
			})



			// eidtButton 이벤트 클릭시 treeName disabled false saveButton 추가
			
			$(document).on('click','#editButton',function(){
				let role = "${sessionScope.user.role}";
				// alert(role)

				$('#treeName').attr('disabled',false);
				// $('#editButton').append(`<button type="button" id="saveButton" class="btn  btn-dark btn-block">
				// 				save</button>`);
				$(this).closest("div").prepend(`<button type="button" id="saveButton" class="btn  btn-dark btn-block">
					save</button>`)
				if(role!='admin'){
				$('#saveButton').after(`<button type="button" id="changePW" data-toggle="modal" data-target="#change" class="btn  btn-dark btn-block">
					Change PW</button>`)
				}
					
					$('#editButton').remove();

			}) // /edit

			$(document).on('click','#saveButton', function(){
				$('#treeName').attr('disabled',true);
				$(this).closest("div").prepend(`<button type="button" id="editButton" class="btn  btn-dark btn-block">
					Edit</button>`)
				$('#saveButton').remove();
				$('#changePW').remove();

			})


			// pw submit 이벤트
			$(document).on('click', '#confirm1',function(){
				let oldPw = $('#oldPw').val();
				let isOldPw = false;
				if(oldPw!='abcd'){
					Swal.fire({
					icon: 'warning',
					title: '기존 PASSWORD가 틀립니다!',
					text: 'PASSWORD를 다시 입력해 주세요.',
					showConfirmButton: true,
					confirmButtonText: '확인',
					confirmButtonColor: '#282828',
					timer: 5000
				})
				return;

				}else if(oldPw == 'abcd'){
					isOldPw==true;

				}else if(isUserPassword == false){
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

				location.reload();

			})








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
					$('dd[name=pw2]').html(`비밀번호가 일치합니다`).css('color','blue');
					// document.getElementById('check').innerHTML = '비밀번호가 일치합니다.'
					// document.getElementById('check').style.color = 'blue';
				} else {
					isUserPassword = false;
					$('dd[name=pw2]').html(`비밀번호가 일치하지 않습니다`).css('color','red');
					// document.getElementById('check').innerHTML = '비밀번호가 일치하지 않습니다.';
					// document.getElementById('check').style.color = 'red';
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
			<h1 class="text-center">Family Tree</h1>
			</p>
			<hr>

			<div class="card bg-light">
				<article class="card-body mx-auto" style="max-width: 70%;">
					<h4 class="card-title mt-3 text-center">Edit Account</h4>
					<p class="text-center">Edit your account</p>
					<form action="/user/addUser" method="post">
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-user"></i>
								</span>
							</div>
							<input name="userId" id="userId" class="form-control" type="text" id="userId"
								value="${user.userId}" disabled>
						</div>
						<dd name="userId"></dd>
						<!-- form-group// -->
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-envelope"></i>
								</span>
							</div>
							<input name="email" class="form-control" type="email" value="${user.email}" disabled>
						</div>




						<!-- 
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-lock"></i>
								</span>
							</div>
							<input class="form-control" placeholder="Repeat password" type="password" id="pw2"
								onchange="check_pw()">&nbsp;<span id="check"></span>
						</div> -->

						<!-- form-group// -->
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-tree "></i>
								</span>
							</div>
							<input name="treeName" class="form-control" type="text" id="treeName"
								value="${tree.treeName}" disabled >
						</div>


						<!-- form-group// -->
						<div class="form-group">
							<!-- <button type="button" id="changePW" class="btn  btn-dark btn-block">
								Change PW</button> -->
							<button type="button" id="editButton" class="btn  btn-dark btn-block">
								Edit</button>
								<c:if test="${sessionScope.user.role == 'admin'}">
									<button type="button" id="remove" class="btn  btn-dark btn-block">Remove</button>
								</c:if>
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
		<!-- 모달 -->
		<div class="modal fade" id="change" data-backdrop="static" tabindex="-1">
			<div class="modal-dialog modal-md">
			  <div class="modal-content">
				<div class="modal-header">
			  <h5 class="modal-title">비밀번호 변경</h5>
				  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				  </button>
				</div>
				<div class="modal-body">
			  
		
				  
				  <div class="form-group" id="password-form"  >
					<label for="exampleInputPassword1">기존 비밀번호</label>
					<input type="password" class="form-control" name="oldPw" id="oldPw">
			  </div>
			  <div class="form-group" id="password-form">
				<label for="exampleInputEmail1">새로운 비밀번호</label>
				<input type="password" class="form-control" id="pw"  onchange="check_pw()">
				
				</div>

				<div class="form-group" id="password-form">
					<label for="exampleInputEmail1">비밀번호 확인</label>
					<input type="password" class="form-control" name="password" id="pw2"  onchange="check_pw()">
					
					</div>
					<dd name="pw2"></dd>
					<button type="button" id="confirm1" class="btn btn-primary btn-block" style="text-align-last: center;">확인</button>
				</div><!--/bady-->


				<div class="modal-footer">
				  <button type="button" class="btn btn-secondary btn-block" style="text-align-last: center;" data-dismiss="modal">닫기</button>
				</div>
			  </div>
			</div>
		  </div>
		  <!--// 모달 -->

	</body>

	</html>