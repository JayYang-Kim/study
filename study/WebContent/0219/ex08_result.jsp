<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	// 클라이언트의 파라미터 넘겨 받기
	String name = request.getParameter("name");
	
	// 속성
	String s = (String)request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>포워딩된 페이지 : request, response 객체가 초기화되어 모두 null 출력</h3>
		<p>주소도 리다이렉트된 주소가 보인다.</p>
		<p><span>이름 : </span><span><%= name %></span></p>
		<p><span>결과 : </span><span><%= s %></span></p>
	</body>
</html>