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
	 ��Ŷ����Ʈ ��� ����
	</div>


	
	<input type = "hidden" id="treeNo"  value=${tree.treeNo }><br>
	 <input type = "text" name="bucketListWriter"  placeholder="�ۼ��ڸ� �Է��ϼ���."	size="30"/><br>
	 <input type = "text" name="bucketListDetail"  placeholder="��Ŷ����Ʈ�� �Է��ϼ���."	size="30"/>
	 <input type="button"  id="btn1" value="���" /><br><br>

	

 
 <c:set var="i" value="0" />
	<c:forEach var="bucketList" items="${list}">
		<c:set var="i" value="${ i+1 }" />






	

		��Ŷ����Ʈ ��ȣ: ${bucketList.bucketListNo}<br/>
		�ۼ��� : ${bucketList.bucketListWriter}<br/>
		�ۼ� ���� : ${bucketList.bucketListDetail}<br/>
		�ۼ� ���� : ${bucketList.bucketListRegDate}<br/>
		����		: ${bucketList.stampState}<br/>
	
	
	
	 <input type="button" name="informTextconfirmButton" value="����">
	 <input type="button" name="informTextconfirmButton" value="����"><br/>
	</c:forEach>
	






</body>
</html>