<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html>
<head>

<meta charset="EUC-KR">
<title>�α��οϷ�</title>
</head>
<body>


<form action="/user/loginOk" method="post">
	<h3>�α��� �Ϸ�</h3>
		<p>${user.userId} �� �α����� ȯ���մϴ�</p>
		
	
<ul class="dropdown-menu">
	<li><a href="/user/getUser?userId=${user.userId}">����������</a></li>
	<li><a href="/user/getUserList">ȸ�����</a></li>
	<li><a href="/user/logout">�α׾ƿ�</a></li>
</ul>	
</form>
</body>
</html>