<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ����</title>
</head>
<body>

<form action="/profile/getProfile" method="post">
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
			<label for="profileimage">������ �̹���: ${profile.profileImage}</label>
		</p>
		<p>
			<label for="treeno">���� ��ȣ: ${profile.treeNo}</label>
		</p>
		<p>
			<label for="profileName">������ �̸�: ${profile.profileName}</label>
		</p>
		<p>
			<label for="familyRelations">��������: ${profile.familyRelations}</label>
			 
		</p>
		 <p>
			<label for="profileName">�̸�: ${profile.profileName}</label>
			</p>
			<p>
			<label for="birthday">�������: ${profile.birthday}</label>
			</p>
	 	<p>
			<label for="phone">�ڵ�����ȣ: ${profile.phone}</label>
		</p>
		 <p>
			<label for="address">�ּ�: ${profile.address}</label>
		</p>
		<p>
			<label for="profilestate">������ �̹���: ${profile.profilestate}</label>
			
			<input id="seed1" type="radio" value="����1" name="seed">	
		</p>
	
		<p>
		<input type="submit" value="Ȯ��" /> <input type="submit" value="�ǵ��ư���" />
		</p>
</form>
</body>
</html>