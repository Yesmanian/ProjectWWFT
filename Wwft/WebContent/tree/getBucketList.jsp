<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>버킷리스트 목록 보기</title>
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
	

	

	$(document).ready(function () {
		$("#btn1").click( function () {
			var bucketListWriter = $("input[name=bucketListWriter]").val();
			var bucketListDetail = $("input[name=bucketListDetail]").val();
			var treeNo = ${param.treeNo}
			
			$.ajax({
				url : "/tree/json/addBucketList/",
				method : "POST",
				data : JSON.stringify({bucketListDetail : bucketListDetail, bucketListWriter : bucketListWriter, treeNo : treeNo }),
				dataType : "text",
				headers : {
							"Accept" : "application/json",
							"Content-Type" : "application/json"
						},
				success : function(response,status){
							alert("확인요:"+status);
							alert(response);
				},
				error : function (status) {
				}
			})	
		})	
	})	
		

	


	
					
		
	
	
	
	</script>
</head>
<body>



<div>
	 버킷리스트 목록 보기
	</div>


	
	<input type = "hidden" id="treeNo"  value=${tree.treeNo }><br>
	 <input type = "text" name="bucketListWriter"  placeholder="작성자를 입력하세요."	size="30"/><br>
	 <input type = "text" name="bucketListDetail"  placeholder="버킷리스트를 입력하세요."	size="30"/>
	 <input type="button"  id="btn1" value="등록" /><br><br>

	

 
 <c:set var="i" value="0" />
	<c:forEach var="bucketList" items="${list}">
		<c:set var="i" value="${ i+1 }" />






	

		버킷리스트 번호: ${bucketList.bucketListNo}<br/>
		작성자 : ${bucketList.bucketListWriter}<br/>
		작성 내용 : ${bucketList.bucketListDetail}<br/>
		작성 일자 : ${bucketList.bucketListRegDate}<br/>
		도장		: ${bucketList.stampState}<br/>
	
	
	
	 <input type="button" name="informTextconfirmButton" value="수정">
	 <input type="button" name="informTextconfirmButton" value="삭제"><br/>
	</c:forEach>
	






</body>
</html>