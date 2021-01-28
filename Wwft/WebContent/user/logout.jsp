<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
		<h3>·Î±×¾Æ¿ô</h3>
		<%
		session.removeAttribute("userId");
		response.sendRedirect("login.jsp");
		%>
