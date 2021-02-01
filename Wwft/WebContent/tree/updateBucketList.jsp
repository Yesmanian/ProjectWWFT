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

버킷리스트 수정     페 이 지



  	<input type = "hidden" id="treeNo"  value="${tree.treeNo }"><br>



    <p><label>작성자</label ><input type="text" name ="writer" readonly="readonly" value="${bucketList.bucketListDetail}" ></p>

    <p><label>도장 찍기</label> <input type="text" name="detail" size="15" value = "${bucketList.stampState}"></p>

    <label>버킷리스트 내용</label>

    <textarea name=content rows ="10" cols="70"  value="${bucketList.bucketListDetail}"></textarea><br>

	

    <button type ="submit">완료</button>

    </body>

 </form>

</html>