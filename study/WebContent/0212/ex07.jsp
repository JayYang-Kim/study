<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JavaScript 예제07</title>
		<script type="text/javascript">
			/* 배열의 객체들은 뒤에s가 붙는다. */
			function fun(x, y) {
				//console.log(fun.arguments);
				console.dir(fun.arguments);
				
				document.write(x + " : " + y + "<br/>");
				for (var i = 0; i < fun.arguments.length; i++) {
					document.write(fun.arguments[i] + "<br/>");
				}
			}
			
			fun('a','b','c');
		</script>
	</head>
	<body>
	
	</body>
</html>