<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<%--
<%@ page import="com.model2.mvc.service.domain.Product" %>

<%
	Product product = (Product)request.getAttribute("product");
%>
--%>
<html>
	<meta charset="EUC-KR">
	<head>

	<title>�Խñ� �� ��ȸ</title>
	<link rel="stylesheet" href="/css/admin.css" type="text/css">
	
	<!-- CDN(Content Delivery Network) ȣ��Ʈ ��� -->
	<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
		
		//==> �߰��Ⱥκ� : "����" "Ȯ��"  Event ���� �� ó��
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			//==> 1 �� 3 ��� ���� : $("tagName.className:filter�Լ�") �����.	
			$( "td.ct_btn01:contains('Ȯ��')" ).on("click" , function() {
				location.href="/product/listProduct?menu=${param.menu}"
			});
			$( "td.ct_btn01:contains('����')" ).on("click" , function() {
				location.href="/product/updateProduct?prodNo=${param.prodNo}&menu=${param.menu}"
			});
			
		});
	
	</script>
	
</head>

<body bgcolor="#ffffff" text="#000000">

<!-- <form name="detailForm" method="post"> -->
<form>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<input type="button" value="����" onclick=""/>
		<br/>
		<br/>



<input type="hidden" name="fileName" value="${post.postName}"/>




	
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">
			<c:forEach var="file" items="${fileList}">
				<img src = "/images/uploadFiles/${file}"/><br/>
			</c:forEach>
		</td>
	</tr>
	
		<td bgcolor="D6D6D6" width="1"></td>
		<td class="ct_write01">${post.postDetail}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
	<tr>
		</br>
		<td bgcolor="D6D6D6" width="1"></td>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<td class="ct_write01">${post.regDate}</td>
	</tr>
	<tr>
		<td height="1" colspan="3" bgcolor="D6D6D6"></td>
	</tr>
</table>
	<%@ include file="../post/comment.jsp" %>

<table width="100%" border="0" cellspacing="0" cellpadding="0"	style="margin-top: 10px;">
	<tr>
		<td width="53%"></td>
		<td align="right">

		<table border="0" cellspacing="0" cellpadding="0">
			<tr>
				<c:choose>
					<c:when test = "${param.menu == 'manage'}">
						<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"/></td>
						<td background="/images/ct_btnbg02.gif" class="ct_btn01"	style="padding-top: 3px;">
							<!-- <a href="/product/updateProduct?prodNo=${param.prodNo}&menu=${param.menu}">����</a> -->
							����
							</td>
						<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/></td>
					</c:when>
					<c:when test = "${param.menu == 'search' && sessionScope.user.role != 'admin'}">
						<td width="17" height="23"><img src="/images/ct_btnbg01.gif" width="17" height="23"/></td>
						<td background="/images/ct_btnbg02.gif" class="ct_btn01"	style="padding-top: 3px;">
							<!-- <a href="/purchase/addPurchase?prodNo=${product.prodNo}">����</a> -->
							����
							</td>
						<td width="14" height="23">
						<img src="/images/ct_btnbg03.gif" width="14" height="23"/></td>
					</c:when>
				</c:choose>
				<td width="30"></td>
				<td width="17" height="23">
					<img src="/images/ct_btnbg01.gif" width="17" height="23"/>
				</td>
				<td background="/images/ct_btnbg02.gif" class="ct_btn01"	style="padding-top: 3px;">
					<!-- <a href="/product/listProduct?menu=${param.menu}">Ȯ��</a> -->
					Ȯ��
				</td>
				<td width="14" height="23">
					<img src="/images/ct_btnbg03.gif" width="14" height="23"/>
				</td>
			</tr>
		</table>

		</td>
	</tr>
</table>
</form>

</body>
</html>