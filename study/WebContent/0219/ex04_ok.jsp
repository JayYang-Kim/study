<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	String name = request.getParameter("name");
	String city = request.getParameter("city");
	
	// GET 방식으로 인코딩해서 넘긴 파라미터는 반드시 디코딩을 해줘야함
	// 톰켓으로 인해 안해도 되지만 다른 WAS는 반드시 해야하는 것이 있음
	name = URLDecoder.decode(name, "UTF-8");
	city = URLDecoder.decode(city, "UTF-8");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<p>
			<span>이름 : </span>
			<span><%= name %></span>
		</p>
		<p>
			<span>출신지역 : </span>
			<span><%= city %></span>
		</p>
	</body>
</html>