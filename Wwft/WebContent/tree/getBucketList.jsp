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

	function fn_del() {
		
		if(confirm("정말 삭제하겠습니까?")==true){
			location.href = "/tree/getBucketList?bucketListNo="+${bucketList.bucketListNo};
			console.log('success');
			
			
		}
		
	}		
	
	
	
		
</script>
 </head>
	<body>	

	
		<div id="root">
			<header>
				<h1>버킷리스트 목록</h1>
			</header>
			<hr />
			 
			<nav>
			  홈 - 글 작성
			</nav>
			<hr />
			
			<section id="container">
				<form name="readForm" role="form" method="post">
		<input type = "hidden" id="treeNo"  value="${tree.treeNo }"><br>
				</form>

		
		 <input type = "text" 	name="bucketListWriter"  placeholder="작성자를 입력하세요."	size="30"/><br>
		 <input type = "text" 	name="bucketListDetail"  placeholder="버킷리스트를 입력하세요."	size="30"/>
		<button id="btn1"  type="button" >등록</button>
		
	

	 


	 
	 
	 
	 
	 <c:set var="i" value="0" />
		<c:forEach var="bucketList" items="${list}">
			<c:set var="i" value="${ i+1 }" />

		
			<form>
			<div>버킷리스트 번호: ${bucketList.bucketListNo}<br/></div>
			<div>작성자 : ${bucketList.bucketListWriter}<br/></div>
			<div id="bucketList_detail">작성 내용 : ${bucketList.bucketListDetail}<br/></div>
			<div>작성 일자 : ${bucketList.bucketListRegDate}<br/></div>
			<div id="bucketList_stamp">도장		: ${bucketList.stampState}<br/></div>
		
          <input type="button" value="수정" onclick='location.href="/tree/updateBucketList?bucketListNo=${bucketList.bucketListNo}"'>
		  <button 	type="button"		onclick="fn_del();">삭제</button>
		</form>
		</c:forEach>
	
	
	
	
	
	
</body>
</html>