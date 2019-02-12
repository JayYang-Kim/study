<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			.box_btn button, .box_btn input {
				vertical-align: middle;
			}
			
			.btn {
				padding: 4px 6px;
			    background-color: #ffffff;
			    border: 1px solid #c4c4c4;
			    border-radius: 2px;
			    color: #4c4c4c;
			    cursor: pointer;
			}
		</style>
	</head>
	<body>
		<h3>GET 방식으로 서버로 전송</h3>
		
		<a href="ex04_ok.jsp?name=han&age=10">접속</a>
	</body>
</html>