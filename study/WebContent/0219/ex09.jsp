<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>element 및 text 액션 태그</h3>
		<!-- jsp페이지 결과물이 xml이여야 할 경우, 사용 -->
		<jsp:element name="userName">
			<jsp:attribute name="gender">
				남자
			</jsp:attribute>
			<jsp:body>
				홍길동
			</jsp:body>
		</jsp:element>
		
		<p>
			<jsp:text>text 액션 태그</jsp:text>
		</p>
	</body>
</html>