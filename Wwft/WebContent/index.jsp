<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/mainpage/style.css">
    <title>FAMILY TREE</title>
</head>
<body>
	 <section class="showcase">
        <header>
           <i><h1 class="logo">FAMILY TREE</h1></i> 
            <div class="toggle"></div>
        </header>

        <video src="/resources/images/mainpage/family.mp4" muted loop autoplay></video>

        <div class="overlay"></div>

        <div class="text">
            <h2>We can do it</h2>
            <h3>We are the Family</h3>
            <h4 class="go">Welcome to our site.<br> 
            Family is not an important thing. It's everything.<br>
			Love looks not with the eyes, But with the mind.<br>
			The first duty of love is to listen. Hear and feel your family's voice.<br>
			Love begins with caring for the person closest to you, Your family.<br>
			May your family be full of blessings.</h4>
       
          
         
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