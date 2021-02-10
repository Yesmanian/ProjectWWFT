<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>회원가입</title>
<script>
	function check_pw() {

		var pw = document.getElementById('pw').value;
		var SC = [ "!", "@", "#", "$", "%" ];
		var check_SC = 0;

		if (pw.length<6 ||pw.length>16) {
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
</head>
<style>
body {
	background-color: #525252;
}

.centered-form {
	margin-top: 100px;
}

.col-xs-6 col-sm-6 col-md-6 {
	size: 100px;
}

.form-group {
	size: 200px;
}

.centered-form .panel {
	background: rgba(300, 300, 300, 0.8);
	box-shadow: rgba(5, 5, 5, 0.3) 5px 5px 5px;
}
</style>
<body>
	<h3>회원가입</h3>
	<!--  -->
	<div class="container">
		<div class="row centered-form">
			<div
				class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">회원가입</h3>
					</div>
					<div class="panel-body">
					<div class="row">
						<form role="form">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<input type="text" name="userId" id="userId"
											class="form-control input-sm" placeholder="userId">
									</div>
								</div>
								<div class="form-group">
									<input type="email" name="email" id="email"
										class="form-control input-sm" placeholder="Email Address">
								</div>

								<div class="row">
									<div class="col-xs-6 col-sm-6 col-md-6">
										<div class="form-group">
											<input type="password" name="password" id="pw"
												class="form-control input-sm" placeholder="Password">
										</div>
									</div>
									<div class="col-xs-6 col-sm-6 col-md-6">
										<div class="form-group">
											<input type="password" name="password1" id="pw2"
												class="form-control input-sm" placeholder="Confirm Password">
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<input type="text" name="treeName" id="treeName"
											class="form-control input-sm" placeholder="treeName">
									</div>
								</div>
					</form>
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6">
								<div class="form-group">
									<input type="text" name="countryId" id="countryId"
										class="form-control input-sm" placeholder="countryId">
								</div>
							</div>
					</div>

					<input type="submit" value="Register"
						class="btn btn-info btn-block">

				</div>
			</div>
		</div>
	</div>
</body>
</html>