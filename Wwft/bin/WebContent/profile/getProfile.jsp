<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>프로필 정보</title>
<script type="text/javascript">
</script>
</head>
<body>

<form action="/profile/getProfile" method="get">
<h3>프로필 정보</h3>
		<p>
			<label for="profileImage">프로필 이미지: ${profile.profileImage}</label>
		</p>
		<p>
			<label for="treeNo">나무 번호: ${profile.treeNo}</label>
		</p>
		<p>
			<label for="profileName">프로필 이름: ${profile.profileName}</label>
		</p>
		<p>
			<label for="familyRelations">가족관계: ${profile.familyRelations}</label>
			 
		</p>
			<p>
			<label for="birthday">생년월일: ${profile.birthday}</label>
			</p>
	 	<p>
			<label for="phone">핸드폰번호: ${profile.phone}</label>
		</p>
		 <p>
			<label for="address">주소: ${profile.address}</label>
		</p>
		<p>
		<input type="submit" value="확인" /> <input type="submit" value="되돌아가기" />
		</p>
</form>
</body>
</html>