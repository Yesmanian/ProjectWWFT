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
				self.location.href = "/tree/removeTree?treeNo="+${tree.treeNo};
			}
		});
	});

	function goGetBucketList() {
		window.location.href="getBucketList?treeNo="+${tree.treeNo};
		
	}
	
	function goGetFamilyMotto(){
		window.location.href="getFamilyMotto?treeNo="+${tree.treeNo};
		
	}
	

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
		

	<td><input type=button 	name="btn-bucketList-list" onclick="goGetBucketList()"  value="��Ŷ����Ʈ ���"></td>
	 <input type="button" 	name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="���� �Է��ϱ�">
	<div>
	
	<button id="btn-remove" >���� ����</button>  
	</div>
	
</body>
</html>