<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ����</title>
	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">


	$(function(){
		$('#btn-remove').click(function(){
			if(confirm("������ �����Ͻðڽ��ϱ�?")){
				self.location.href = "/tree/removeTree?treeNo=${tree.treeNo}";
			}
		});
	});

	
	

</script>


</head>
<body>


	<div>
	 ��������
	</div>
	</br></br>
	
	
		������ȣ: ${tree.treeNo}</br>
		���� ���̵� : ${tree.userId}</br>
		���� �г��� : ${tree.treeName}</br>
		���ѹ�ȣ : ${tree.seedNo}</br>
		����		: ${tree.countryId}</br>
		���� : ${tree.familyMotto}</br>
		�� Ȱ������ : ${tree.activityTotalPoint}</br>
	<input type="button" name="informTextchangeButton" value="��Ŷ����Ʈ ���">
	 <input type="button" name="informTextconfirmButton" value="���� �Է�">
	<div>
	
	<button id="btn-remove" >���� ����</button>  
	</div>
	
</body>
</html>