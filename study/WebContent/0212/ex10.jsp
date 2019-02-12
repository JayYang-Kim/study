<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JavaScript 예제10</title>
		<script type="text/javascript">
			function fun1() {
				var s = "<b>자바</b>";
				
				// id를 이용한 객체 접근은 document.getElementById("id") 이지만
				// 아이디로만 표현 가능하다. 단 아이디명과 동일한 이름이 변수명이 없는 경우
				//document.getElementById("result").innerText = s; // 텍스트로 설정하여 설정(대입)
				
				
				result.innerHTML += s; // HTML로 설정(대입)
			}
			
			function fun2() {
				var s;
				//s = result.innerText; // 객체가 가지고 있는 텍스트만 반환
				s = result.innerHTML; // 객체가 가지고 있는 값을  HTML 소스로 반환
				alert(s);
			}
		</script>
	</head>
	<body>
		<div>
			<button type="button" onclick="fun1()">추가</button>
			<button type="button" onclick="fun2()">확인</button>
		</div>
		<div id="result">
			<b>스프링</b>
		</div>
	</body>
</html>