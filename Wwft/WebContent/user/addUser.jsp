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
		<title>addUser</title>
		<script>
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
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"
			id="bootstrap-css">
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<!------ Include the above in your HEAD tag ---------->

		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
	</head>

	<body>
	<header id="wrap"> 
           <jsp:include page="../common/navBar.jsp"/>
      </header>   
		<div class="container">
			<br>
			<p class="text-center">
				W W F T
			</p>
			<hr>

			<div class="card bg-light">
				<article class="card-body mx-auto" style="max-width: 400px;">
					<h4 class="card-title mt-3 text-center">Create Account</h4>
					<p class="text-center">Get started with your account</p>
					<form action="/user/addUser" method="post">
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-user"></i>
								</span>
							</div>
							<input name="userId" class="form-control" placeholder="ID" type="text" id="userId"
								onsubmit="check_pw();">
						</div>
						<!-- form-group// -->
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-envelope"></i>
								</span>
							</div>
							<input name="email" class="form-control" placeholder="Email address" type="email">
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