<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JavaScript 예제14</title>
		<script type="text/javascript">
			function fun() {
				var input = document.getElementById("inputString").value;
				/* eval : string을 자바스크립트 코드로 실행 */
				var s = eval(input);
				
				var a = input + " : 결과 : " + s;
				
				document.getElementById("result").innerHTML = a;
			}
		</script>
	</head>
	<body>
		<div>
			<input type="text" id="inputString" />
			<button type="button" onclick="fun()">확인</button>
		</div>
		<div id="result">
				
		</div>
	</body>
</html>