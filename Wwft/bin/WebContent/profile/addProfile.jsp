<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ����</title>
</head>
<body>

<form action="/profile/addProfile" method="post">
<h3>������ ����</h3>
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
			<label for="profileimage">������ �̹���</label>
			 <input id="profileimage" type="text" name="profileImage">
		</p>
		<p>
			<label for="treeno">���� ��ȣ</label>
			 <input id="treeno" type="text" name="treeNo">
		</p>
		<p>
			<label for="profilename">������ �̸�</label>
			 <input id="profilename" type="text" name="profileName">
		</p>
		<p>
			<label for="familyrelations">��������</label>
			 <input id="familyrelations" type="text" name="familyRelations">
			 
		</p>
		 <p>
			<label for="password">�̸�</label>
			 <input id="password" type="text" name="password">
		</p> 
			<label for="birthday">�������</label> 
			<input id="birthday" type="text" name="birthday">
		</p>
	 	<p>
			<label for="phone">�ڵ��� ��ȣ</label>
			<input id="phone" type="text" name="phone">
		</p>
		 <p>
			<label for="address">�ּ�</label>
			<input id="address" type="text" name="address">
		</p>
		<p>
			<label for="profilestate">������ ��������</label>
			<input id="seed1" type="radio" value="����" name="seed">
			
			<input id="seed2" type="radio" value="����1" name="seed">	
		</p>
	
		<p>
		<input type="submit" value="������ ����" /> <input type="submit" value="�ǵ��ư���" />
		</p>
</form>
</body>
</html>