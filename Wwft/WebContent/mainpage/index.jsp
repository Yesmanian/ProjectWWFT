<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/mainpage/style.css">
    <title>World Wild Family Tree</title>
</head>
<body>
	 <section class="showcase">
        <header>
            <h2 class="logo">WWFT</h2>
            <div class="toggle"></div>
        </header>

        <video src="family.mp4" muted loop autoplay></video>

        <div class="overlay"></div>

        <div class="text">
            <h2>We can do it</h2>
            <h3>We are the Family</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Doloribus odit facilis voluptate tempore reiciendis eum rem iusto autem quaerat perspiciatis?</p>
            <a href="#">Join</a>
        </div>

        <ul class="social">
            <li><a href="#"><img src="/resources/images/mainpage/facebook.png" alt=""></a></li>
            <li><a href="#"><img src="/resources/images/mainpage/instagram.png" alt=""></a></li>
            <li><a href="#"><img src="/resources/images/mainpage/twitter.png" alt=""></a></li>
        </ul>
    </section>

    <div class="menu">
        <ul>
            <li><a href="#">Login</a></li>
            <li><a href="#">Contact</a></li>
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