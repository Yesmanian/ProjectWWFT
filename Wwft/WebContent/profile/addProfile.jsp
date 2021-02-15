<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR" /> 
<meta name="viewport" content="width=device-width, init
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
ial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>프로필 생성</title>
<style type="text/css">
/*-----Background-----*/

body{
	 background-image:url(https://s3.envato.com/files/243754334/primag.jpg);
	 background-repeat:no-repeat;
	 background-size:cover;
	 width:100%;
	 height:100vh;
	 overflow:auto;
	 
}

/*-----for border----*/
.container{
	font-family:Roboto,sans-serif;
	  background-image:url(https://image.freepik.com/free-vector/dark-blue-blurred-background_1034-589.jpg) ;
    
     border-style: 1px solid grey;
     margin: 0 auto;
     text-align: center;
     opacity: 0.8;
     margin-top: 67px;
   box-shadow: 2px 5px 5px 0px #eee;
     max-width: 500px;
     padding-top: 10px;
     height: 450px;
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
.col-xs-4.male{
	 color: white;
     font-size: 13px;
     margin-top: 9px;
     padding-bottom: 16px;
}
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
<form action="/profile/addProfile" method="post">
 <div class="container">
 <input type ="hidden" name = "treeNo" value ="${user.treeNo}"> 
 <!---heading---->
     <header class="heading">프로필 생성</header><hr></hr>
	<!---Form starting----> 
	<div class="row ">
	 <!--- For Name---->
         <div class="col-sm-12">
             <div class="row">
			     <div class="col-xs-4">
          	         <label class="profileImage">프로필 이미지 :</label> </div>
		         <div class="col-xs-8">
		             <input type="file" name="profileImage" id="profileimage" placeholder="Enter your First Name" class="form-control ">
             </div>
		      </div>
		 </div>
		 
		 
         <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
                     <label class="profileName">프로필이름  :</label></div>
				<div class ="col-xs-8">	 
		             <input type="text" name="profileName" id="profilename" placeholder="Enter your profilename" class="form-control last">
                </div>
		     </div>
		 </div>
     <!-----For email---->
		 <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
		             <label class="familyRelations" >가족관계 :</label></div>
			     <div class="col-xs-8"	>	 
			          <input type="text" name="familyRelations"  id="email"placeholder="Enter your familyRelations" class="form-control" >
		         </div>
		     </div>
		 </div>
	 <!-----For Password and confirm password---->
          <div class="col-sm-12">
		         <div class="row">
				     <div class="col-xs-4">
		 	              <label class="name">이름 :</label></div>
				  <div class="col-xs-8">
			             <input type="text" name="name" id="name" placeholder="Enter your name" class="form-control">
				 </div>
          </div>
		  </div>
		  
          <div class="col-sm-12">
		         <div class="row">
				     <div class="col-xs-4">
		 	              <label class="birthday">생년월일 :</label></div>
				  <div class="col-xs-8">
			             <input type="text" name="birthday" id="birthday" placeholder="Enter your birthday" class="form-control">
				 </div>
          </div>
		  </div>
     <!-----------For Phone number-------->
          <div class="col-sm-12">
		         <div class="row">
				     <div class="col-xs-4">
		 	              <label class="phone">핸드폰 번호 :</label></div>
				  <div class="col-xs-8">
			             <input type="text" name="phone" id="phone" placeholder="Enter your phone" class="form-control">
				 </div>
          </div>
		  </div>
		  
          <div class="col-sm-12">
		         <div class="row">
				     <div class="col-xs-4">
		 	              <label class="address">주소 :</label></div>
				  <div class="col-xs-8">
			             <input type="text" name="address" id="address" placeholder="Enter your address" class="form-control">
				 </div>
          </div>
		  </div>
		  <input type="submit" value="submit전송">
		<input type="button" value="뒤로가기" onclick="history.back(-1);">
		     <div class="col-sm-12">
		         <div class="btn btn-warning">Submit</div>
		   </div>
		 </div>
	 </div>	 
		 		 
		 
</form>
</body>		
</html>