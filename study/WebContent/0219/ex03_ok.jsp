<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	request.setCharacterEncoding("UTF-8");

	int n1 = Integer.parseInt(request.getParameter("num1"));
	int n2 = Integer.parseInt(request.getParameter("num2"));
	String operator = request.getParameter("operator");
	
	String s = "";
	try {
		if(operator.equals("+")) {
			s = String.format("%d + %d = %d", n1, n2, n1 + n2);
		} else if(operator.equals("-")) {
			s = String.format("%d - %d = %d", n1, n2, n1 - n2);
		} else if(operator.equals("*")) {
			s = String.format("%d * %d = %d", n1, n2, n1 * n2);
		} else if(operator.equals("/")) {
			s = String.format("%d / %d = %d", n1, n2, n1 / n2);
		}	
	} catch(Exception e) {
		s = "연산 오류입니다.";
	}
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>연산 결과</h3>
		<span><%= s %></span>
	</body>
</html>