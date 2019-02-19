<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	request.setCharacterEncoding("UTF-8");

	// 클라이언트에서 서버로 전송(요청)된 파라미터 이름 받기
	Enumeration<String> e = request.getParameterNames();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
		</script>
	</head>
	<body>
		<h3>요청된 모든 파라미터 이름</h3>
		<%
			while(e.hasMoreElements()) {
				String name = e.nextElement(); // 파라미터 이름
				/* 동일한 name이 2개 이상이면 하나만 받는다.  */
				/* String value = request.getParameter(name);
				out.print(name + " : " + value + "<br/>"); */
				
				String []cc = request.getParameterValues(name);
				for(String s : cc) {
					out.print(name + " : " + s + "<br/>");
				}
			}
		%>
	</body>
</html>