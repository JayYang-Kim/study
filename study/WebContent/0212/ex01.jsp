<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JavaScript 예제01</title>
		<script type="text/javascript">
			var a; // 변수선언 (전역변수)
			
			// 자바스크립트 자료형 검사 (typeof : 자료형을 확인 할 때 주로 사용)
			a = typeof('자바'); 	
			document.write(a + "<br/>"); // [결과] String
			
			a = typeof(10); 	
			document.write(a + "<br/>"); // [결과] number
			
			a = typeof(true); 	
			document.write(a + "<br/>"); // [결과] boolean
			
			a = typeof(function() {}); 
			document.write(a + "<br/>"); // [결과] function	
			
			a = typeof({}); 
			document.write(a + "<br/>"); // [결과] Object	
			
			a = typeof(null); 
			document.write(a + "<br/>"); // [결과] Object	
			
			a = typeof(GG); 
			document.write(a + "<br/>"); // [결과] undefined	
			
			var b;
			document.write(b + "<br/>"); // [결과] undefined
			document.write(typeof(b) + "<br/>") // [결과] undefined
			
			b = null;
			document.write(b + "<br/>"); // [결과] null
			document.write(typeof(b) + "<br/>") // [결과] object
		</script>
	</head>
	<body>
	
	</body>
</html>