<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				
				if(!form.profileimage.value){
					alert("������ �̸��� �Է� ���ּ���.");
					return false;
				}

				if(!form.familylelations.value){
					alert("�������踦 �����ּ���.");
					return false;
				}	
			
				if(!form.name.value){
					alert("�̸���  �Է��ϼ���.");
					return false;
				}	
				
			}
		</script>
		<input type ="hidden" name = "treeNo" value ="${user.treeNo}"> 
		<table>
			<tr>
				<td width="5%" align="center"></td>
				<td width="20%">������ �̹���</td>
				<td><input type="file" name="profileImage" id="profileimage" ></td>
			</tr> 
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">�������̸�</td>
				<td><input type="text" name="profileName" id="profilename" onclick="checkValue()"></td>
			</tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">��������</td>
				<td><input type="text" name="familyRelations" id="familylelations" onclick="checkValue()"></td>
			</tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">�̸�</td>
				<td><input type="text" name="name" id="name" onclick="checkValue()" ></td>
			</tr>
			<tr>
				<td width="5%" align="center"></td>
				<td width="20%">�������</td>
				<td><input type="text" name="birthday" id="birthday"/>
			</tr>
			<tr>
				<td width="5%" align="center"></td>
				<td width="20%">�ڵ��� ��ȣ</td>
				<td><input type="text" name="phone" id="phone"/>
			</tr>
			<tr>
				<td width="5%" align="center"></td>
				<td width="20%">�ּ�</td>
				<td><input type="text" name="address" id="address"/>
			</tr>
			
		</table>
		<p>
			<label for="profilestate">������ ��������</label>
			<input id="profileState" type="radio" value="0" name="profileState">	
			<input id="profileState" type="radio" value="1" name="profileState">	
		</p>
	
		<p>
		<input type="submit" value="������ ����" /> <input type="submit" value="�ǵ��ư���" />
		</p>
</form>
</body>
</html>