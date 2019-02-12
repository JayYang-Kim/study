<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page buffer="1kb" autoFlush="true" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>page 지시어 : buffer 예제</h3>
		
		<%-- page 지서어 : buffer autoFlush를 "false"로 할 경우, BufferOverflow 오류가 발생함 (IOException 발생) --%>
		<% for (int i = 1; i <= 1000; i++) { %>
			<span>1234</span>
		<% } %>
	</body>
</html>