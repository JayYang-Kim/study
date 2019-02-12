<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JavaScript 예제15</title>
		<script type="text/javascript">
			var a, b;
			
			/* isFinite : 숫자이면 참 */
			a = "123a";
			b = isFinite(a);
			//b = isFinite('1,123'); // [결과] false
			//b = isFinite('123'); // [결과] true
			//b = isFinite('1.2'); // [결과] true
			
			console.log(a + " : " + b); // [결과] false
			
			/* isNaN : 숫자가 아니면 참 */
			a = "123a";
			b = isNaN(a);
			//b = isFinite('1,123'); // [결과] true
			//b = isFinite('123'); // [결과] false
			//b = isFinite('1.2'); // [결과] false
			
			console.log(a + " : " + b); // [결과] true
			
			/* parseInt */
			a = "123abc";
			b = parseInt(a); // 123
			console.log(a + " : " + b); // [결과] 123
			
			a = "abc123";
			b = parseInt(a);
			console.log(a + " : " + b); // [결과] NaN
		</script>
	</head>
	<body>
		
	</body>
</html>