<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>

//���� ���

$(document).ready(function () {

$("#btnFamilyMotto").click(function () {
	var familyMotto = $("input[name=familyMotto]").val();
	var treeNo = ${param.treeNo};
	
	$.ajax({
		type: "POST",
		url : "/tree/json/updateFamilyMotto",
		data : JSON.stringify({familyMotto : familyMotto, treeNo : treeNo}),
		 headers : {
				"Accept" : "application/json",
				"Content-Type" : "application/json"
			},
		success : function (data) {
			alert("������ ��ϵǾ����ϴ�:"+data);
			
			 $("#familyMotto").val(familyMotto);
			
		}
	})
	})
})



</script>
</head>
<body>
	<h1>����</h1> 
	
	

			
		<input type="text" 	name="familyMotto"	 placeholder="������ �Է��ϼ���."	 size=50 maxlength=20>
         
       <input type="button"	id="btnFamilyMotto" 	value="���" />
       
 	   <input type="button" 	id="btn1FamilyMotto" onclick="location.href='/tree/getUserTree?${param.treeNo}'"	value="�ڷΰ���" />
 		
 		<h2>��ϵ� ����</h2>
 	
 		<table border="1" cellpadding="0" cellspacing="0">

	<tr>

		

		<td> <input type="text" id="familyMotto" readonly="readonly"  value="${tree.familyMotto }" > </td>
		

	</tr>

	</table>

      
     
</body>
</html>







