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
	<title>�α���</title>
	
	<!-- <script src="jquery-3.4.1.js"></script> -->
</head>
<body>
	<jsp:include page="../user/userModal.jsp"/>

<script type="text/javascript">

	$(document).ready(function(){
		//���̵� ��й�ȣ ����üũ�� ��� �ٵ� ����
		$(document).on('change',"input[name=findRadio]",function(){

			alert($(this).val());
			if($(this).val()=='0'){
				// alert('idã��')
				// $('.email-form').show();
				$('#id-form').hide();

			}else{
				// alert('pwã��')
				$('#id-form').show();

			}
		})// /change

		$(document).on('click','#confirm1', function(){
			alert($('input[name=findRadio]:checked').val())

			if($('input[name=findRadio]:checked').val()=='0'){//idã�� email�� ���� email�� �´� id�� ã�Ƽ� alertâ���� ����ش�
				// alert('���̵�ã��')
			let email = $('#email').val();
				// alert(email)
				//���̵� ã���϶� ������ ������ idã�Ƽ� alertâ���� ����� 
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

	// })// /idã�� ��


			}else{//��й�ȣ ã�� id�� email�� ���ؼ� true false�� ���� �޴´�
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
					autocomplete="off"required> <label for="userId" >���̵�</label>
				</div>
				<div class="int-area">
					<input type="password" name="password" id="password"
						autocomplete="off" required><label for="password">�н�����</label>
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