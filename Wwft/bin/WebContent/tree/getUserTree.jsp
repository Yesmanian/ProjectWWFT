<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>나무 보기</title>
	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">


	
	$(function(){
		$('#btn-remove').click(function(){
			if(confirm("나무를 삭제하시겠습니까?")){
				self.location.href = "/tree/removeTree?treeNo="+${map.tree.treeNo};
			}
		});
	});

	function goGetBucketList() {
		window.location.href="getBucketList?treeNo="+${map.tree.treeNo};
		
	}
	
	function goGetFamilyMotto(){
		window.location.href="getFamilyMotto?treeNo="+${map.tree.treeNo};
		
	}
	

</script>


</head>
<body>


	<div>
	 나무보기
	</div>
	</br></br>

	
		나무번호: ${map.tree.treeNo}</br>
		유저 아이디 : ${map.tree.userId}</br>
		나무 닉네임 : ${map.tree.treeName}</br>
		씨앗번호 : ${map.tree.seedNo}</br>
		국가		: ${map.tree.countryId}</br>
		가훈 : ${map.tree.familyMotto}</br>
		총 활동지수 : ${map.tree.activityTotalPoint}</br>
		

	<td><input type=button 	name="btn-bucketList-list" onclick="goGetBucketList()"  value="버킷리스트 목록"></td>
	 <input type="button" 	name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="가훈 입력하기">
	<div>
	
	<button id="btn-remove" >나무 삭제</button>  
	</div>
	
</body>
</html>