<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����������</title>
	<script type="text/javascript">
		
	</script>

</head>
<body>
<form action="/user/getUser" method="get">
<h3>����������</h3>
		<p>
			<label for="userId">���̵�: ${user.userId}</label>
		</p>
		
		<p>
			<label for="password">��й�ȣ: ${user.password}</label>
			 
		</p>
		<p>
			<label for="email">�̸���: ${user.email}</label> 
		</p>
		 <p>
			<label for="treeName">���� �г��� : ${tree.treeName}</label>
		</p>
		<p>
			<label for="countryId">���� �ּ�  : ${tree.countryId}</label>
		</p>
		  <p>
			<label>�ձپ���</label> 
		</p>
		<p>
			<input id="seed1" type="radio" value="����" name="seed">
		</p>
	
		<p>
		<input type="submit" value="����" /> <input type="submit" value="���" /> <input type="submit" value="ȸ��Ż��" />
		</p>

</form>
</body>
</html>