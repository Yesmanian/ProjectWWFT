<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Headland+One&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/mainpage/style.css">
    <title>World Wild Family Tree</title>
</head>
<body>
	 <section class="showcase">
        <header>
            <h2 class="logo">Family Tree</h2>
            <div class="toggle"></div>
        </header>

        <video src="/resources/images/mainpage/family.mp4" muted loop autoplay></video>

        <div class="overlay"></div>

        <div class="text">
            <h2>We can do it</h2>
            <h3>We are the Family</h3>
            <h4>Welcome to our site.<br> 
            We hope that this site rethinks the meaning of family and builds a strong bond and makes a positive impact.<br>
            We want you to enjoy the content. May your family be full of blessings.</h4>
          
         
        </div>
    </section>

    <div class="menu">
        <ul>
            <li><a href="/user/login.jsp">Login</a></li>
        </ul>
    </div>

    <script>
        const menuToggle = document.querySelector('.toggle')
        const showcase = document.querySelector('.showcase')

        menuToggle.addEventListener('click', function () {
            menuToggle.classList.toggle('active')
            showcase.classList.toggle('active')
        })
    </script>
</body>
</html>