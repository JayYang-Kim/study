<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	// 받는 사람
	String[] from = request.getParameterValues("itemRight");
	String s = "";

	if (from != null) {
		for (String c : from) {
			s += c + ",";
		}

		s = s.substring(0, s.length() - 1);
	}
	
	// 메시지
	String msg = request.getParameter("msg");
	msg = msg.replaceAll("&", "&amp;")
			.replaceAll("\"", "&quot;")
			.replaceAll("<", "&lt;")
			.replaceAll(">", "&gt;")
			.replaceAll(" ", "&nbsp;") // \\s를 사용하면 \n도 공백으로 바꿔버림
			.replaceAll("\n", "<br/>");
%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<p>
			<span>받는 사람 : </span>
			<%= s%>
		</p>
		<p>
			<span>메시지 : </span>
			<%= msg%>
			
			<%-- <pre>
				<span>메시지 : </span>
				<%= msg%>
			</pre> --%>
		</p>
	</body>
</html>