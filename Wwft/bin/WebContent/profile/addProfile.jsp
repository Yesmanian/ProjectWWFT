<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
			<label for="profileimage">프로필 이미지</label>
			 <input id="profileimage" type="text" name="profileImage">
		</p>
		<p>
			<label for="treeno">나무 번호</label>
			 <input id="treeno" type="text" name="treeNo">
		</p>
		<p>
			<label for="profilename">프로필 이름</label>
			 <input id="profilename" type="text" name="profileName">
		</p>
		<p>
			<label for="familyrelations">가족관계</label>
			 <input id="familyrelations" type="text" name="familyRelations">
			 
		</p>
		 <p>
			<label for="password">이름</label>
			 <input id="password" type="text" name="password">
		</p> 
			<label for="birthday">생년월일</label> 
			<input id="birthday" type="text" name="birthday">
		</p>
	 	<p>
			<label for="phone">핸드폰 번호</label>
			<input id="phone" type="text" name="phone">
		</p>
		 <p>
			<label for="address">주소</label>
			<input id="address" type="text" name="address">
		</p>
		<p>
			<label for="profilestate">프로필 공개여부</label>
			<input id="seed1" type="radio" value="씨앗" name="seed">
			
			<input id="seed2" type="radio" value="씨앗1" name="seed">	
		</p>
	
		<p>
		<input type="submit" value="프로필 생성" /> <input type="submit" value="되돌아가기" />
		</p>
</form>
</body>
</html>