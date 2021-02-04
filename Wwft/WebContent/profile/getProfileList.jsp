<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>프로필 목록</title>
<link rel="stylesheet" href="../resources/css/profile/getProfileList.css" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<meta charset="EUC-KR">
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script type="text/javascript">


</script>
</head>

<body>	

		<p>${user.userId}님로그인을 유지중</p>
		<p align="center">
	
		</p>
			<c:forEach items="${getUserList}" var="list">
				<tr align="center" style="padding: 2 0 2 0">
					<td>${list.userId}&nbsp;</td>
					<td>${list.email}&nbsp;</td>
					<td>${list.userRegDate}&nbsp;</td>
				</tr>
			</c:forEach>
			<tr>
				<td align="center">&nbsp;${profile.profileName}</td>
			</tr>
      <div class="product-item">
        <div class="image">
          <a href="/user/login.jsp"><img src="/resources/images/profile/fa.png" alt="Product 1"></a>
        </div>
          <div class="name text-center">
            <label for="profileNmae">아빠꺼</label>
          </div>
        </div>
    <!--/ Product Item -->

    <!-- Product Item -->
      <div class="product-item">
        </div>
        <div class="image">
          <a href="/user/login.jsp"><img src="/resources/images/profile/ma.png" alt="Product 2"></a>
        </div>
          <div class="name text-center">
             <label for="profileNmae">엄마꺼</label>
          </div>
    <!--/ Product Item -->
	
    <!-- Product Item -->
      <div class="product-item">
        <div class="image">
          <a href="/user/login.jsp"><img src="/resources/images/profile/do.png" alt="Product 3"></a>
        </div>
          <div class="name text-center">
            <label for="profileNmae">누나꺼</label>
          </div>
          </div>
    <!--/ Product Item -->
				
    <!-- Product Item -->
      <div class="product-item">
        </div>
        <div class="image">
          <a href="/user/login.jsp"><img src="/resources/images/profile/son.png" alt="Product 4"></a>
        </div>
          <div class="name text-center">
            <label for="profileNmae">내꺼</label>
          </div>
          
          
          <script type="text/javascript">
          
          	function goBack(){
          		window.history.back();
          	}
          </script>
          <input type="button" value="프로필 관리" onclick="location='/profile/updateProfileList'"/>
          <input type="button" value="뒤로가기" onclick="goBack();"/>
		  	<button class="cencle btn btn-danger" type="button">취소</button>
      
</body>
</html>