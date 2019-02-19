<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function send1() {
				var name = "자&바";
				var city = "서울";
				
				// GET방식으로 서버로 전송할때는 반드시 인코딩이 필요하다.
				// 숫자와 영문만 있으면 인코딩을 안해도됨
				// query전체를 인코딩할 경우 서버로 전송이 안될 수 있다.
				var query = "name=" + encodeURIComponent(name) + "&city=" + encodeURIComponent(city);
				//alert(query);
				location.href="ex04_ok.jsp?" + query;
			}
			
			function send2() {
				// 스크립트 변수는 jsp의 스크립릿, 표현식에서는 사용 불가
				var name = '<%= URLEncoder.encode("자&바", "UTF-8")%>';
				var city = '<%= URLEncoder.encode("서울", "UTF-8")%>';
				
				var query = "name=" + name + "&city=" + city;
				location.href="ex04_ok.jsp?" + query;
			}
		</script>
	</head>
	<body>
		<a href="javascript:send1()">자바스크립트 인코딩</a>
		<a href="javascript:send2()">자바로 인코딩</a>
		<a href="#" onclick="send1()">자바스크립트 인코딩</a>
	</body>
</html>