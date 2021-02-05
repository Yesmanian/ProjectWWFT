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
				success : function(data){
							alert("Ȯ�ο�:"+data);
							location.reload();
				
							
				},
			
				error : function (status) {
				}
			
			})	
				
		})	
	
	})	

	
		$(document).ready(function () {
			$("#delete_bucketList").click(function () {
				var result = confirm("��Ŷ����Ʈ�� �����Ͻðڽ��ϱ�?");
				
			})
			
		})

	
		
</script>
 </head>
	<body>	

	
		<div id="root">
			<header>
				<h1>��Ŷ����Ʈ ���</h1>
			</header>
		
			 
			
			
			
			<section id="container">
				<form name="readForm" role="form" method="post">
				</form>

		
		 <input type = "text" 	name="bucketListWriter"  placeholder="�ۼ��ڸ� �Է��ϼ���."	size="30"/><br>
		 <input type = "text" 	name="bucketListDetail"  placeholder="��Ŷ����Ʈ�� �Է��ϼ���."	size="30"/>
		<input id="btn1"  type="button" value="���" >
		
		   <input type="button" value="�����ϱ�" onclick='location.href="/tree/updateBucketListView?treeNo=${param.treeNo}"'>
		<input type="button" value="�ڷΰ���" onclick="history.back(-1);">
		


	 


	 
	 
	 
	 
	 <c:set var="i" value="0" />
		<c:forEach var="bucketList" items="${list}">
			<c:set var="i" value="${ i+1 }" />

		
			<form>
			<div>��Ŷ����Ʈ ��ȣ: ${bucketList.bucketListNo}<br/></div>
			<div>�ۼ��� : ${bucketList.bucketListWriter}<br/></div>
			<div >�ۼ� ���� : ${bucketList.bucketListDetail}<br/></div>
			<div>�ۼ� ���� : ${bucketList.bucketListRegDate}<br/></div>
			<div >����		: ${bucketList.stampState}<br/></div>
		
          <input type="button" id="delete_bucketList" value="����" onclick='location.href="/tree/removeBucketList?bucketListNo=${bucketList.bucketListNo}&treeNo=${param.treeNo }"'>
		</form>
		</c:forEach>
	
	
	
	
	
	
</body>
</html>