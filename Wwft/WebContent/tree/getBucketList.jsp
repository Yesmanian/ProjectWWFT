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
	
	<header id="wrap"> 
 		    <jsp:include page="../common/navBar.jsp"/>
      </header>   
	

	
	
	
    <div class="grid grid10 ">
    
    <!-- 홈페이지 제목 -->
        <div class="column column10 ">
        	<h1 class="text-center ">버킷리스트 목록</h1>
        </div>
        
        
        
        <!-- 사이드 바 -->
        <div class="column column10 ">
       
 <form>
  <div class="form-group">
    <label for="exampleInputEmail1">작성자</label>
    <input type="writer" class="form-control" name="bucketListWriter" placeholder="작성자를 입력하세요." >
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">버킷리스트 내용</label>
    <input type="detail" class="form-control"  name="bucketListDetail"  placeholder="버킷리스트를 입력하세요">
  </div>
 
  <button type="submit" 		id="btn1"		class="btn btn-danger float-right">등록</button>
</form>
       
 </div>
      
       
       
       
       
       
       
       

        
        
        
        
        
        
        
        
        
        
    
        
        
      <!-- 메인 내용 -->
        <div class="column column10 text-center">
             <c:set var="i" value="0" />
				<c:forEach var="bucketList" items="${list}">
				<c:set var="i" value="${ i+1 }" />

			<div>버킷리스트 번호: ${bucketList.bucketListNo}<br/></div>
			<div>작성자 : ${bucketList.bucketListWriter}<br/></div>
			<div >작성 내용 : ${bucketList.bucketListDetail}<br/></div>
			<div>작성 일자 : ${bucketList.bucketListRegDate}<br/></div>
		
          <input type="button" id="delete_bucketList" value="삭제" onclick='location.href="/tree/removeBucketList?bucketListNo=${bucketList.bucketListNo}&treeNo=${param.treeNo }"'>
		</c:forEach>
	   </div>
        
	
   
        
        
    
		
		
	
        
        
        <!-- 푸터 -->
        <div class="column column10">
        	<input type="button" value="뒤로가기" onclick="history.back(-1);">
        </div>
    </div>
        
       
     
        
     
           
        
   
     
	
        
        
        
		
		
		
	


	 


	 
	 
	 
	  

	
	
	
</body>
</html>