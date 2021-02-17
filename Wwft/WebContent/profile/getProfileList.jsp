<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
	<%@page import="java.util.List" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

			<!DOCTYPE html>
			<html>

			<head>

				 <link rel="stylesheet" href="../resources/css/profile/getProfileList.css">
				<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
				<link rel="preconnect" href="https://fonts.gstatic.com">
				<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
				<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">>
				<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
				<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
					rel="stylesheet">
				<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet"
					id="bootstrap-css">
					<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
				<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
				<!-- <link rel="stylesheet" href="getProfileList.css"> -->
				
				<meta charset="EUC-KR">
				<title>프로필 목록</title>
				<script type="text/javascript">
					function readURL(input) {
						if (input.files && input.files[0]) {
							var reader = new FileReader();

							reader.onload = function (e) {
								$('#image_section').attr('src', e.target.result);
							}

							reader.readAsDataURL(input.files[0]);
						}
					}

					// 이벤트를 바인딩해서 input에 파일이 올라올때 위의 함수를 this context로 실행합니다.
					$("#imgInput").change(function () {
						readURL(this);
					});
				</script>
				<style type="text/css">
					html,
					body {
						height: 100px;
						margin-top: 150px;
						background-size: cover;
						background-color: oldlace;

					}



					.container {
						list-style-type: none;
						float: left;
					}

					.container {
						height: 50%;
						align-content: center;
						

					}
					
					#flex{
					
						padding-right: 55px;
					
					}
					
					h1{
						font-family: 'Bebas Neue', cursive;
						font-size: 55px;
						color:white;
						font-weight: 800;
						letter-spacing: 10px;
					}
					
					#center{
					position: absolute;
					inline-size: -webkit-fill-available;
					font-size: 35px;
					font-family: 'Black Han Sans', sans-serif;
					color : #787878
					
					}
					
					.img{
					height: 140px;
					margin: 50px;
   				  
					
					}
				
					.top{
						top: -150px;
						text-align: center;
					
					}
				
				
					.ul {
						text-align: center;
					}

					.image_outer_container {
						margin-top: auto;
						margin-bottom: auto;
						border-radius:120px;
						position: relative;
						line-height: 100px;
   			 			inline-size: 200px;
					}

					.image_inner_container {
					
						border-radius:120px;
						padding: 5px;
						background: white;
						background: -webkit-linear-gradient(70deg, #C2722E	, #B86824, #AE5E1A);
						background: linear-gradient(70deg,	#8B5927	,#957745,#AE905E);
					}

					.image_inner_container img {
					
						height: 100px;
						width: 100px;
						border-radius: 50%;
						border: 5px solid white;
						align-content: center;
					}
					
					i{
					font-family: 'Anton', sans-serif;
					font-size: 55px;
					
					}
					
					.color{
					  display: inline-block;
  					  padding: 1rem;
    				  color: white;
					
					}
					
					.bk{
					    background-image:url("/resources/images/profile/floor.jpg");
					
					
					}
					
				</style>

			</head>

			<body>
				<!-- 미리보기 공간 -->


								
			<div class="card  top bk" >
			<i class="color">FAMILY TREE</i> <br>
			<h1>Choose your profile</h1>
	</div>
		
				
			
				<form action="/profile/updateProfileList?profileNo=${list.profileNo}" method="get" style="background-color: tan;">
					<ul class="d-flex justify-content-center">

						<c:forEach items="${getProfileList}" var="list">
						
					
							<div class="flex-container" id="flex">
								<div class="d-flex justify-content-center h-100" >

								
									<div class="image_outer_container" style="width: 250px; line-height: 200px;">
										<div class="green_icon">
										
										
										<div class="image_inner_container">
											<a href="/profile/getProfile?profileNo=${list.profileNo}&treeNo=${user.treeNo}">
										
											<img src="/resources/images/profile/${list.profileImage}" style="width: 100%;height: 100%;"></a>
											<div class="d-flex justify-content-center" id="center" >
												${list.profileName}
												</div>
											</div>
										</div>
											</div>
										</div>
									</div>
								</div>
						
					
						</c:forEach>
						<div class="d-flex justify-content-center " id="yes">
							<a href="/profile/addProfile"><img src="/resources/images/profile/plus.png" class="img"></a>
							<div class="d-flex justify-content-center"></div>
						</div>
					</ul>
					<!--/ Product Item -->
	
		
			</div>
			

				</form>
			</body>

			</html>