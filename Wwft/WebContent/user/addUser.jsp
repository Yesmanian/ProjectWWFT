<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
</head>
<body>

<form action="/user/addUser" method="post">
<h3>ȸ������</h3>
		<script>
			function checkValue()
			{
				var form = document.userInfo;
				
				if(!form.id.vlaue){
					alert("���̵� �Է��ϼ���.");
					return false;
				}

				if(!form.idDuplication.value !="idCheck"){
					alert("���̵� �ߺ�üũ�� ���ּ���.");
					return false;
				}	
			
				if(!form.password.value){
					alert("��й�ȣ�� �Է��ϼ���.");
					return false;
				}	
				
				if(!form.password.value != form.passwordcheck.value){
					alert("��й�ȣ�� �����ϰ� �Է��ϼ���.");
					return false;
				}
				
				if(!form.email.value){
					alert("�̸����� �Է��ϼ���.");
					return false;
				}
			}
		</script>
		<p>
			<label for="userid">���̵�:</label>
			 <input id="userid" type="text" name="userId">
			  <input type="submit" value="ID�ߺ� üũ" />
		</p>
		<p>
			<label for="password">��й�ȣ:</label>
			 <input id="password" type="text" name="password">
			 
		</p>
		 <p>
			<label for="password">��й�ȣ Ȯ��:</label>
			 <input id="password" type="text" name="password">
		</p> 
		<p>
			<label for="email">�̸���:</label> 
			<input id="email" type="text" name="email">
			 <input type="submit" value="e-mail�ߺ� üũ" />
			<input type="submit" value="e-mail����" />
		</p>
	 	<p>
			<label for="code">�����ڵ�</label>
			<input id="code" type="text" name="code">
			<input type="submit" value="����Ȯ��" />
		</p>
		 <p>
			<label for="treeName">���� �г���</label>
			<input id="treeName" type="text" name="treeName">
		</p>
		<p>
			<label for="treeAddress">���� �ּ�</label>
			<input id="treeAddress" type="text" name="treeAddress">
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
		<input type="submit" value="ȸ������ �Ϸ�" /> <input type="submit" value="���" />
		</p>
</form>
</body>
</html>