<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Report List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script type="text/javascript">
function fncGetUserList(currentPage) {
	document.getElementById("currentPage").value = currentPage;
   	document.detailForm.submit();		
}

</script>
</head>
<body>
<!-- ${list} -->
	<form name="detailForm" action="/admin/getReportList" method="post">
	
	<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:10px;">
	<tr>
		<td align="right">
			<select name="searchCondition" class="ct_input_g" style="width:80px">
				<option value="0" ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>reportNo</option>
				<option value="1" ${ search.searchCondition==1 ? "selected" : "" }>reportType</option>
				<option value="2" ${ search.searchCondition==2 ? "selected" : "" }>reportState</option>
			</select>
			<input 	type="text" name="searchKeyword" value="${! empty search.searchKeyword ? search.searchKeyword : ""}"  class="ct_input_g" 
							style="width:200px; height:20px" >
		</td>
		<td align="right" width="70">
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="17" height="23">
					</td>
					<td  class="ct_btn01" style="padding-top:3px;">
						<a href="javascript:fncGetUserList('1');">검색</a>
					</td>
					<td width="14" height="23">
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div class="container">
	<table class="table">
		<tr>
			<th>No</th>
			<th>reportNo</th>
			<th>reporterTreeNo</th>
			<th>reportedPostNo</th>
			<th>reportedTreeNo</th>
			<th>reportType</th>
			<th>reportState</th>
			<th>reportRegDate</th>
		</tr>
		<c:set var="i" value="0"/>
	<c:forEach var="vo" items="${list }">
		<c:set var="i" value="${i+1}"/>
	
		
		<tr>
			<td>${ i }</td>
			<td>
				<a href="#">${vo.reportNo }</a></td>
			<td>${vo.reporterTreeNo }</td>
			<td>${vo.reportedPostNo }</td>
			<td>${vo.reportedTreeNo }</td>
			<td>${vo.reportType }</td>
			<td>${vo.reportState }</td>
			<td>${vo.reportRegDate }</td>
		</tr>	
		
			
	</c:forEach>
		
	</table>
</div>
<!-- PageNavigation Start... -->
<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top:10px;">
	<tr>
		<td align="center">
		   <input type="hidden" id="currentPage" name="currentPage" value=""/>
	
			<jsp:include page="../common/pageNavigator.jsp"/>	
			
    	</td>
	</tr>
</table>
<!-- PageNavigation End... -->
</body>
</html>