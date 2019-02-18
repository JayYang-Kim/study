<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	request.setCharacterEncoding("UTF-8");

	// 파라미터 받기 : getParameter(), getparameterValues()로 받기
	// getParameter()는 하나의 값만 전달 받을 수 있다.
	// 파라미터의 이름으로 넘어온 파라미터가 없으면 Null
	
	/*
		a.jsp?name=kim&subject=&age=10
		-> 파라미터 받기
		String name = request.getParameter("name");       // "kim"
		String subject = request.getParameter("subject"); // ""
		String gender = request.getParameter("gender");   // null
	*/
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	// 파라미터의 이름이 동일한 데이터를 여러개 보내면 getParameter()는 하나만 전달 받는다.
	//String subjects = request.getParameter("subjects");
	
	// 파라미터를 배열로 반환 (파라미터 이름이 동일한 경우 보통 사용)
	// checkbox, radio는 선택된 항목이 없으면 Null 발생
	String []subjects = request.getParameterValues("subjects");
	String s = "";
	
	if(subjects != null) {
		for(String a : subjects) {
			s += a + ",";
			
			s = s.substring(0, s.length()-1); // 맨 뒤의 "," 지우기
		}
	}
	
	String hak = request.getParameter("hak");
	String []hobbys = request.getParameterValues("hobby");
	String h = "";
	
	if(hobbys != null) {
		for(String a : hobbys) {
			h += a + ",";
			
			h = h.substring(0, h.length()-1); // 맨 뒤의 "," 지우기
		}
	}
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
		<p><span>아이디 : </span><%= id %></p>
		<p><span>패스워드 : </span><%= pwd %></p>
		<p><span>이름 : </span><%= name %></p>
		<p><span>성별 : </span><%= gender %></p>
		<p><span>좋아하는 과목 : </span><%= s %></p>
		<p><span>학력 : </span><%= hak %></p>
		<p><span>취미 : </span><%= h %></p>
	</body>
</html>