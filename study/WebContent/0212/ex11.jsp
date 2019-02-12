<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JavaScript 예제11</title>
		<script type="text/javascript">
			// 2초마다 반속 (시간 출력)
			var tid = setInterval(function() {
				/* alert("<p>" + new Date() + "</p>"); */
				document.write("<p>" + new Date() + "</p>");
			}, 2000);
			
			// 10초후에 한 번만 실행
			setTimeout(function() {
				clearInterval(tid);
			}, 10000)
			
		</script>
	</head>
	<body>
	
	</body>
</html>