<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>ȸ�� ���</title>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script type="text/javascript">


</script>
</head>
<body leftmargin="0" topmargin="0">

	<p>${user.userId}�Էα����� ������</p>
	<!-- *********************************************** -->
	<form name="frmList" id="frmList">
	
		<p align="center">
			<u>ȸ�� ���</u>
		</p>
		
		<div align="right" class="form-group row pull-right">
			<div class="col-xs-8">
				<input class="form-control" type="text" size="20">
			</div>
			<div align="right" class="col-xs-2">
				<button class="btn btn-primary pull-right" type="button">�˻�</button>
			</div>
		</div>
		
		<table align="center" width="80%" border="1" cellspacing="0"
			cellpadding="0">

			<tr>
				<th style="background-color: #fafafa; text-align: center;">���̵�</th>
				<th style="background-color: #fafafa; text-align: center;">�̸���</th>
				<th style="background-color: #fafafa; text-align: center;">���Գ�¥</th>
			</tr>
			
			<c:forEach items="${getUserList}" var="list">
				<tr align="center" style="padding: 2 0 2 0">
					<td>${list.userId}&nbsp;</td>
					<td>${list.email}&nbsp;</td>
					<td>${list.userRegDate}&nbsp;</td>
				</tr>
			</c:forEach>

			<tr>
				<td align="center">&nbsp;${user.userId}</td>
				<td align="center">&nbsp;${user.email}</td>
				<td align="center">&nbsp;${user.userRegDate}</td>
			</tr>

		</table>
		<div align="center">
		<Button onclick="location.href='/uesr/loginOk.jsp'">���ư���</Button>
		</div>
		<div align="center">
			[<a href="/user/loginOk.jsp">�ڷΰ���</a>]
		</div>
	</form>

</body>
</html>