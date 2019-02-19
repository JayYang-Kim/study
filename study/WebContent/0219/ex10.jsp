<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page errorPage="error.jsp" %>
<%
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	
	String s = "성인";
	if(age < 19) {
		s = "미성년자";
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		이름 : <%= name %><br/>
		결과 : <%= s %><br/>
	</body>
</html>