<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
		<h3>�α׾ƿ�</h3>
		<%
		session.removeAttribute("userId");
		response.sendRedirect("login.jsp");
		%>
