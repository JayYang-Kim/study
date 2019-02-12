<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JavaScript 예제06</title>
		<script type="text/javascript">
			// 페이지 실행 시 호출되는 콜백 함수
			window.onload = function() {
				alert("Hello World");
			}
			
			onclick = function() {
				alert("클릭했습니다.")
			}
		</script>
	</head>
	<body>
		<div>
			<input type="button" name="btn" value="버튼" />
		</div>
	</body>
</html>