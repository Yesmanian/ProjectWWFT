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
	<title>�α���</title>
	<link rel="stylesheet" href="user.css">
	<script src="jquery-3.4.1.js"></script>
</head>
<body>
<script type="text/javascript">
    console.log("fighting!");
    console.log(document); // html �±� ��ü�� �ֿܼ� �������.

    var signinButton = document.getElementById("signinButton") // ��ư�� �����.
    signinButton.addEventListener('click', signinFunc) // 'click'�̶� id�� ��ư�� ������ signinFunc �Լ��� ����.

    function signinFunc () {
      var userId = document.getElementById("userId").value; // userid �� ���� �޾ƿ� ����.
      var password = document.getElementById("password").value; // userpw �� ���� �޾ƿ� ����.


      if(user_id == $("#userId").val() && password == $("#password").val() ){
        alert("�α��� ����");
        console.log("�α��� �����߽��ϴ�.");
      } else {
        alert("�α��� ����");
        console.log("�α��� �����߽��ϴ�.");
      }

    }

  </script>
		


	<section class="login-form">
			<h1>�α���</h1>
			<form action="/user/login" method="post">
				<div class="int-area">
					<input type="text" value="" name="userId" id="userId" 
					autocomplete="off"required> <label for="userId" >���̵�</label>
				</div>
				<div class="int-area">
					<input type="password" name="password" id="password"
						autocomplete="off" required><label for="password">�н�����</label>
				</div>
				<div class="btn-area">
					<button type="submit">login</button>
					</div>
				
			<div class="caption">
				<a href="/user/addUser">ȸ������</a>
			</div>
			
	</form>
</section>

	
</body>
</html>