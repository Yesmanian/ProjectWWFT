<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>나무 보기</title>
	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript"></script>

<script>

	$(function(){
		$('#btn-remove').click(function(){
			if(confirm("나무를 삭제하시겠습니까?")){
				var treeNo = $("#treeNo").val();
				self.location.href = "/tree/removeTree?treeNo=${tree.treeNo}"
				
			}
		});
	});

	function goGetBucketList() {
		var treeNo = $("#treeNo").val();
		window.location.href="/tree/getBucketList?treeNo=${tree.treeNo}"
		
	}
	
	function goGetFamilyMotto(){
		var treeNo = $("#treeNo").val();
		window.location.href="/tree/getFamilyMotto?treeNo=${tree.treeNo}"
	}


</script>


</head>
<body>


	<div>
	 나무보기
	</div>
	</br></br>

	
		나무번호: ${tree.treeNo}</br>
		유저 아이디 : ${tree.userId}</br>
		나무 닉네임 : ${tree.treeName}</br>
		씨앗번호 : ${tree.seedNo}</br>
		국가		: ${tree.countryId}</br>
		가훈 : ${tree.familyMotto}</br>
		총 활동지수 : ${tree.activityTotalPoint}</br>
		

	<td><input type=button 		name="btn-bucketList-list" onclick="goGetBucketList()"  value="버킷리스트 목록"></td>
	 <input type="button"  			name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="가훈 입력하기">
	 <input type="button"  			name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="내 숲 보기">
	 <input type="button"  			name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="알림메시지 보기">
	 <input type="button"  			name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="달력보기">
	 <div class="btn-group btn-group-lg" role="group" aria-label="...">...</div>
	<div class="btn-group" role="group" aria-label="...">...</div>
	 <button type="button" class="btn btn-default" aria-label="Left Align">
  <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
</button>
	 
	 
	 	 <input type="hidden"  	id="treeNo"		name="treeNo"  	value="${tree.treeNo }">
	 
	<div>
	
	<button id="btn-remove" >나무 삭제</button>  
	</div>
	
</body>
</html>