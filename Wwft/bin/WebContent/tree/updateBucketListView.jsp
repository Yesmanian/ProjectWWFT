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

	function fncUpdateBucketList() {
		
		var detail = $("input[name='bucketListDetail']").val();
		var stamp = $("input[name='stampState']").val();
		
		if(detail == null || detail.length<1){
			alert("버킷리스트를 입력하세요.");
			return
		}
		if(stamp == null || stamp.length<1){
			alert("버킷리스트 성공시 도장을 찍으세요.");
			return
		}
	
		$("form").attr("method","POST").attr("action","/tree/updateBucketList?bucketListNo=${param.bucketListNo}&treeNo=${param.treeNo}").submit();	

	}
	
	
	$(function () {
		$(".ct_btn01:contains('수정')").on("click", function () {
			fncUpdateBucketList();
		});
		
	});
		
	$(function () {
		$(".ct_btn02:contains('취소')").on("click", function () {
			history.go(-1);
	});
		
	});
			

	
	
	
	
	</script>
</head>
<body>
	<form id="form">
	
	<input type="hidden" name="bucketListNo" value="${bucketList.bucketListNo }">

	버킷리스트 수정<br/>  

	
	<c:forEach var="bucketList" items="${list}">
		




<tr>
	<td width="104" class="ct_write">
			작성자 
		</td>
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<input type="text" name="bucketListWriter" value="${ bucketList.bucketListWriter}" class="ct_input_g" 
						style="width: 100px; height: 19px" maxLength="10" readonly="readonly">
		</td>
	</tr>
    <p><label>도장 찍기</label> <input type="text" name="stampState" size="15" value = "${bucketList.stampState}"></p>

    <label>버킷리스트 내용</label>

    <input type="text"	name=bucketListDetail rows ="10" cols="70"  value="${bucketList.bucketListDetail}"><br>
	
	

</c:forEach>
	

   	<button type ="submit" class="ct_btn01">수정</button>
    <button type ="submit" class="ct_btn02">취소</button>

    </body>

 </form>

</html>