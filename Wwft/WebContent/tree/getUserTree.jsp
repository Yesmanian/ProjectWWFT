<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">

<meta charset="EUC-KR">
<title>�� ��������</title>
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

  <header id="wrap"> 
        
          
        <jsp:include page="../common/navBar.jsp"/>
      

      </header>
       

  <div class="bs-callout bs-callout-danger" id="callout-tables-striped-ie8">
  </div>
  <div class="bs-example" data-example-id="striped-table">
    <table class="table table-striped">
      <thead>
        <tr>
          <th></th>
          <th><i class="fas fa-tree fa-2x"></i>�����̸�</th>
          <th><i class="fa fa-user-circle" aria-hidden="true">���� ���̵�</i></th>
          <th><i class="fa fa-globe" aria-hidden="true">������</i></th>
          <th>����</th>
           <th>��Ȱ������</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row"></th>
          <td> ${tree.treeName}</td>
          <td> ${tree.userId}</td>
          <td> ${tree.countryId}</td>
          <td> ${tree.familyMotto}</td>
          <td> ${tree.activityTotalPoint }</td>
        </tr>
      
      </tbody>
    </table>
  </div>
  
  
  
  
  


	<td><input type=button 		name="btn-bucketList-list" onclick="goGetBucketList()"  value="��Ŷ����Ʈ ���"></td>
	 <input type="button"  			name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="���� �Է��ϱ�">
	 <input type="button"  			name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="�� �� ����">
	 <input type="button"  			name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="�˸��޽��� ����">
	 <input type="button"  			name="btn-family-motto"  	onclick="goGetFamilyMotto()"	value="�޷º���">
	
	 
	 	 <input type="hidden"  	id="treeNo"		name="treeNo"  	value="${tree.treeNo }">
	 
	<div>
	
	<button id="btn-remove" >��������</button>  
	</div>
	
</body>
</html>