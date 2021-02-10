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
		$("#btn2").click( function () {
			var bucketListWriter = $("input[name=bucketListWriter]").val();
			var bucketListDetail = $("input[name=bucketListDetail]").val();
			var treeNo = ${tree.treeNo}
	

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
			
			})	//ajax ��
				
		})	//click ��
		
	})
		

	

	
		
</script>
 </head>
	<body>	
	
	<header id="wrap"> 
 		    <jsp:include page="../common/navBar.jsp"/>
      </header>   
	

	
	
	
    <div class="grid grid10 ">
    
    <!-- Ȩ������ ���� -->
        <div class="column column10 ">
        	<h1 class="text-center ">��Ŷ����Ʈ ���</h1>
        	   </div>
        	
      
        	
        	
     
        
        
        
        <!-- ù��° ��  -->
        <div class="column column11 ">
        
 
 
 
 	<form>
  <div class="form-group">
    <label for="exampleInputEmail1"><h5 >�ۼ���</h5></label>
    <input type="writer" class="form-control" name="bucketListWriter" placeholder="�ۼ��ڸ� �Է��ϼ���" >
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1"><h5>��Ŷ����Ʈ ����</h5></label>
    <input type="detail" class="form-control"  name="bucketListDetail"  placeholder="��Ŷ����Ʈ�� �Է��ϼ���">
  </div>
 
  <button type="button" 		id="btn2"		class="btn btn-danger float-right">���</button>
</form>
 </div>
      
       
       
       
       
       
       
       

        
        
        
        
        
        
        
        
        
        
    
        
        
      <!-- ���� ���� -->
        <div class="column column10 text-center">
        
        
  
       


<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col"><h4>�ۼ���</h4></th>
      <th scope="col"><h4>�ۼ� ����</h4></th>
      <th scope="col"><h4>�ۼ� ����</h4></th>
      <th scope="col"><h4></h4></th>
    </tr>
  </thead>
  <tbody>
  
             <c:set var="i" value="0" />
				<c:forEach var="bucketList" items="${list}">
				<c:set var="i" value="${ i+1 }" />
    <tr>
      <th scope="row"></th>
      <td><h5>${bucketList.bucketListWriter}</h5></td>
      <td><h5> ${bucketList.bucketListDetail}</h5></td>
      <td><h5> ${bucketList.bucketListRegDate}</h5></td>
       <td><button type="button"   class="btn  btn-sm btn" 
       onclick='location.href="/tree/removeBucketList?bucketListNo=${bucketList.bucketListNo}&treeNo=${param.treeNo }"'><h5 class="text-white">����</h5></button></td>
      
      </c:forEach>
    </tr>
</tbody>
</table>

</div>
		
	   
        
	
   
        
        
    
		
		
	
        
        
        <!-- Ǫ�� -->
        <div class="column column10">
         	   <input type="button" 	id="btn1FamilyMotto" onclick="location.href='/tree/getUserTree?${param.treeNo}'"	value="�ڷΰ���" />
        
        </div>
    </div>
        
       
     
        
     
           
        
   
     
	
        
        
        
		
		
		
	


	 


	 
	 
	 
	  

	
	
	
</body>
</html>