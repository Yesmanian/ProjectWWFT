<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>버킷리스트 목록 보기</title>
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">



	
	$(document).ready(function () {
		$("#btn1").click( function () {
			var bucketListWriter = $("input[name=bucketListWriter]").val();
			var bucketListDetail = $("input[name=bucketListDetail]").val();
			var treeNo = ${param.treeNo}
			
			$.ajax({
				url : "/tree/json/addBucketList/",
				method : "POST",
				cache: false,
				data : JSON.stringify({bucketListDetail : bucketListDetail, bucketListWriter : bucketListWriter, treeNo : treeNo }),
				dataType : "text",
				headers : {
							"Accept" : "application/json",
							"Content-Type" : "application/json"
						},
				success : function(data){
					alert("확인:"+data);
					if(data =="success"){
						
						getBucketList();
						$("#bucketListWriter").val();
						$("#bucketListDetail").val();

					}
							
				},
				error : function (status) {
				}
			})	
			
		})	
	
	})	
		
		
	$(function () {
		getBucketList();
	})
	
	
	function getBucketList() {
		
		$.ajax({
			type: 'GET',
			url: "<c:url value='/tree/getBucketList'/>",
			dataType: "json",
			data:$("bucketListFrom").serialize(),
	        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	        success: function (data) {
	        	
	        	var hrml = "";
	        	var bll = data.length;
				
	        	if(data.length>0){
	        		
	        		for(i=0; i<data.length; i++){
	        			
	        			html += "<div>";
	        			html += "<div><table class='table'><h6><strong>"+data[i].bucketListWriter+"</strong></h6>";
	        			html += data[i].bucketList.bucketListDetail+"<br/></div>";
	        			html += data[i].bucketList.bucketListRegdate+"<br/></div>";
	        			html += data[i].bucketList.stampState+"<br/></div>";
	        			
	        		}
	        		
	        		
	        	}else{
	        		
	                html += "<div>";
	                html += "<div><table class='table'><h6><strong>버킷리스트가 없습니다.</strong></h6>";
	                html += "</table></div>";
	                html += "</div>";
	        		
	        		
	        		
	        	}
	        	$("#bll").html(bll);
	        	$("getBucketList"),html(html);
	        	
			},
			  error:function(request,status,error){
		            
			  }

			
			
		})	
		
	}
		
		
		
</script>
 </head>
	<body>	
<div class="container">
	<form id="bucketListForm"	name="bucketListForm" method="post"> 
	<br><br>
		<div>
		<div>
		 <span><strong>버킷리스트 목록</strong></span> <span id="bll"></span>
		</div>
		<div>
		<table class="table">
		<tr>
		<td>
		
		
		
		<input type = "hidden" id="treeNo"  value=${tree.treeNo }><br>
		 <input type = "text" name="bucketListWriter"  placeholder="작성자를 입력하세요."	size="30"/><br>
		 <input type = "text" name="bucketListDetail"  placeholder="버킷리스트를 입력하세요."	size="30"/>
		<button id="btn1" class="btn btn-primary" type="button" >등록</button>
		
		<div id="result"></div>
</div>
</td>
</tr>
</table>
</div>
</div>



	 
	 
	 <div id="list">
	 
	 <c:set var="i" value="0" />
		<c:forEach var="bucketList" items="${list}">
			<c:set var="i" value="${ i+1 }" />

		
			<div class="wrap">
			<div>버킷리스트 번호: ${bucketList.bucketListNo}<br/></div>
			<div>작성자 : ${bucketList.bucketListWriter}<br/></div>
			<div>작성 내용 : ${bucketList.bucketListDetail}<br/></div>
			<div>작성 일자 : ${bucketList.bucketListRegDate}<br/></div>
			<div>도장		: ${bucketList.stampState}<br/></div>
		
		
		
		 <input type="button" name="informTextconfirmButton" value="수정">
		 <input type="button" name="informTextconfirmButton" value="삭제"><br/>
		</div>
		</c:forEach>
	</div>
</body>
</html>