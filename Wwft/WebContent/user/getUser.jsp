<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����������</title>

</head>
<body>
<form action="/user/getUser" method="post">
<h3>����������</h3>
		<p>
			<label for="userid">���̵�: ${user.userId}</label>
		</p>
		
		<p>
			<label for="password">��й�ȣ: ${user.password}</label>
			 
		</p>
		 <p>
			<label for="password">��й�ȣ Ȯ��: ${user.password}</label>
		</p> 
		<p>
			<label for="email">�̸���: ${user.email}</label> 
		</p>
		 <p>
			<label for="treeName">���� �г���</label>
		</p>
		<p>
			<label for="treeAddress">���� �ּ� </label>
		</p>
		  <p>
			<label>�ձپ���</label> <label>�׸𾾾�</label> <label>���𾾾�</label>
		</p>
		<p>
			<input id="seed1" type="radio" value="����" name="seed">
			
			<input id="seed2" type="radio" value="����1" name="seed">	
			
			<input id="seed3" type="radio" value="����2" name="seed">
		</p>
	
		<p>
		<input type="submit" value="����" /> <input type="submit" value="���" /> <input type="submit" value="ȸ��Ż��" />
		</p>
	<a href="updateUser.jsp">����</a>
	<a href="loginOk.jsp">���</a>
	<a href="removeUser.jsp">ȸ��Ż��</a>

</form>
</body>
</html>