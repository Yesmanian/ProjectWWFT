<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Fjalla+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">





<link rel="stylesheet" href="../resources/css/tree/getBucketList.css" >

<meta charset="EUC-KR">
<title>버킷리스트 목록</title>
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>

<script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
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
				success : function(){
					

					const Toast = Swal.mixin({ 
						toast: true, 
						position: 'center-center', 
						showConfirmButton:false, 
						timer: 1000, 
						timerProgressBar: true, 
						didOpen: (toast) => { 
							toast.addEventListener('mouseenter', Swal.stopTimer) 
							toast.addEventListener('mouseleave', Swal.resumeTimer)
							} 
						}) 
							Toast.fire({ 
								icon: 'success', 
								title: '버킷리스트가 등록되었습니다.'
								})

								setTimeout('location.reload()',1000);
					
					
					
					
						
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
	

	     
      
      <div class="wrapper">
  <div class="header"><h1 class="text-white" style="font-size: 100px;">BUCKET LIST</h1>
        	<div class="text-white">
        	<h3 style="font-size: 40px;">There is nothing impossible for us in this world<br>
        	What do you want to challenge?<br>
        		Then challenge your dreams now<br>
        		 You can do anything</h3>
        	   </div>
        	</div>
		</div>
  
  
  
  
  
  
  
  
  <div class="leftCol">
      <i class="fas fa-arrow-circle-left fa-2x" type="button" onclick="location.href='/tree/getUserTree?${param.treeNo}'"></i>
 
  </div>
  
  <div class="rightCol">
  
  </div>
  
  
  
  
  <div class="midTop text-center">
   	<form class="text-center ">
  <div class="form-group col-sm-3 col-md-6 col-lg-4"  style="width: 30%; float:center; margin:0 auto">
    <label for="exampleInputEmail1 bk"><h5>작성자</h5></label>
    <input type="text" class="form-control" name="bucketListWriter" placeholder="작성자를 입력하세요" >
  </div>
 <br>
     <hr width="100%" color="silver" >
     
  <div class="form-group col-sm-3 col-md-6 col-lg-4"  style="width: 30%; float:center; margin:0 auto">
    <label for="exampleInputPassword1 "><h5>버킷리스트</h5></label>
    <input type="text" class="form-control"  name="bucketListDetail"  placeholder="버킷리스트를 입력하세요">
  </div>
 <br>
 
  <button type="button" 		id="btn2"		class="btn btn-outline-dark  btn-lg btn2">등록</button>
</form>

     <hr width="100%" color="silver" >
   </div>
  <br><br>
  
  
    
  <div class="midBottom text-center">
 <table class="table">
  <thead class="thead-light">
    <tr>
      <th scope="col"></th>
      <th scope="col"><h4>작성자</h4></th>
      <th scope="col"><h4>버킷리스트</h4></th>
      <th scope="col"><h4>작성 날짜</h4></th>
      <th scope="col"><h4>삭제</h4></th>
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
       onclick='location.href="/tree/removeBucketList?bucketListNo=${bucketList.bucketListNo}&treeNo=${param.treeNo }"'><i class="far fa-trash-alt fa-2x"></i></button></td>
      
      </c:forEach>
    </tr>
</tbody>
</table>
  </div>
 
 
 
  
   
 
  <div class="footer text-center ">
           
 
</div>
     
      
	
</body>
</html>      
      
      
  
  
  
  
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  

 
 
 
 
 
 
 
 
 

      
      

     
        
        
     
       

        
        
        
        
        
        
        
        
        
        
    
    
  
       



		
	   
        
	
   
        
        
    
		
		
	
       
  
       
     
        
     
           
        
   
     
	
        
        
        
		
		
		
	


	 


	 
	 
	 
	  

	
	
