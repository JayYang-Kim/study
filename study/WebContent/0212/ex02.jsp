<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JavaScript 예제02</title>
		<script type="text/javascript">
			var a;
			a = "10" + "20";	
			document.write(a + "<br/>"); // 문자열 + 문자열 : 문자열 결합
			
			a = "10" + 20;
			document.write(a + "<br/>"); // 문자열 + 숫자 : 문자열 결합
			
			a = 10 + 20;
			document.write(a + "<br/>"); // 숫자 + 숫자 : 숫자
			
			a = "10" * "20";
			document.write(a + "<br/>"); // 숫자 문자열 * 숫자 문자열 : 숫자곱
			
			a = "10a10" * "20";
			document.write(a + "<br/>"); // NaN : 연산 불가
			
			a = "10a10";
			document.write(typeof(a) + "<br/>"); // String
			
			a = Number("10a10"); // Number : 숫자로 변환
			document.write(a + "<br/>"); // NaN : 연산 불가, Number("1,000") : NaN
			document.write(typeof(a) + "<br/>"); // Number
			
			a = Number("10"); // Number : 숫자로 변환
			document.write(a + "<br/>"); // [결과] 10
			document.write(typeof(a) + "<br/>"); // Number
			
			a = parseInt("10a10"); // parseInt : 정수로 변환
			document.write(a + "<br/>"); // [결과] 10
			
			a = parseInt("1,000"); // parseInt : 정수로 변환
			document.write(a + "<br/>"); // [결과] 1
			
			a = 10;
			a = String(a);
			document.write(a + "<br/>");
			document.write(typeof(a) + "<br/>"); // String
		</script>
	</head>
	<body>
	
	</body>
</html>