<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- �������� �ּ�ȭ�� �ֽ� CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- �ΰ����� �׸� -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- �������� �ּ�ȭ�� �ֽ� �ڹٽ�ũ��Ʈ -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>���� ����</title>
	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript"></script>

<script>

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
	 <div class="btn-group btn-group-lg" role="group" aria-label="...">...</div>
	<div class="btn-group" role="group" aria-label="...">...</div>
	 <button type="button" class="btn btn-default" aria-label="Left Align">
  <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
</button>
	 
	 
	 	 <input type="hidden"  	id="treeNo"		name="treeNo"  	value="${tree.treeNo }">
	 
	<div>
	
	<button id="btn-remove" >���� ����</button>  
	</div>
	
</body>
</html>