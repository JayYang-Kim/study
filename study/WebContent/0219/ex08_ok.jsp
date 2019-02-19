<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	request.setCharacterEncoding("UTF-8");

	int age = Integer.parseInt(request.getParameter("age"));
	
	String s;
	if(age >= 19) {
		s = "성인입니다.";
	} else {
		s = " 미성년자입니다.";
	}
	
	// 속성 설정
	request.setAttribute("msg", s);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>다른 페이지로 리다이렉트되어 현재 페이지는 보이지 않는다.</h3>
		<%
			// 리다이렉트
			response.sendRedirect("ex08_result.jsp");
		%>
	</body>
</html>