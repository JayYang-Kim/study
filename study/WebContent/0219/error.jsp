<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" isErrorPage="true"%>
<!-- isErrorPage : 현재 페이지가 에러 발생 시 보여지는 페이지 여부를 지정 -->
<!-- 기본값은 false이며, true는 에러가 발생할때 보여지는 페이지를 나타냄 -->
<%
	/* 에러가 발생할 경우 특정 웹 브라우저(IE등)는 자체적으로 제공하는 에러 화면을 표시한다.
	따라서 사용자가 작성한 에러 처리 페이지를 출력하기 위해서는 현재 페에지가 정상 응답되는 페이지임을 지정하는 코드를 추가*/
	response.setStatus(HttpServletResponse.SC_OK);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>시스템에 문제가 발생했습니다.</p>
</body>
</html>