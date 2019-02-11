<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			button {
				background-color: #ffffff;
				border: 1px solid #c4c4c4;
				border-radius: 2px;
			}
		</style>
	</head>
	<body>
		<form action="ex05_ok.jsp" method="post">
			<p>
				<span>이름 : </span>
				<input type="text" name="name" />
			</p>
			<p>
				<span>나이 : </span>
				<input type="text" name="age" />
			</p>
			<p>
				<span>전화번호 : </span>
				<input type="text" name="tel" />
			</p>
			<button>전송</button>
		</form>
	</body>
</html>