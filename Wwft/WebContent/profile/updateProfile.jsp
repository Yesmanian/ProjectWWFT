<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR" /> 
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Archivo+Narrow:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Patua+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Song+Myung&display=swap" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> -->
<!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css"> -->
<link rel="stylesheet" href="../resources/css/datepicker/datepicker.css">



<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/locale/ko.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="../resources/javascript/js/datepicker.js"></script>
<script src="../resources/javascript/js/datepicker.ko-KR.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script> -->


<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>프로필 수정</title>
<style type="text/css">
/*-----Background-----*/

body{
	 background-color: white;
	
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
   border-radius: 25px;
   background-color:#AE5E1A
	
	
}
#image{

 inline-size: -webkit-fill-available;


}

/* radio 버튼 아래로 내려오는 CSS*/
#image{

 inline-size: -webkit-fill-available;


}


h1{
font-family: 'Anton', sans-serif;
}

h3{
font-family: 'Anton', sans-serif;
}

label{
font-family: 'Song Myung', serif;
    font-weight: 900;

}

h5{
font-family: 'Patua One', cursive;
}

h6{
font-family: 'Archivo Narrow', sans-serif;
}
/*-----for border----*/
.container{
	font-family:Roboto,sans-serif;


 background-color: #E6B36D;	
	 background-image :  url("/resources/images/profile/wood-2045379_960_720.jpg");
	   background-blend-mode: multiply;

     border-style: 1px solid #8B5927;
     margin: 0 auto;
     text-align: center;
     opacity: 0.8;
     margin-top: 67px;
	 border: solid;
	 border: outset #8B5927;;
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
     color: green;
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
      
      <script>



          $(document).ready(function(){
			  
			var checkRadio = function(){
				// alert('호출')
				$('input:radio[name="profileImage"][value="${profile.profileImage}"]').prop('checked', true);

			}

			checkRadio();
				
				  
			  

            $('[data-toggle="datepicker"]').datepicker({
        format: 'YYYY-MM-DD',
        ignoreReadonly: true,
        autoHide: true,
        zIndex: 2048,
	  });
	  
	  

        //     $('#birthday').datetimepicker({
        //     format: 'YYYY-MM-DD',
        //     ignoreReadonly: true,
        //     locale: 'ko'
        //   });//시간설정

          })
      </script>
</head>


<body>
<div class="card ">
<form action="/profile/updateProfile" method="post" style="background-color:#FDF5E6" >
 <div class="container" style="margin-top: 100px;">
 <input type ="hidden" name = "profileNo" value ="${profile.profileNo}"> 
 <!---heading---->
 
 
 	 
     <header class="heading"><h1 style="color:white; font-size: -webkit-xxx-large;">Edit a Profile</h1></header><hr style="border-bottom: thin;
    border-color: aliceblue;">
</hr>
  
    
    
    
    

	<!---Form starting----> 
	<br>
	
	<div>
        <!--  input class로 된것을 name으로 다시 고침 -->
        <label class="radio-inline">
            <img src="/resources/images/profile/profile_1.png" alt="기본 이미지 - 나무" width="70" height="70">
            <input type="radio" name="profileImage" 	 id="image" value="profile_1.png"  checked="checked">  
        </label>
        <label class="radio-inline">
            <img src="/resources/images/profile/profile_2.png" alt="고양이"  width="70" height="70">
            <input type="radio" name="profileImage"		id="image" 	value="profile_2.png"> 
        </label>
        <label class="radio-inline">
            <img src="/resources/images/profile/profile_3.png" alt="다람쥐"  width="70" height="70">
            <input type="radio" name="profileImage" 	id="image"	value="profile_3.png"> 
        </label>
        <label class="radio-inline">
            <img src="/resources/images/profile/profile_4.png" alt="부엉이"  width="70" height="70">
            <input type="radio" name="profileImage"		id="image" 	value="profile_4.png"> 
        </label>
        <label class="radio-inline">
            <img src="/resources/images/profile/profile_5.png" alt="판다"  width="70" height="70">
            <input type="radio" name="profileImage"		id="image" 	value="profile_5.png" > 
        </label>

    </div>
	
	
<div class="text" style="padding-top: 10px;">
	<div class="col-sm-12">
		     <div class="row" style="display: -webkit-inline-box;">
			     <div class="col-xs-4" style="color:#006400; font-size: larger;	
					width: 150px; height: 28px;" >
                     <label class="profileName">Profile Name </label></div>
                     
				<div class ="col-xs-8" style="width: 270px;">	 
		             <input type="text" name="profileName" id="profilename"  class="form-control last" value="${profile.profileName}">
                </div>
		     </div>
		 </div>
		 <br>
		 
     <!-----For email---->
		 <div class="col-sm-12" >
		     <div class="row" style="display: -webkit-inline-box;">
			     <div class="col-xs-4 "  style="color:#006400; font-size: larger;	
					width: 150px; height: 28px;">
		             
		             <label class="familyRelations" >Family Relations</label></div>
			     <div class="col-xs-8"  style="width: 270px;"	>	 
			          <input type="text" name="familyRelations"  id="familyRelations" class="form-control last" value="${profile.familyRelations}" >
		         </div>
		     </div>
		 </div>
		 <br>
	 <!-----For Password and confirm password---->
		  
          <div class="col-sm-12">
		         <div class="row"  style="display: -webkit-inline-box;">
				     <div class="col-xs-4"  style="color:#006400;	 font-size: larger;
					width: 150px; height: 28px;"	>
		 	              <label class="birthday">Birthday</label></div>
				  <div class="col-xs-8"  style="width: 270px;">
			             <!-- <input type="text" name="birthday" id="birthday" data-toggle="datepicker" readonly  class="form-control last" value="${profile.birthday}"> -->
			             <input type="date" name="birthday" id="birthday"  class="form-control last" value="${profile.birthday}">
				 </div>
          </div>
		  </div>
		  <br>
     <!-----------For Phone number-------->
          <div class="col-sm-12">
		         <div class="row"  style="display: -webkit-inline-box;">
				     <div class="col-xs-4 "	  style="color:	#006400;	 font-size: larger;
					width: 150px; height: 28px;">
		 	              <label class="phone">Phone</label></div>
				  <div class="col-xs-8"  style="width: 270px;">
			             <input type="text" name="phone" id="phone"  class="form-control last" value="${profile.phone}">
				 </div>
          </div>
		  </div>
		  <br>
		  
          <div class="col-sm-12">
		         <div class="row"  style="display: -webkit-inline-box;">
				     <div class="col-xs-4"  style="color:#006400;	 font-size: larger;	
					width: 150px; height: 28px;">
		 	              <label class="address">Address</label></div>
				  <div class="col-xs-8"  style="width: 270px;">
			             <input type="text" name="address" id="address"  class="form-control last" value="${profile.address}">
				 </div>
          </div>
		  </div>
		    </div>
		  <br>
		  <br>
		
		<div class="button">
			<button type="button" class="btn " 	onclick="history.back(-1);"  style="font-size: 20px;width: 106px; "><h3>Go Back</h3></button>
		  <button type="submit" class="btn " 	 style="font-size: 20px;width: 106px;"><h3>Edit</h3></button>
		  <button type="button" class="btn " 	 style="font-size: 20px;width: 106px;"><h3>Remove</h3></button>
		
		     <div class="col-sm-12">
		 </div>
	</div>
		 		<div class="card bg-light"	style="margin-top: 35px;">
	</div>
		<article class="bg-deafult mb-3 text-center">
			<div class="card-body" style="margin-top: 10px;">
				<h5 id="foot" class="mt-6">ⓒ WWFT Corp All Rights Reserved</h5>
					 <h6 class="mt-6">This site is a family community site.<br> 
					 We hope that our site reflects on the true meaning of family.</h6>
						
			
				
		
			</div>
			
		</article>
		 </div>
	
	
	
</body>		
</html>