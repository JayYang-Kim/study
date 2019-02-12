<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JavaScript 예제03</title>
		<script type="text/javascript">
			var a, b;
			a = 10;
			b = "10";
			
			document.write((a==b) + "<br/>"); // true
			
			/* === (동치) 데이터가 정말 같은지 확인 */
			document.write((a===b) + "<br/>"); // false
			
			
			document.write((a!=b) + "<br/>"); // false
			document.write((a!==b) + "<br/>"); // true
		</script>
	</head>
	<body>
	
	</body>
</html>