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
	
	// 포워딩할 페이지에 전달할 속성
	request.setAttribute("msg", s);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>다른 페이지로 포워딩되어 현재 페이지는 보이지 않는다.</h3>
		<jsp:forward page="ex07_result.jsp"/>
		<%-- <jsp:forward page="/WEB-INF/view/ex07_result.jsp"/> --%>
	</body>
</html>