<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
	<!DOCTYPE html>
	<html>
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door-fill"
		viewBox="0 0 16 16">
		<path
			d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5z" />
	</svg>

	<head>
		<link rel=��stylesheet�� href=��http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css��>
		<meta charset="EUC-KR">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>ȸ������</title>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"
			id="bootstrap-css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
		<script  src="https://code.jquery.com/jquery-3.5.1.min.js"  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="  crossorigin="anonymous"></script>
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		
		<!------ Include the above in your HEAD tag ---------->

		
		
		
	</head>

	<script>
		//ȸ������ flag ���� ���� ����
			let isUserId=false;
			let isUserEmail=false;
			let isUserPassword=false;
			let isUserJoinCode=false;

		$(document).ready(function () {


			
			




			//email ��ȿ�� üũ
			function chkEmail(str) {

			var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

			if (regExp.test(str)) return true;

			else return false;

			}// /email ��ȿ�� üũ 







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
	            // alert('����')
	            //  alert(JSON.stringify(data))
	            if(data==true){
					isUserId=true;
					$('input[name=userId]').removeClass('is-invalid');
					$('input[name=userId]').addClass('is-valid');
					$('dd[name=userId]').html(`\${userId}�� ��밡���� ���̵� �Դϴ�.`).css("color","green")
	            }else{
					isUserId=false;
					$('input[name=userId]').removeClass('is-valid');
					$('input[name=userId]').addClass('is-invalid');
					$('dd[name=userId]').html(`\${userId}�� �̹� ������� ���̵� �Դϴ�.`).css("color","red")
				}
		
                }
            }); // end ajax

		},500); //end setTimeout

	}else{
		$('input[name=userId]').addClass('is-invalid');
		$('dd[name=userId]').html(`id�� 6���� �̻� �̾�� �մϴ�.`).css("color","red")

	}

				})//end Keyup
				// bluer �� focus
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

				$(document).on('blur',"input[name=joinCode]",function(){
					$('dd[name=joinCode]').hide()


				})

				//id input forcus()
				$(document).on('focus',"input[name=joinCode]",function(){
					$('dd[name=joinCode]').show()


				})

				//password �ȳ�
				$(document).on('focus',"input[name=password]",function(){
					$('dd[name=password]').show()
					$('dd[name=password]').html(`��й�ȣ�� ��й�ȣ�� 6���� �̻�, 16���� ���Ͽ��� �ϸ�,<br/>
					Ư������ !,@,#,$,%�� �ݵ�� �����Ͽ����մϴ�. `).css('color','blue');


				})

				$(document).on('blur',"input[name=password]",function(){
					$('dd[name=password]').hide()


				})


				$(document).on("keyup","input[name=email]",function() {

					

				clearTimeout(checkAjaxSetTimeout);
				let email = $(this).val()
				if(chkEmail(email)==true){//email ��ȿ�� �����̶��
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
	            // alert('����')
	            //  alert(JSON.stringify(data))
	            if(data==true){
					isUserEmail=true;

					$('input[name=email]').removeClass('is-invalid');
					$('input[name=email]').addClass('is-valid');
					$('dd[name=email]').html(`\${email}�� ��밡���� Email �Դϴ�.`).css("color","green");
					$('#sendEmailAuth').show();//�����ڵ� �߼۹�ưâ show
	            }else{
					isUserEmail=false;
					$('input[name=email]').removeClass('is-valid');
					$('input[name=email]').addClass('is-invalid');
					$('dd[name=email]').html(`\${email}�� �̹� ������� Email �Դϴ�.`).css("color","red");
					$('#sendEmailAuth').hide();//�����ڵ� �߼۹�ưâ hide
				}
		
                }
            }); // end ajax

		},500); //end setTimeout


		}else{//email�� ���Ŀ� ���� �ʴٸ�
			$('#sendEmailAuth').hide();//�����ڵ� �߼۹�ưâ hide
			$('input[name=email]').addClass('is-invalid');
			$('dd[name=email]').html(`email�� ex)abc@wwft.com �������� �Է� ���ּ���.`).css("color","red");
		}

				})//end Keyup

			

				//sendEmailAuth

				$(document).on('focus',"input[name=email]",function(){
					$('dd[name=email]').show()


				})

				//�߼� ��ư�� ������
				$(document).on("click","#sendEmailAuth",function() {
					$('input[name=joinCode]').prop( "disabled", true );//disable
					$('input[name=joinCode]').attr("placeholder", "�����ڵ� �߼� ���Դϴ�.");
					$('#joinCodeButton').hide();
					$('#joinCode').show()
				let email = $("input[name=email]").val();
					

					$.ajax({
	        url: `/user/json/sendEmail/auth`,
	        type: 'POST',
	        data: { email: email },
	        dataType: 'json',
	       
	    success: function (data, status) {
	            // alert('����')
	            //  alert(JSON.stringify(data))
	            if(data==true){
					// alert("���ۼ���")
					$('input[name=joinCode]').prop( "disabled", false );//disable
					$('input[name=joinCode]').attr("placeholder", "�����ڵ带 �Է����ּ���.");
					$('#joinCodeButton').show();
					
				
	            }else{
					alert("���۽��� �ٽ� �������ּ���")
				}
		
                }
            }); // end ajax

			//�� �ι� ���ľ��ϳ� ó�� ���� ������ ���ǿ� �����ڵ� ��� ������ �������� true �̰� true�϶� �����ڵ带 restController ������ �ű⼭ ������ ���� �������� �� T/F ����


				})//end sendEmailAuth
		//�����ϱ� ��ư Ŭ����
		$(document).on('click','#joinCodeButton',function(){

			let userJoinCode = $.trim($('input[name=joinCode]').val());
			if(userJoinCode!=''){
				// alert(userJoinCode);
			}

			//session�� �ڵ�� ȸ���� �Է��� �ڵ尣 ��
			$.ajax({
	        url: `/user/json/checkJoinCode`,
	        type: 'POST',
	        data: { userJoinCode: userJoinCode },
	        dataType: 'json',
	       
	    success: function (data, status) {
	            // alert('����')
	            //  alert(JSON.stringify(data))
	            if(data==true){
					// alert("��ġ")
					isUserJoinCode=true;
					$('input[name=joinCode]').removeClass('is-invalid');
					$('input[name=joinCode]').addClass('is-valid');
					$('dd[name=joinCode]').html('���� �Ϸ�').css("color","green");
					
					// $('input[name=joinCode]').prop( "disabled", false );//disable
					// $('input[name=joinCode]').attr("placeholder", "�����ڵ带 �Է����ּ���.");
					// $('#joinCodeButton').show();
					
				
	            }else{
					// alert("����ġ")
					isUserJoinCode=false;
					$('dd[name=joinCode]').html(`\${userJoinCode}�� �߸��� ������ȣ�Դϴ�.`).css("color","red");
					$('input[name=joinCode]').removeClass('is-valid');
					$('input[name=joinCode]').addClass('is-invalid');
					$('dd[name=joinCode]').show()
				}
		
                }
            }); // end ajax
			

		})


		})

		//��й�ȣ ��ȿ�� üũ
		function check_pw() {

			var pw = document.getElementById('pw').value;
			var SC = ["!", "@", "#", "$", "%"];
			var check_SC = 0;

			if (pw.length < 6 || pw.length > 16) {
				window.alert('��й�ȣ�� 6���� �̻�, 16���� ���ϸ� �̿� �����մϴ�.');
				document.getElementById('pw').value = '';
			}
			for (var i = 0; i < SC.length; i++) {
				if (pw.indexOf(SC[i]) != -1) {
					check_SC = 1;
				}
			}
			if (check_SC == 0) {
				window.alert('!,@,#,$,% �� Ư�����ڰ� �� ���� �ʽ��ϴ�.')
				document.getElementById('pw').value = '';
			}
			if (document.getElementById('pw').value != ''
				&& document.getElementById('pw2').value != '') {
				if (document.getElementById('pw').value == document
					.getElementById('pw2').value) {
					isUserPassword=true;
					document.getElementById('check').innerHTML = '��й�ȣ�� ��ġ�մϴ�.'
					document.getElementById('check').style.color = 'blue';
				} else {
					isUserPassword=false;
					document.getElementById('check').innerHTML = '��й�ȣ�� ��ġ���� �ʽ��ϴ�.';
					document.getElementById('check').style.color = 'red';
				}
			}

		}

		$(document).on('click','#submitButton',function(){

			if(isUserId==false){
				alert('��ȿ���� ���� id�Դϴ�.�ٽ��Է� ���ּ���.')
				return;
			}
			if(isUserEmail==false){
				alert('��ȿ���� ���� email�Դϴ�.�ٽ��Է� ���ּ���.')
				return;
			}
			if(isUserPassword==false){
				alert('��ȿ���� ���� password�Դϴ�.�ٽ��Է� ���ּ���.')
				return;
			}
			if(isUserJoinCode==false){
				alert('�߸��� email�����Դϴ�. �ٽ� ���� ���ּ���.')
				return;
			}
			if($('input[name=countryId]').val().length>3){
				alert('countryId�� ex)kr,uk,na �������� �Է� �ϼž��մϴ�.')
				return;
			}
			// alert("email"+isUserEmail)
			// alert("id"+isUserId)
			// alert("pw"+isUserPassword)
			// alert("code"+isUserJoinCode)

			$('form').attr('method',"POST").attr("action","/user/addUser").submit();


		})

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
								<button class="btn btn-outline-secondary" type="button" id="sendEmailAuth" style="display: none;" >�����ڵ� �߼�</button>
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
								<button class="btn btn-outline-secondary" type="button" id="joinCodeButton">�����ϱ�</button>
							  </div>
						</div>
						<dd name="joinCode"></dd>

						
						<!-- form-group// -->
						<div class="form-group input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-lock"></i>
								</span>
							</div>
							<input name="password"class="form-control" placeholder="Create password" type="password" id="pw"
								onchange="check_pw()">
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
							<button type="button" id="submitButton" class="btn btn-primary btn-block">
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