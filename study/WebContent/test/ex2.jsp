<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			* {
				padding: 0;
				margin: 0;
			}
			body {
				font-size: 12p;x
			}
			input {
				margin-bottom: 10px;
			}
			.form h3 {
				margin-bottom: 10px;
			}
			.form span {
				display: block;
				margin-bottom: 10px;
				font-size: 14px;
				font-weight: bold;
			}
			.form input {
				padding: 5px 10px;
				border: 1px solid #c4c4c4;
				border-radius: 2px;
			}
			.btn {
				display: block;
				margin-top: 10px;
				padding: 5px 10px;
				background-color: #fff;
				border: 1px solid #c4c4c4;
				border-radius: 2px;
				cursor: pointer;
			}
		</style>
	</head>
	<body>
		<div class="form">
			<h3>POST 방식으로 전송하기</h3>
			
			<form action="/study/user" method="post">
				<label>
					<span>이름 :</span>
					<input type="text" name="name" />
					<span>나이 :</span>
					<input type="text" name="age" />
					<button class="btn">전송하기</button>
				</label>
			</form>
		</div>
	</body>
</html>