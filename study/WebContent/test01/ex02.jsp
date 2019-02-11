<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>

<%-- 스크립팅 요소 : 선언부 --%>
<%! 
	// 선언부 (필드, 메소드 정의)
	int num;
	int sum(int n) {
		int s = 0;
		for (int i = 1; i <= n; i++) {
			s += i;
		}
		
		return s;
	}
%>

<%
	// _jspService() 영역에 추가되는 코드
	int a = 0;
	
	num++; // 선언부에서 변수 선언 시 초기값 설정 안해줘도 됨
	a++;
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>스크립릿 : 선언부</h3>
		
		<p>num : <%= num %></p>
		<p>a : <%= a %></p>
		<p>1 ~ 10 : <%= sum(10) %></p>
		<p><%= 10 * 5 %></p>
	</body>
</html>