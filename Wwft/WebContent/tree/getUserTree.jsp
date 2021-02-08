<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">

<meta charset="EUC-KR">
<title>내 나무보기</title>
<script type="text/javascript">

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

  <header id="wrap"> 
        
          
        <jsp:include page="../common/navBar.jsp"/>
      

      </header>
       

  <div class="bs-callout bs-callout-danger" id="callout-tables-striped-ie8">
  </div>
  <div class="bs-example" data-example-id="striped-table">
    <table class="table table-striped">
      <thead>
        <tr>
          <th></th>
          <th><i class="fas fa-tree fa-2x"></i>나무이름</th>
          <th><i class="fa fa-user-circle" aria-hidden="true">유저 아이디</i></th>
          <th><i class="fa fa-globe" aria-hidden="true">국가명</i></th>
          <th>가훈</th>
           <th>총활동지수</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row"></th>
          <td> ${tree.treeName}</td>
          <td> ${tree.userId}</td>
          <td> ${tree.countryId}</td>
          <td> ${tree.familyMotto}</td>
          <td> ${tree.activityTotalPoint }</td>
        </tr>
      
      </tbody>
    </table>
  </div>
  
  
  
  
  


	<td><input type=button 		name="btn-bucketList-list" onclick="goGetBucketList()"  value="버킷리스트 목록"></td>
	 <input type="button"  			name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="가훈 입력하기">
	 <input type="button"  			name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="내 숲 보기">
	 <input type="button"  			name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="알림메시지 보기">
	 <input type="button"  			name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="달력보기">
	
	 
	 	 <input type="hidden"  	id="treeNo"		name="treeNo"  	value="${tree.treeNo }">
	 
	<div>
	
	<button id="btn-remove" >나무삭제</button>  
	</div>
	
</body>
</html>