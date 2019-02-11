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
		<h3>form을 이용한 파라미터 전송 (submit 버튼)</h3>
		
		<p>
			submit 버튼은 서버의 요청주소(action 속성의 주소)로 데이터를 전송하는 기능을 가지고 있다.
		</p>
		
		<form action="ex03_ok.jsp" method="post">
			<p>
				<span>이름</span>
				<input type="text" name="name" />
			</p>
			<p>
				<span>나이</span>
				<input type="text" name="age" />
			</p>
			<div class="box_btn">
				<button class="btn">전송하기</button>
				<button type="submit" class="btn">전송하기</button>
				<input type="submit" class="btn" value="전송하기" />
				<input type="image" src="btn_confirm.png" />
			</div>
		</form>
	</body>
</html>