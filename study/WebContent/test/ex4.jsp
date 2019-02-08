<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 불필요하게 생성되는 줄바꿈 공백 문자를 제거 (기본값 : false) -->
<%@ page trimDirectiveWhitespaces="true" %>

<%
	int s = 0;

	for (int n = 1; n <= 100; n++) {
		s += n;		
	}
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<span>결과 : </span>
		<%= s %>
	</body>
</html>