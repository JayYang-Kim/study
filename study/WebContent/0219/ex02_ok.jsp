<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	request.setCharacterEncoding("UTF-8");

	// 요청 파라미터를 Map형식으로 받기
	// 키(파라미터 이름), 값(파리미터 값)
	// 똑같은 이름으로 값을 여러개 받을 수 없기 때문에 배열로 처리
	Map<String, String[]> map = request.getParameterMap();
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
		<h3>getParameterMap()으로 요청 파라미터 받기</h3>
		<%
			Iterator<String> it = map.keySet().iterator();
			while(it.hasNext()) {
				String name = it.next();
				String []ss = map.get(name);
				for(String s : ss) {
					out.print(name + " : " + s + "<br/>");
				}
			}
		%>
	</body>
</html>