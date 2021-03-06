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
				success : function(data){
							alert("확인요:"+data);
							location.reload();
				
							
				},
			
				error : function (status) {
				}
			
			})	
				
		})	
	
	})	

	
		$(document).ready(function () {
			$("#delete_bucketList").click(function () {
				var result = confirm("버킷리스트를 삭제하시겠습니까?");
				
			})
			
		})

	
		
</script>
 </head>
	<body>	

	
		<div id="root">
			<header>
				<h1>버킷리스트 목록</h1>
			</header>
		
			 
			
			
			
			<section id="container">
				<form name="readForm" role="form" method="post">
				</form>

		
		 <input type = "text" 	name="bucketListWriter"  placeholder="작성자를 입력하세요."	size="30"/><br>
		 <input type = "text" 	name="bucketListDetail"  placeholder="버킷리스트를 입력하세요."	size="30"/>
		<input id="btn1"  type="button" value="등록" >
		
		   <input type="button" value="수정하기" onclick='location.href="/tree/updateBucketListView?treeNo=${param.treeNo}"'>
		<input type="button" value="뒤로가기" onclick="history.back(-1);">
		


	 


	 
	 
	 
	 
	 <c:set var="i" value="0" />
		<c:forEach var="bucketList" items="${list}">
			<c:set var="i" value="${ i+1 }" />

		
			<form>
			<div>버킷리스트 번호: ${bucketList.bucketListNo}<br/></div>
			<div>작성자 : ${bucketList.bucketListWriter}<br/></div>
			<div >작성 내용 : ${bucketList.bucketListDetail}<br/></div>
			<div>작성 일자 : ${bucketList.bucketListRegDate}<br/></div>
			<div >도장		: ${bucketList.stampState}<br/></div>
		
          <input type="button" id="delete_bucketList" value="삭제" onclick='location.href="/tree/removeBucketList?bucketListNo=${bucketList.bucketListNo}&treeNo=${param.treeNo }"'>
		</form>
		</c:forEach>
	
	
	
	
	
	
</body>
</html>