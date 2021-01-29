<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ŷ����Ʈ ��� ����</title>
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
							alert("Ȯ�ο�:"+status);
							
							
				},
				error : function (status) {
				}
			})	
			
		})	
	
	})	
		
		
		
		
</script>
 </head>
	<body>	
<div class="container">
	<form id="bucketListForm"	name="bucketListForm" method="get"> 
	<br><br>
		<div>
		<div>
		 <span><strong>��Ŷ����Ʈ ���</strong></span> <span id="bll"></span>
		</div>
		<div>
		<table class="table">
		<tr>
		<td>
		
		
		
		<input type = "hidden" id="treeNo"  value=${tree.treeNo }><br>
		 <input type = "text" name="bucketListWriter"  placeholder="�ۼ��ڸ� �Է��ϼ���."	size="30"/><br>
		 <input type = "text" name="bucketListDetail"  placeholder="��Ŷ����Ʈ�� �Է��ϼ���."	size="30"/>
		<button id="btn1" class="btn btn-primary" type="button" onclick="fn_bucketList('${tree.treeNo}')">���</button>
		
		<div id="result"></div>
</div>

	 


	 
	 
	 
	 <div id="bucketListAjax">
	 
	 <c:set var="i" value="0" />
		<c:forEach var="bucketList" items="${list}">
			<c:set var="i" value="${ i+1 }" />

		
			<div class="wrap">
			<div>��Ŷ����Ʈ ��ȣ: ${bucketList.bucketListNo}<br/></div>
			<div>�ۼ��� : ${bucketList.bucketListWriter}<br/></div>
			<div>�ۼ� ���� : ${bucketList.bucketListDetail}<br/></div>
			<div>�ۼ� ���� : ${bucketList.bucketListRegDate}<br/></div>
			<div>����		: ${bucketList.stampState}<br/></div>
		
		
		
		 <input type="button" name="informTextconfirmButton" value="����">
		 <input type="button" name="informTextconfirmButton" value="����"><br/>
		</div>
		</c:forEach>
		</div>
</body>
</html>