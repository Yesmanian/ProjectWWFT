<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��Ŷ����Ʈ ����</title>
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">

	
	
	
	
	
	</script>
</head>
<body>

��Ŷ����Ʈ ����     �� �� ��



  	<input type = "hidden" id="treeNo"  value="${tree.treeNo }"><br>



    <p><label>�ۼ���</label ><input type="text" name ="writer" readonly="readonly" value="${bucketList.bucketListDetail}" ></p>

    <p><label>���� ���</label> <input type="text" name="detail" size="15" value = "${bucketList.stampState}"></p>

    <label>��Ŷ����Ʈ ����</label>

    <textarea name=content rows ="10" cols="70"  value="${bucketList.bucketListDetail}"></textarea><br>

	

    <button type ="submit">�Ϸ�</button>

    </body>

 </form>

</html>