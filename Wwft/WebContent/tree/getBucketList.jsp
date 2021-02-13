<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../resources/css/tree/getBucketList.css" >

<meta charset="EUC-KR">
<title>버킷리스트 목록 보기</title>
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
							alert("확인요:"+data);
							location.reload();
				
							
				},
			
				error : function (status) {
				}
			
			})	//ajax 끝
				
		})	//click 끝
		
	})
		

	

	
		
</script>
 </head>
	<body>	
	
	<header id="wrap"> 
 		    <jsp:include page="../common/navBar.jsp"/>
      </header>   
	

	
	
	
    <div class="grid grid10 ">
    
    <!-- 홈페이지 제목 -->
        <div class="column column10 ">
        	<h1 class="text-center ">버킷리스트 목록</h1>
        	   </div>
        	
      
        	
        	
     
        
        
        
        <!-- 첫번째 줄  -->
        <div class="column column11 ">
        
 
 
 
 	<form>
  <div class="form-group">
    <label for="exampleInputEmail1"><h5 >작성자</h5></label>
    <input type="writer" class="form-control" name="bucketListWriter" placeholder="작성자를 입력하세요" >
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1"><h5>버킷리스트 내용</h5></label>
    <input type="detail" class="form-control"  name="bucketListDetail"  placeholder="버킷리스트를 입력하세요">
  </div>
 
  <button type="button" 		id="btn2"		class="btn btn-danger float-right">등록</button>
</form>
 </div>
      
       
       
       
       
       
       
       

        
        
        
        
        
        
        
        
        
        
    
        
        
      <!-- 메인 내용 -->
        <div class="column column10 text-center">
        
        
  
       


<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col"><h4>작성자</h4></th>
      <th scope="col"><h4>작성 내용</h4></th>
      <th scope="col"><h4>작성 일자</h4></th>
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
       onclick='location.href="/tree/removeBucketList?bucketListNo=${bucketList.bucketListNo}&treeNo=${param.treeNo }"'><h5 class="text-white">삭제</h5></button></td>
      
      </c:forEach>
    </tr>
</tbody>
</table>

</div>
		
	   
        
	
   
        
        
    
		
		
	
        
        
        <!-- 푸터 -->
        <div class="column column10">
         	   <input type="button" 	id="btn1FamilyMotto" onclick="location.href='/tree/getUserTree?${param.treeNo}'"	value="뒤로가기" />
        
        </div>
    </div>
        
       
     
        
     
           
        
   
     
	
        
        
        
		
		
		
	


	 


	 
	 
	 
	  

	
	
	
</body>
</html>