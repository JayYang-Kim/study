<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JavaScript 예제04</title>
		<script type="text/javascript">
			var s, n;
			
			n = 0;
			s = 0;
			
			while (n < 10) {
				n++;
				s += n;
			}
			
			document.write("결과 : " + s + "<br/>");
			
			console.log(s);
			
			s = 0;
			
			for (var i = 1; i <= 100; i += 2) {
				s += i;
			}
			
			document.write("결과 : " + s + "<br/>");
			
			console.log(s);
		</script>
	</head>
	<body>
	
	</body>
</html>