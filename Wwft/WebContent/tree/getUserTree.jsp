<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap3-dialog/1.34.7/css/bootstrap-dialog.min.css"/>
<meta charset="EUC-KR">
<title>���� ����</title>
	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">



	$(function(){
		$('#btn-remove').click(function(){
			if(confirm("������ �����Ͻðڽ��ϱ�?")){
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
		

	<td><input type=button 		name="btn-bucketList-list" onclick="goGetBucketList()"  value="��Ŷ����Ʈ ���"></td>
	 <input type="button"  			name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="���� �Է��ϱ�">
	 <input type="button"  			name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="�� �� ����">
	 <input type="button"  			name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="�˸��޽��� ����">
	 <input type="button"  			name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="�޷º���">
	 
	 
	 
	 	 <input type="hidden"  	id="treeNo"		name="treeNo"  	value="${tree.treeNo }">
	 
	<div>
	
	<button id="btn-remove" >���� ����</button>  
	</div>
	
</body>
</html>