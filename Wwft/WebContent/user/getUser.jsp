<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
	<html>

	<head>
		<script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
		<link rel=��stylesheet�� href=��http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css��>
		<meta charset="EUC-KR">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>ȸ�� ���� ����</title>
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
				let removeConfirm =	confirm('���� �Ͻðڽ��ϱ�?');
				if(removeConfirm==true){

					history.back();
				}
			})



			// eidtButton �̺�Ʈ Ŭ���� treeName disabled false saveButton �߰�
			
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


			// pw submit �̺�Ʈ
			$(document).on('click', '#confirm1',function(){
				let oldPw = $('#oldPw').val();
				let isOldPw = false;
				if(oldPw!='abcd'){
					Swal.fire({
					icon: 'warning',
					title: '���� PASSWORD�� Ʋ���ϴ�!',
					text: 'PASSWORD�� �ٽ� �Է��� �ּ���.',
					showConfirmButton: true,
					confirmButtonText: 'Ȯ��',
					confirmButtonColor: '#282828',
					timer: 5000
				})
				return;

				}else if(oldPw == 'abcd'){
					isOldPw==true;

				}else if(isUserPassword == false){
					Swal.fire({
					icon: 'warning',
					title: '��ȿ���� ���� PASSWORD�Դϴ�!',
					text: 'PASSWORD�� �ٽ� �Է��� �ּ���.',
					showConfirmButton: true,
					confirmButtonText: 'Ȯ��',
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
								// alert('����')
								//  alert(JSON.stringify(data))
								if (data == true) {
									isUserId = true;
									$('input[name=userId]').removeClass('is-invalid');
									$('input[name=userId]').addClass('is-valid');
									$('dd[name=userId]').html(`\${userId}�� ��밡���� ���̵� �Դϴ�.`).css("color", "green")
								} else {
									isUserId = false;
									$('input[name=userId]').removeClass('is-valid');
									$('input[name=userId]').addClass('is-invalid');
									$('dd[name=userId]').html(`\${userId}�� �̹� ������� ���̵� �Դϴ�.`).css("color", "red")
								}

							}
						}); // end ajax

					}, 500); //end setTimeout

				} else {
					$('input[name=userId]').addClass('is-invalid');
					$('dd[name=userId]').html(`id�� 6���� �̻� �̾�� �մϴ�.`).css("color", "red")

				}

			})//end Keyup
			// bluer �� focus
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

			//password �ȳ�
			$(document).on('focus', "input[name=password]", function () {
				$('dd[name=password]').show()
				$('dd[name=password]').html(`��й�ȣ�� ��й�ȣ�� 6���� �̻�, 16���� ���Ͽ��� �ϸ�,<br/>
					Ư������ !,@,#,$,%�� �ݵ�� �����Ͽ����մϴ�. `).css('color', 'blue');


			})

			$(document).on('blur', "input[name=password]", function () {
				$('dd[name=password]').hide()


			})


			$(document).on("keyup", "input[name=email]", function () {



				clearTimeout(checkAjaxSetTimeout);
				let email = $(this).val()
				if (chkEmail(email) == true) {//email ��ȿ�� �����̶��
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
								// alert('����')
								//  alert(JSON.stringify(data))
								if (data == true) {
									isUserEmail = true;

									$('input[name=email]').removeClass('is-invalid');
									$('input[name=email]').addClass('is-valid');
									$('dd[name=email]').html(`\${email}�� ��밡���� Email �Դϴ�.`).css("color", "green");
									$('#sendEmailAuth').show();//�����ڵ� �߼۹�ưâ show
								} else {
									isUserEmail = false;
									$('input[name=email]').removeClass('is-valid');
									$('input[name=email]').addClass('is-invalid');
									$('dd[name=email]').html(`\${email}�� �̹� ������� Email �Դϴ�.`).css("color", "red");
									$('#sendEmailAuth').hide();//�����ڵ� �߼۹�ưâ hide
								}

							}
						}); // end ajax

					}, 500); //end setTimeout


				} else {//email�� ���Ŀ� ���� �ʴٸ�
					$('#sendEmailAuth').hide();//�����ڵ� �߼۹�ưâ hide
					$('input[name=email]').addClass('is-invalid');
					$('dd[name=email]').html(`email�� ex)abc@wwft.com �������� �Է� ���ּ���.`).css("color", "red");
				}

			})//end Keyup



			//sendEmailAuth

			$(document).on('focus', "input[name=email]", function () {
				$('dd[name=email]').show()


			})

			
			


		})

		//��й�ȣ ��ȿ�� üũ
		function check_pw() {

			var pw = document.getElementById('pw').value;
			var SC = ["!", "@", "#", "$", "%"];
			var check_SC = 0;

			if (pw.length < 6 || pw.length > 16) {
				Swal.fire({
					icon: 'warning',
					title: '��й�ȣ ���ڼ� ���� ����!',
					text: '��й�ȣ�� 6���� �̻�, 16���� ���ϸ� �̿� �����մϴ�.',
					showConfirmButton: true,
					confirmButtonText: 'Ȯ��',
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
					title: '��й�ȣ Ư������ ����!',
					text: '!,@,#,$,% �� Ư�����ڰ� �� ���� �ʽ��ϴ�.',
					showConfirmButton: true,
					confirmButtonText: 'Ȯ��',
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
					$('dd[name=pw2]').html(`��й�ȣ�� ��ġ�մϴ�`).css('color','blue');
					// document.getElementById('check').innerHTML = '��й�ȣ�� ��ġ�մϴ�.'
					// document.getElementById('check').style.color = 'blue';
				} else {
					isUserPassword = false;
					$('dd[name=pw2]').html(`��й�ȣ�� ��ġ���� �ʽ��ϴ�`).css('color','red');
					// document.getElementById('check').innerHTML = '��й�ȣ�� ��ġ���� �ʽ��ϴ�.';
					// document.getElementById('check').style.color = 'red';
				}
			}

		}

		$(document).on('click', '#submitButton', function () {

			if (isUserId == false) {
				Swal.fire({
					icon: 'warning',
					title: '��ȿ���� ���� ID�Դϴ�!',
					text: 'ID�� �ٽ� �Է��� �ּ���.',
					showConfirmButton: true,
					confirmButtonText: 'Ȯ��',
					confirmButtonColor: '#282828',
					timer: 5000
				})

				return;
			}
			if (isUserEmail == false) {
				Swal.fire({
					icon: 'warning',
					title: '��ȿ���� ���� EMAIL�Դϴ�!',
					text: 'EMAIL�� �ٽ� �Է��� �ּ���.',
					showConfirmButton: true,
					confirmButtonText: 'Ȯ��',
					confirmButtonColor: '#282828',
					timer: 5000
				})

				return;
			}
			if (isUserPassword == false) {
				Swal.fire({
					icon: 'warning',
					title: '��ȿ���� ���� PASSWORD�Դϴ�!',
					text: 'PASSWORD�� �ٽ� �Է��� �ּ���.',
					showConfirmButton: true,
					confirmButtonText: 'Ȯ��',
					confirmButtonColor: '#282828',
					timer: 5000
				})

				return;
			}
			if (isUserJoinCode == false) {
				Swal.fire({
					icon: 'warning',
					title: '�߸��� EMAIL�Դϴ�!',
					text: 'EMAIL�� �ٽ� ������ �ּ���.',
					showConfirmButton: true,
					confirmButtonText: 'Ȯ��',
					confirmButtonColor: '#282828',
					timer: 5000
				})

				return;
			}
			if ($('input[name=countryId]').val().length > 3) {
				Swal.fire({
					icon: 'warning',
					title: '��������',
					text: 'EX)KR, UK, NA �������� �Է� �ϼž��մϴ�.',
					showConfirmButton: true,
					confirmButtonText: 'Ȯ��',
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
				<h5 id="foot" class="mt-6">�� Family Tree Corp All Rights Reserved</h5>
				<h6 class="mt-6">This site is a family community site.<br>
					We hope that our site reflects on the true meaning of family.</h6>




			</div>

		</article>
		<!-- ��� -->
		<div class="modal fade" id="change" data-backdrop="static" tabindex="-1">
			<div class="modal-dialog modal-md">
			  <div class="modal-content">
				<div class="modal-header">
			  <h5 class="modal-title">��й�ȣ ����</h5>
				  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				  </button>
				</div>
				<div class="modal-body">
			  
		
				  
				  <div class="form-group" id="password-form"  >
					<label for="exampleInputPassword1">���� ��й�ȣ</label>
					<input type="password" class="form-control" name="oldPw" id="oldPw">
			  </div>
			  <div class="form-group" id="password-form">
				<label for="exampleInputEmail1">���ο� ��й�ȣ</label>
				<input type="password" class="form-control" id="pw"  onchange="check_pw()">
				
				</div>

				<div class="form-group" id="password-form">
					<label for="exampleInputEmail1">��й�ȣ Ȯ��</label>
					<input type="password" class="form-control" name="password" id="pw2"  onchange="check_pw()">
					
					</div>
					<dd name="pw2"></dd>
					<button type="button" id="confirm1" class="btn btn-primary btn-block" style="text-align-last: center;">Ȯ��</button>
				</div><!--/bady-->


				<div class="modal-footer">
				  <button type="button" class="btn btn-secondary btn-block" style="text-align-last: center;" data-dismiss="modal">�ݱ�</button>
				</div>
			  </div>
			</div>
		  </div>
		  <!--// ��� -->

	</body>

	</html>