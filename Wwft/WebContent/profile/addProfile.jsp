<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>프로필 생성</title>
</head>
<body>

<form action="/profile/addProfile" method="post">
<h3>프로필 생성</h3>
		<script>
			
			function checkValue()
			{
				var form = document.userInfo;
				
				if(!form.profileimage.value){
					alert("프로필 이름을 입력 해주세요.");
					return false;
				}

				if(!form.familylelations.value){
					alert("가족관계를 적어주세요.");
					return false;
				}	
			
				if(!form.name.value){
					alert("이름을  입력하세요.");
					return false;
				}	
				
			}
		</script>
		<input type ="hidden" name = "treeNo" value ="${user.treeNo}"> 
		<table>
			<tr>
				<td width="5%" align="center"></td>
				<td width="20%">프로필 이미지</td>
				<td><input type="file" name="profileImage" id="profileimage" ></td>
			</tr> 
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">프로필이름</td>
				<td><input type="text" name="profileName" id="profilename" onclick="checkValue()"></td>
			</tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">가족관계</td>
				<td><input type="text" name="familyRelations" id="familylelations" onclick="checkValue()"></td>
			</tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="20%">이름</td>
				<td><input type="text" name="name" id="name" onclick="checkValue()" ></td>
			</tr>
			<tr>
				<td width="5%" align="center"></td>
				<td width="20%">생년월일</td>
				<td><input type="text" name="birthday" id="birthday"/>
			</tr>
			<tr>
				<td width="5%" align="center"></td>
				<td width="20%">핸드폰 번호</td>
				<td><input type="text" name="phone" id="phone"/>
			</tr>
			<tr>
				<td width="5%" align="center"></td>
				<td width="20%">주소</td>
				<td><input type="text" name="address" id="address"/>
			</tr>
			
		</table>
		<p>
			<label for="profilestate">프로필 공개여부</label>
			<input id="profileState" type="radio" value="0" name="profileState">	
			<input id="profileState" type="radio" value="1" name="profileState">	
		</p>
	
		<p>
		<input type="submit" value="프로필 생성" /> <input type="submit" value="되돌아가기" />
		</p>
</form>
</body>
</html>