<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	Calendar cal = Calendar.getInstance();
	String s = String.format("%tF %tT %tA  ", cal, cal, cal);
%>	

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<p>Hello World</p>
		<%=s %>
	</body>
</html>