<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>

<%
	// request 내장 객체 : 요청된 정보를 가지고 있는 객체
	// response 내장 객체 : 응답할 정보를 가지고 있는 객체
	// out 내장객체 : response 할 출력 스트림 내장 객체
	
	// POST 방식에서 클라이언트에 의해 넘어온 파라미터(요청 파라미터)의 인코딩 지정
	request.setCharacterEncoding("UTF-8");

	// 넘어온 파라미터 받기 : String request.getParameter("파라미터 이름")
	String name = request.getParameter("name");
	String _age = request.getParameter("age");
	//int n = _age.length();
	int age = Integer.parseInt(_age);
	//int age = Integer.parseInt(request.getParameter("age"));
	String result = "성인";
	
	if (age < 19) {
		result = "미성년자";
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>표현식으로 결과 확인</h3>
	
	<p>
		<span><%= name %> 님은 <%= result %> 입니다.</span>
	</p>
	
	<h3>out 내장 객체로 결과 확인</h3>
	<p>
		<%
			out.print(name + " 님은 " + result + " 입니다.");
		%>
	</p>
</body>
</html>