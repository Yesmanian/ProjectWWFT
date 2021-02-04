<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>프로필 정보</title>
</head>
<body>

<form action="/profile/getProfile" method="post">
<h3>프로필 정보</h3>
		<script>
			function checkValue()
			{
				var form = document.userInfo;
				
				if(!form.id.vlaue){
					alert("아이디를 입력하세요.");
					return false;
				}

				if(!form.idDuplication.value !="idCheck"){
					alert("아이디 중복체크를 해주세요.");
					return false;
				}	
			
				if(!form.password.value){
					alert("비밀번호를 입력하세요.");
					return false;
				}	
				
				if(!form.password.value != form.passwordcheck.value){
					alert("비밀번호를 동일하게 입력하세요.");
					return false;
				}
				
				if(!form.email.value){
					alert("이메일을 입력하세요.");
					return false;
				}
			}
		</script>
		<p>
			<label for="profileimage">프로필 이미지: ${profile.profileImage}</label>
		</p>
		<p>
			<label for="treeno">나무 번호: ${profile.treeNo}</label>
		</p>
		<p>
			<label for="profileName">프로필 이름: ${profile.profileName}</label>
		</p>
		<p>
			<label for="familyRelations">가족관계: ${profile.familyRelations}</label>
			 
		</p>
		 <p>
			<label for="profileName">이름: ${profile.profileName}</label>
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
			<label for="profilestate">프로필 이미지: ${profile.profilestate}</label>
			
			<input id="seed1" type="radio" value="씨앗1" name="seed">	
		</p>
	
		<p>
		<input type="submit" value="확인" /> <input type="submit" value="되돌아가기" />
		</p>
</form>
</body>
</html>