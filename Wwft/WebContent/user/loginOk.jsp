<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html>
<head>

<meta charset="EUC-KR">
<title>�α��οϷ�</title>
</head>
<body>


<form action="/user/logout" method="post">
	<h3>�α��� �Ϸ�</h3>
		<p>${user.userId} �� �α����� ȯ���մϴ�</p>
		
	
<ul class="dropdown-menu">
	<li><a href="getUser.jsp">����������</a></li>
	<li><a href="getUserList.jsp">ȸ�����</a></li>
	<li><a href="login.jsp">�α׾ƿ�</a></li>
</ul>	
</form>
</body>
</html>