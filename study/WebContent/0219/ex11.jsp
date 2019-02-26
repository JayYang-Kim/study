<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
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
		<h3>에러 발생 시 web.xml에서 캐치</h3>
		이름 : <%= name %><br/>
		결과 : <%= s %><br/>
	</body>
</html>