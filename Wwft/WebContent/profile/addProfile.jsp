<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR" /> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Song+Myung&display=swap" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>프로필 생성</title>
<style type="text/css">
/*-----Background-----*/

body{
	 background-color:black;
	 background-repeat:no-repeat;
	 background-size:cover;
	 width:100%;
	 height:100vh;
	 overflow:auto;
	 
}
button{
   width: 100px;
   height: 50px;
   border: 20px solid gold;
   border-radius: 10px;
    background-color:black;
	
	
}


h1{
font-family: 'Anton', sans-serif;
}

h3{
font-family: 'Anton', sans-serif;
}

label{
font-family: 'Song Myung', serif;
}
/*-----for border----*/
.container{
	font-family:Roboto,sans-serif;

     border-style: 1px solid black;
     margin: 0 auto;
     text-align: center;
     opacity: 0.8;
     margin-top: 67px;
	 border: solid;
	 border: outset white;
     max-width: 500px;
     padding-top: 10px;
     height: 650px;
     margin-top: 166px;
}
/*--- for label of first and last name---*/
.lastname{
	 margin-left: 1px;
     font-family: sans-serif;
     font-size: 14px;
     color: white;
     margin-top: 10px;
}
.firstname{
	 margin-left: 1px;
     font-family: sans-serif;
     font-size: 14px;
     color: white;
     margin-top: 5px;
}
#lname{
	 margin-top:5px;
}
	  

/*---for heading-----*/
.heading{
	 text-decoration:bold;
	 text-align : center;
	 font-size:30px;
	 color:#F96;
	 padding-top:10px;
}
/*-------for email----------*/
  /*------label----*/
#email{
	  margin-top: 5px;
}
/*-----------for Password--------*/
     /*-------label-----*/
.mail{
	 margin-left: 44px;
     font-family: sans-serif;
     color: white;
     font-size: 14px;
     margin-top: 13px;
}
.pass{
	 color: white;
     margin-top: 9px;
     font-size: 14px;
     font-family: sans-serif;
     margin-left: 6px;
     margin-top: 9px;
}
#password{
 margin-top: 6px;
}
/*------------for phone Number--------*/
      /*----------label--------*/
.pno{
	 font-size: 18px;
     margin-left: -13px;
     margin-top: 10px;
     color: #ff9;
	
}	

/*--------------for Gender---------------*/
     /*--------------label---------*/
.gender {
	 color: white;
     font-family: sans-serif;
     font-size: 14px;
     margin-left: 28px;
     margin-top: 8px;
}

     /*---------- for Input type--------*/

.col-xs-4.female {
     color: white;
     font-size: 13px;
     margin-top: 9px;
     padding-bottom: 16px;
	 padding-right: 95px;
}	
/*------------For submit button---------*/
.sbutton{
	 color: white;
     font-size: 20px;
     border: 1px solid white;
     background-color: #080808;
     width: 32%;
     margin-left: 41%;
     margin-top: 16px;
	 box-shadow: 0px 2px 2px 0px white;
  	   
   }
.btn.btn-warning:hover {
    box-shadow: 2px 1px 2px 3px #99ccff;
	background:#5900a6;
	color:#fff;
	transition: background-color 1.15s ease-in-out,border-color 1.15s ease-in-out,box-shadow 1.15s ease-in-out;
	
}	 
	 
	  </style>
</head>


<body>
<form action="/profile/addProfile" method="post" >
 <div class="container">
 <input type ="hidden" name = "treeNo" value ="${user.treeNo}"> 
 <!---heading---->
     <header class="heading"><h1 style="color: white;font-size: -webkit-xxx-large;">Create Profile</h1></header><hr style="border-bottom: thin;
    border-color: aliceblue;">
</hr>
  
    
    
    
    

	<!---Form starting----> 
	<br>
	<div class="col-sm-12">
		     <div class="row" style="display: -webkit-inline-box;">
			     <div class="col-xs-4" style="color: white;	 font-size: larger;	
					width: 150px; height: 28px;" >
                     <label class="profileImage">Prfile Image </label></div>
                     
				<div class ="col-xs-8" style="width: 270px;">	 
		             <input type="file" name="profileImage" id="profileImage" placeholder="프로필 이미지를 선택하세요" class="form-control last">
                </div>
		     </div>
		 </div>
		 <br>
		 
	

	<div class="col-sm-12">
		     <div class="row" style="display: -webkit-inline-box;">
			     <div class="col-xs-4" style="color: white;	 font-size: larger;	
					width: 150px; height: 28px;" >
                     <label class="profileName">Profile Name </label></div>
                     
				<div class ="col-xs-8" style="width: 270px;">	 
		             <input type="text" name="profileName" id="profilename" placeholder="프로필 이름을 입력하세요" class="form-control last">
                </div>
		     </div>
		 </div>
		 <br>
		 
     <!-----For email---->
		 <div class="col-sm-12" >
		     <div class="row" style="display: -webkit-inline-box;">
			     <div class="col-xs-4 "  style="color: white;	 font-size: larger;	
					width: 150px; height: 28px;">
		             
		             <label class="familyRelations" >Family Relations</label></div>
			     <div class="col-xs-8"  style="width: 270px;"	>	 
			          <input type="text" name="familyRelations"  id="email"placeholder="가족관계를 입력하세요" class="form-control last" >
		         </div>
		     </div>
		 </div>
		 <br>
	 <!-----For Password and confirm password---->
		  
          <div class="col-sm-12">
		         <div class="row"  style="display: -webkit-inline-box;">
				     <div class="col-xs-4"  style="color: white;	 font-size: larger;
					width: 150px; height: 28px;"	>
		 	              <label class="birthday">Birthday</label></div>
				  <div class="col-xs-8"  style="width: 270px;">
			             <input type="text" name="birthday" id="birthday" placeholder="생년월일을 입력하세요" class="form-control last">
				 </div>
          </div>
		  </div>
		  <br>
     <!-----------For Phone number-------->
          <div class="col-sm-12">
		         <div class="row"  style="display: -webkit-inline-box;">
				     <div class="col-xs-4 "	  style="color: white;	 font-size: larger;
					width: 150px; height: 28px;">
		 	              <label class="phone">Phone</label></div>
				  <div class="col-xs-8"  style="width: 270px;">
			             <input type="text" name="phone" id="phone" placeholder="핸드폰 번호를 입력하세요" class="form-control last">
				 </div>
          </div>
		  </div>
		  <br>
		  
          <div class="col-sm-12">
		         <div class="row"  style="display: -webkit-inline-box;">
				     <div class="col-xs-4"  style="color: white;	 font-size: larger;	
					width: 150px; height: 28px;">
		 	              <label class="address">Address</label></div>
				  <div class="col-xs-8"  style="width: 270px;">
			             <input type="text" name="address" id="address" placeholder="이메일을 입력하세요" class="form-control last">
				 </div>
          </div>
		  </div>
		  <br>
		  <br>
		  <br>
		  
		  <button type="submit" class="btn " 	onclick="history.back(-1);" style="font-size: 20px;width: 106px; color: white;""><h3>Create</h3></button>
		
		  <button type="button" class="btn " 	onclick="history.back(-1);"  style="font-size: 20px;width: 106px; color: white;""><h3>Go Back</h3></button>
		     <div class="col-sm-12">
		 </div>

		 
	
	
	
	
</body>		
</html>