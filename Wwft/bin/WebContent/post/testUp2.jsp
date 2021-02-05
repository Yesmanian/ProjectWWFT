<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title>slide images</title>
    <link type="text/css" >
    <style type="text/css">
    
    *{ 
	    margin: 0; 
	    padding: 0; 
	    font-size: 1rem; 
	    text-decoration: none; 
	    list-style: none; 
	    color: #333333; 
    }
    
     #index_01{ 
	     width: 800px; 
	     height: 800px; 
	     border: 1px solid dimgrey; 
	     margin: 0 auto; 
     }
     
      #header1{ 
	      height: 70px; 
	      border-bottom: 1px solid dimgrey; 
	      box-sizing: border-box; 
	      text-align: center; 
	      line-height: 100px; 
	      font-size: 1.5rem; 
      } 
      
      #slide1{ 
	      height: 700px; 
	      overflow: hidden; 
	      border-bottom: 1px solid dimgrey; 
      } 
      
      #slide1>ul{ 
	      width: 260px; 
	      font-size: 0; 
      }
      
       #slide1>ul>li{ 
	       display: inline-block;
		   font-size: 0; 
		}


    </style>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
	
	
	setInterval(function(){
		$('#slide1>ul').delay(2500); 
		$('#slide1>ul').animate({marginLeft: "-1200px"}) 
		$('#slide1>ul').delay(2500); 
		$('#slide1>ul').animate({marginLeft: "-2400px"}) 
		$('#slide1>ul').delay(2500); 
		$('#slide1>ul').animate({marginLeft: "0px"}) });

	
	</script>
</head>


<body>
    <div id="index_01">
        <div id="header1">좌우 슬라이딩</div>
        <div id="slide1">
            <ul>
                <li><a href="#"><img src="/resources/images/uploadFiles/4f9e8cf8-f435-4634-9196-30a9eabea543_9.jpg" alt="슬라이드1"></a></li>
                <li><a href="#"><img src="/resources/images/uploadFiles/4f9e8cf8-f435-4634-9196-30a9eabea543_8.jpg" alt="슬라이드2"></a></li>
            </ul>
        </div>
    </div>
    

    <script type="text/javascript" src="script/slide.js"></script>
</body>

</html>










	