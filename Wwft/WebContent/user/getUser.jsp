<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<meta charset="EUC-KR">
<title>����������</title>

	<script type="text/javascript">
	
		
		//==>"����" "Ȯ��"  Event ���� �� ó��
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			//==> 1 �� 3 ��� ���� : $("tagName.className:filter�Լ�") �����.	
			 $( "td.ct_btn01:contains('Ȯ��')" ).on("click" , function() {
				//Debug..
				//alert(  $( "td.ct_btn01:contains('Ȯ��')" ).html() );
				history.go(-1);
			});
			
			 $( "td.ct_btn01:contains('����')" ).on("click" , function() {
					//Debug..
					//alert(  $( "td.ct_btn01:contains('����')" ).html() );
					self.location = "/user/updateUser?userId=${user.userId}"
				});
		});
	</script>

</head>
<body>
<header id="wrap"> 
           <jsp:include page="../common/navBar.jsp"/>
      </header>   
<h3>����������</h3>
		<input type="hidden" id="userId" value="${user.userId}"></input>
		<input type="hidden" id="treeNo" value="${tree.treeNo}"></input>
		<p>
			<label for="userId">���̵�: ${user.userId}</label>
		</p>
		
		<p>
			<label for="password">��й�ȣ: ${user.password}</label>
			 
		</p>
		<p>
			<label for="email">�̸���: ${user.email}</label> 
		</p>
		 <p>
			<label for="treeName">���� �г��� : ${tree.treeName}</label>
		</p>
		<p>
			<label for="countryId">���� �ּ�  : ${tree.countryId}</label>
		</p>
		  <p>
				<label for="seedNo">�� ���� : ${tree.seedNo}</label>
		</p>
		<td background="/images/ct_btnbg02.gif" class="ct_btn01" style="padding-top:3px;">
			����
		</td>
		<input type="submit" value="����" /> <input type="button" value="�ڷΰ���" onclick="history.back(-1);">
		

</body>
</html>