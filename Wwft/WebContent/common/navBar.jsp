<%@ page language="java" contentType="text/html; charset=UTF-8" %>
  <%@ page pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Chela+One&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script  src="https://code.jquery.com/jquery-3.5.1.min.js"  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="  crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-serialize-object/2.5.0/jquery.serialize-object.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
   <style>
     div.dropdown-menu.show{
      margin: 0px 0px 0px -80px;
     }

	a{
		font-family: 'Chela One', cursive;		
	 }
	 
	 h3{
	 	font-family: 'Anton', sans-serif;
	 }
	 
	 .bar{
	 		
		      background-color:whitesmoke;
	 }
	 
   </style> 
</head>
<body>
   <div class="bar" >
    <nav class="navbar navbar-expand-lg navbar-light ">
        <a class="navbar-brand" href="/index.jsp"><i><h3>FAMILY TREE</h3></i></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
            
           
            <li>
            </li>
            <li class="nav-item dropdown ">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img src="/resources/images/profile/${profile.profileImage}" width="40" height="40" >
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="/tree/getUserTree">My Tree</a>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#myModal">Forest</a>
                <a class="dropdown-item" href="/profile/getProfileList">Change Profile</a>
                <a class="dropdown-item" href="/profile/updateProfile?profileNo=${profile.profileNo}">Edit Profile</a>
                <a class="dropdown-item" href="/user/getUser?userId=${user.userId}">Edit User</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="/user/logout">Logout</a>
              </div>
            </li>
           
          </ul>
          
        </div>
      </nav>
    </div>
</body>
</html>