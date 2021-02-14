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
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../resources/css/tree/familyMotto.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">

<meta charset="EUC-KR">
<title>Family Motto</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>


<script>

//가훈 등록

$(document).ready(function () {

$("#btnFamilyMotto").click(function () {
	var familyMotto = $("input[name=familyMotto]").val();
	var treeNo = ${param.treeNo};
	
	$.ajax({
		type: "POST",
		url : "/tree/json/updateFamilyMotto",
		data : JSON.stringify({familyMotto : familyMotto, treeNo : treeNo}),
		 headers : {
				"Accept" : "application/json",
				"Content-Type" : "application/json"
			},
		success : function () {
		
			
			
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
						title: '가훈이 등록되었습니다.'
						})

			
			
			
			
			
			
			 $("#familyMotto").val(familyMotto);
			
		}
	})
	})
})






</script>
</head>
<body>

	<header id="wrap"> 
 		    <jsp:include page="../common/navBar.jsp"/>
      </header>   
      
      
      
      
      
      
      
      <div class="wrapper">
  <div class="header"><h1 class="text-white">FAMILY MOTTO</h1>
        	<div class="text-white">
        	<h3>There is nothing more precious than family.<br>
        	What does family mean to you?<br>
        	Write a family motto to unite your family</h3>
        	   </div>
        	</div>
		</div>
  
  
  
  
  
  
  
  
  <div class="leftCol">
    	<i class="fas fa-arrow-circle-left fa-2x" type="button" onclick="location.href='/tree/getUserTree?${param.treeNo}'"></i>
  
   
  
  </div>
  <div class="rightCol">
  
  </div>
  
  
  
  
  <div class="midTop text-center">
   
   </div>
  
  
  
  
    
  <div class="midBottom text-center">
  

  <form >
  			<div class="form-group col-sm-3 col-md-6 col-lg-4"   style="width: 40%; float:center; margin:0 auto;">
    		<label class="fm"><h2>가훈</h2></label><br><br>
    <input type="text" class="form-control" name="familyMotto" placeholder="가훈을 입력하세요.">
  </div>
  <br>
 	 
        <button type="button" id="btnFamilyMotto" class="btn btn-outline-dark btn-lg btn2"  style="display:inline-block">등록</button>
  		
  </form>
 
  </div>
  <br>
  
   <hr width="100%" color="silver" >

  <div class="footer text-center ">
           
   <form >
   <div class="form-group col-sm-3 col-md-6 col-lg-4"  style="width: 40%; float:center; margin:0 auto;">
    <label class="fm"><h2>입력된 가훈</h2></label>
    <input type="text" class="form-control"  id="familyMotto"  readonly="readonly"  value="${tree.familyMotto }">
    
    
    
 	</div>
  </form>
</div>
     
      
      
      
      
  
  
  
  
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  

 
 
 
 
 
 
 
 
 

      
      
      
      
      
      
    
        
		
	
     
</body>
</html>
		
	
        
        
       
       
       
       
       
       
       

        
        
        
        
        
        
        
        
        
        
    
    
       
 	
        
 
 	
 	

	
		

	
		
	   
        
	
   
        
        

      
     
           
        
   
     
	
        
        
        
		








