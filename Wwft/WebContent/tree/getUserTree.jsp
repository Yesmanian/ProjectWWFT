<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../resources/css/tree/getUserTree.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">

<meta charset="EUC-KR">
<title>회원 나무 보기</title>





<script type="text/javascript">

	

	function goGetBucketList() {
	
		window.location.href="/tree/getBucketList?treeNo=${tree.treeNo}"
		
	}
	
	function goGetFamilyMotto(){
	
		window.location.href="/tree/getFamilyMotto?treeNo=${tree.treeNo}"
	}
	
	function goGetCalendar() {

		window.location.href="/event/getCalendar?treeNo=${tree.treeNo }" 
	}

	function goGetNoticeMessage() {
	

		window.location.href="/noticeMessage/getTreeNoticeMessageList?treeNo=${tree.treeNo}&profileNo=${profile.profileNo}"
		
	}
	
	function goGetPost() {
		window.location.href="/post/getPostList?postTreeNo=${tree.treeNo}"

	}
	
	function goGetForest() {
		window.location.href="/forest/getForest?forestNo=${tree.treeNo}"

	}
	
</script>


</head>
<body>

	<header id="wrap"> 
 		    <jsp:include page="../common/navBar.jsp"/>
      </header>   
                
<input type="hidden"  	id="treeNo"		name="treeNo"  	value="${tree.treeNo }">
          
    


 
      
	 
 <div class="text-center" >
	<div>
	
	</div>
    <table class="table"  >
      <thead class="thead">
        <tr class="tb" >
          <th></th>
          <th><i class="fab fa-pagelines fa-2x text-white "></i><br>
         <h4 class="text-white">나무 이름</h4></th>
          <th><i class="fas fa-user fa-2x text-white"></i><br> 
          <h4 class="text-white">유저 아이디</h4></th>
          <th><i class="fas fa-globe-asia fa-2x text-white"></i><br>	
          <h4 class="text-white">가훈</h4></th>
         
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row"></th>
          <td><h5 class="text-white style">${tree.treeName}</h5> </td>
          <td><h5 class="text-white style"> ${tree.userId}</h5> </td>
          <td><h5 class="text-white style"> ${tree.familyMotto}</h5> </td>
        
        </tr>
      
      </tbody>
    </table>
  </div>

	








<div id="footer" class="btn-group ">


<button type="button"   class="btn button-add "	onclick="goGetBucketList()" >
<i class="fas fa-list-ol   text-white"></i><h6 class="text-white">버킷리스트 목록</h6></button>  
   
   <button type="button"   	class="btn   button-add"	onclick="goGetFamilyMotto()">
   <i class="fas fa-edit  text-white"></i><h6 class="text-white">가훈 입력하기</h6></button>
   
   <button type="button" 	class="btn  button-add"		onclick="goGetForest()">
   <i class="fas fa-tree  text-white"></i><h6 class="text-white"> 내 숲 보기</h6></button>
   
   <button type="button" 	class="btn  button-add"		onclick="goGetPost()">
   <i class="far fa-images text-white"></i><h6 class="text-white"> 사진 게시글 보기</h6></button>
   
   <button type="button" 	class="btn   button-add"	onclick="goGetNoticeMessage()" > 
   <i class="fas fa-envelope-open-text  text-white"></i><h6 class="text-white">알림메시지 보기</h6></button>
   
    <button type="button" 	class="btn   button-add"  onclick="goGetCalendar()">
   <i class="far fa-calendar-alt  text-white"></i><h6 class="text-white">달력 보기</h6></button>
   
 
</div>
 
<div class="container">
  

  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog modal-sm modal-dialog-scrollable">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h1 class="modal-title">내가 속한 숲</h1>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
         
          <ul class="list-group list-group-flush ">
            <!-- <li class="list-group-item"><h5 class="text-black style">${tree.treeName}</h5></li>
            <li class="list-group-item"><h5 class="text-black style">${tree.treeName}</h5></li>
            <li class="list-group-item"><h5 class="text-white style">${tree.treeName}</h5></li>
            <li class="list-group-item"><h5 class="text-white style">${tree.treeName}</h5></li>
            <li class="list-group-item"><h5 class="text-white style">${tree.treeName}</h5></li> -->
          </ul>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>
<script>
let forestList = [];
<c:forEach items="${forest}" var="forest" >
  forestList.push({ 
            forestNo  : "${forest.forestNo}",
            forestName  : "${forest.forestName}"
           
        
        });
      </c:forEach>
   
    $.each(forestList, function(index, forest){
      $('ul.list-group.list-group-flush').append(
        `<li class="list-group-item">
          <a href="/forest/getForest?forestNo=\${forest.forestNo}&profileNo=${profile.profileNo}"><h5 class="text-black style">\${forest.forestName}</h5></a> </li>`
      )

    })
</script>


	
</body>
</html>