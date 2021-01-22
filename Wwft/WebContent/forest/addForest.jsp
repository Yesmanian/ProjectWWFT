<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script type="text/javascript">
	
 function resetData() {
	document.addForest.reset();
}
</script>

</head>
<body>
Hello addForest.jsp
	<form name="addForest" action="/forest/addForest" method="post">
		
	 	<table border="1">
				<th>숲 만들기</th>
				<th>조건</th>
				<tr><!-- 첫번째 줄 시작 -->
				    <td>숲이름</td>
				    <td>
				    	<input type="text" name="forestName">
				    </td>
				</tr><!-- 첫번째 줄 끝 -->
				<tr><!-- 두번째 줄 시작 -->
				    <td>숲 Creater Tree No</td>
				    <td>
				    	<input type="text" name="forestCreaterTreeNo">
				    </td>
				</tr><!-- 두번째 줄 끝 -->
				<tr><!-- 두번째 줄 시작 -->
				    <td>누구나 초대가능</td>
				    <td>
				    	<input type="radio" name="invitePossibleState" value="1" checked>허용
						<input type="radio" name="invitePossibleState" value="0">비허용
				    </td>
				</tr><!-- 두번째 줄 끝 -->
				<tr><!-- 두번째 줄 시작 -->
				    <td>누구나 이름변경가능</td>
				    <td>
				    	<input type="radio" name="forestNameChangePossibleState" value="1" checked>허용
						<input type="radio" name="forestNameChangePossibleState" value="0">비허용
				    </td>
				</tr><!-- 두번째 줄 끝 -->
				<tr><!-- 두번째 줄 시작 -->
				    <td>초대할 나무 번호</td>
				    <td>
				    	<input type="text" name="forestName">
				    </td>
				</tr><!-- 두번째 줄 끝 -->
				<tr><!-- 두번째 줄 시작 -->
				    <td>
				  		<input type="submit" value="보내기"> 
				    </td>
				    <td>
				    	<a href="javascript:resetData();">취소</a>
				    </td>
				</tr><!-- 두번째 줄 끝 -->
				
    	</table>
		
		
	
	</form>
</body>
</html>