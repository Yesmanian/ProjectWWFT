<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>나무 생성 화면</title>
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script type="text/javascript">





</script>
</head>
<body>

<div>
	 나무 생성
	</div>
	</br></br>


	<form name="addTree" action="/tree/addTree" method="post">



		<p>
			<label for="userId">회원 이름:</label>
			 <input type="text" name="userId">
		</p>


		<p>
			<label for="treeName">나무 이름:</label>
			 <input  type="text" name="treeName">
		
		</p>
		<p>
			<label for="countryId">국가:</label>
			 <input type="text" name="countryId">
			 
		</p>
		<p>
		<input type="submit"  value="나무 생성 완료" /> <input type="submit" value="취소" />
	</p>
</form>
</body>
</html>