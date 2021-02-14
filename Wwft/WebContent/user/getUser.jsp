<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<meta charset="EUC-KR">
<title>내정보보기</title>

	<script type="text/javascript">
	
		
		//==>"수정" "확인"  Event 연결 및 처리
		 $(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			//==> 1 과 3 방법 조합 : $("tagName.className:filter함수") 사용함.	
			 $( "td.ct_btn01:contains('확인')" ).on("click" , function() {
				//Debug..
				//alert(  $( "td.ct_btn01:contains('확인')" ).html() );
				history.go(-1);
			});
			
			 $( "td.ct_btn01:contains('수정')" ).on("click" , function() {
					//Debug..
					//alert(  $( "td.ct_btn01:contains('수정')" ).html() );
					self.location = "/user/updateUser?userId=${user.userId}"
				});
		});
	</script>

</head>
<body>
<header id="wrap"> 
           <jsp:include page="../common/navBar.jsp"/>
      </header>   
<h3>내정보보기</h3>
		<input type="hidden" id="userId" value="${user.userId}"></input>
		<input type="hidden" id="treeNo" value="${tree.treeNo}"></input>
		<p>
			<label for="userId">아이디: ${user.userId}</label>
		</p>
		
		<p>
			<label for="password">비밀번호: ${user.password}</label>
			 
		</p>
		<p>
			<label for="email">이메일: ${user.email}</label> 
		</p>
		 <p>
			<label for="treeName">나무 닉네임 : ${tree.treeName}</label>
		</p>
		<p>
			<label for="countryId">나무 주소  : ${tree.countryId}</label>
		</p>
		  <p>
				<label for="seedNo">내 씨앗 : ${tree.seedNo}</label>
		</p>
		<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
			수정
		</td>
		<input type="submit" value="수정" /> <input type="button" value="뒤로가기" onclick="history.back(-1);">
		

</body>
</html>