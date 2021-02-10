<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../resources/css/tree/getBucketList.css" >

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
	
	<header id="wrap"> 
 		    <jsp:include page="../common/navBar.jsp"/>
      </header>   
	

	
	
	
    <div class="grid grid10">
    
    <!-- Ȩ������ ���� -->
        <div class="column column10">
        	<h1 class="text-center">��Ŷ����Ʈ ���</h1>
        </div>
        
        
        
        <!-- ���̵� �� -->
        <div class="column column10 side">
       
        <form class="form-horizontal">
  <div class="form-group">
    <label for="inputEmail3" class="col control-label">�ۼ���</label>
    <div class="col-sm-10">
      <input type="bucketListWriter" class="form-control" id="bucketListWriter" placeholder="�ۼ��ڸ� �Է��ϼ���.">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col control-label">��Ŷ����Ʈ �ۼ��ϱ�</label>
    <div class="col-sm-10">
      <input type="bucketListDetail" class="form-control" id="bucketListDetail" placeholder="��Ŷ����Ʈ�� �Է��ϼ���">
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-danger">���</button>
    </div>
  </div>
</form>
        
        
        
        
        
        
        
        
        
        
        
        
        
             <input type = "text" 	name="bucketListWriter"  placeholder="�ۼ��ڸ� �Է��ϼ���."	size="30"/>
		     <input type = "text" 	name="bucketListDetail"  placeholder="��Ŷ����Ʈ�� �Է��ϼ���."	size="30"/>
		     <input id="btn1"  type="button" value="���" >
        
        </div>
        
        
      <!-- ���� ���� -->
        <div class="column column10 text-center">
             <c:set var="i" value="0" />
				<c:forEach var="bucketList" items="${list}">
				<c:set var="i" value="${ i+1 }" />

			<div>��Ŷ����Ʈ ��ȣ: ${bucketList.bucketListNo}<br/></div>
			<div>�ۼ��� : ${bucketList.bucketListWriter}<br/></div>
			<div >�ۼ� ���� : ${bucketList.bucketListDetail}<br/></div>
			<div>�ۼ� ���� : ${bucketList.bucketListRegDate}<br/></div>
		
          <input type="button" id="delete_bucketList" value="����" onclick='location.href="/tree/removeBucketList?bucketListNo=${bucketList.bucketListNo}&treeNo=${param.treeNo }"'>
		</c:forEach>
	   </div>
        
	
   
        
        
    
		
		
	
        
        
        <!-- Ǫ�� -->
        <div class="column column10">
        	<input type="button" value="�ڷΰ���" onclick="history.back(-1);">
        </div>
    </div>
        
       
     
        
     
           
        
   
     
	
        
        
        
		
		
		
	


	 


	 
	 
	 
	  

	
	
	
</body>
</html>