<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ����</title>
<script type="text/javascript">
</script>
</head>
<body>

<form action="/profile/getProfile" method="get">
<h3>������ ����</h3>
		<p>
			<label for="profileImage">������ �̹���: ${profile.profileImage}</label>
		</p>
		<p>
			<label for="treeNo">���� ��ȣ: ${profile.treeNo}</label>
		</p>
		<p>
			<label for="profileName">������ �̸�: ${profile.profileName}</label>
		</p>
		<p>
			<label for="familyRelations">��������: ${profile.familyRelations}</label>
			 
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
		<input type="submit" value="Ȯ��" /> <input type="submit" value="�ǵ��ư���" />
		</p>
</form>
</body>
</html>