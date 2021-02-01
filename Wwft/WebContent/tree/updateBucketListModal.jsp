<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>버킷리스트 수정</title>
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">

	
	
	
	
	
	</script>
</head>
<body>
<div class="modal fade" id="updateBucketListModal" role="dialog">
	<div class="modal-dialog">
	
		<div class="modal-content">
		<button type="button" class="close" data-dismiss="modal">버킷리스트 수정</button>
		<h4 id="modal-title" class="modal-tittle"></h4>
		</div>
		<div class="modal-body">
			<table class="table">
			<tr>
				<td>${bucketList.bucketListWriter }</td>
				<td><input class="form-control" id="bucketListWriter" type="text"></td>
				</tr>
				<tr>
				<td>버킷리스트 내용</td>
				<td><input class="form-control" id="bucketListDetail" type="text" rows="10"></td>
				</tr>
			</table>
		<div class="modal-footer">
		<button id="modalSubmit" type="button" class="btn btn-success">수정완료</button>
		<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
</div>
</div>
</div>
</div>
		
		
		

		
		
		
	
	
	




</body>
</html>