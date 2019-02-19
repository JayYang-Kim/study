<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>include 지시어</h3>
		<%-- include 지시어 (소스를 복사 붙여넣기한 개념) --%>
		<%@ include file="ex06_inc.jsp" %> 
		
		<%-- jsp:include 액션 태그 (처리 결과가 포함됨) --%>
		<jsp:include page="ex06_inc.jsp"></jsp:include>
		<p><span>n : </span><span><%= n %></span></p>
	</body>
</html>