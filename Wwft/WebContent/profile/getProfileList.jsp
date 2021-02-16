<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
	<%@page import="java.util.List" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

			<!DOCTYPE html>
			<html>

			<head>

				<link rel="stylesheet" href="../resources/css/profile/getProfileList.css">
				<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
						height: 50%;
						margin-top: 200px;
						background-size: cover;

					}



					.container {
						list-style-type: none;
						float: left;
					}

					.container {
						height: 50%;
						align-content: center;

					}

					.ul {
						text-align: center;
					}

					.image_outer_container {
						margin-top: auto;
						margin-bottom: auto;
						border-radius: 30%;
						position: relative;
					}

					.image_inner_container {
						border-radius: 20%;
						padding: 5px;
						background: #833ab4;
						background: -webkit-linear-gradient(to bottom, #fcb045, #fd1d1d, #833ab4);
						background: linear-gradient(to bottom, #fcb045, #fd1d1d, #833ab4);
					}

					.image_inner_container img {
						height: 100px;
						width: 100px;
						border-radius: 50%;
						border: 5px solid white;
						align-content: center;
					}
				</style>

			</head>

			<body>
				<!-- 미리보기 공간 -->

				<form action="/profile/updateProfileList?profileNo=${list.profileNo}" method="get">
					<ul class="d-flex justify-content-center">

						<c:forEach items="${getProfileList}" var="list">
							<div class="flex-container">
								<div class="d-flex justify-content-center h-100">

									<div class="image_outer_container">
										<div class="green_icon"></div>
										<div class="image_inner_container">
											<a
												href="/profile/getProfile?profileNo=${list.profileNo}&treeNo=${user.treeNo}"><img
													src="/resources/images/profile/${list.profileImage}"></a>
											<div class="d-flex justify-content-center">
												${list.profileName}</div>

										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						<div class="d-flex justify-content-center">
							<a href="/profile/addProfile"><img src="/resources/images/profile/412rXWdCJ7L.png"></a>
							<div class="d-flex justify-content-center"></div>
						</div>
					</ul>
					<!--/ Product Item -->
					<div class="d-flex justify-content-center">
							<button class="snip1535">프로필 관리</button>
					</div>

				</form>
			</body>

			</html>