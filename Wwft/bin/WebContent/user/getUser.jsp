<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����������</title>
	<script type="text/javascript">
		
		//==>"����" "Ȯ��"  Event ���� �� ó��
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			//==> 1 �� 3 ��� ���� : $("tagName.className:filter�Լ�") �����.	
			 $( "td.ct_btn01:contains('Ȯ��')" ).on("click" , function() {
				Debug..
				alert(  $( "td.ct_btn01:contains('Ȯ��')" ).html() );
				history.go(-1);
			});
			
			 $( "td.ct_btn01:contains('����')" ).on("click" , function() {
					Debug..
					alert(  $( "td.ct_btn01:contains('����')" ).html() );
					self.location = "/user/updateUser?userId=${user.userId}"
				});
		});
		
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
			<label for="treeName">���� �г���</label>
		</p>
		<p>
			<label for="treeAddress">���� �ּ� </label>
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
	<a href="/user/updateUser">����</a>
	<a href="/uesr/loginOk">���</a>
	<a href="/user/removeUser">ȸ��Ż��</a>

</form>
</body>
</html>