<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JavaScript 예제08</title>
		<script type="text/javascript">
			// 함수 클러저 : 자신의 범위 밖에 있는 변수들을 접근할 수 있는 함수
			var fun = function() {
				var s = 0;
				return function() {
					return ++s;
				}
			}
			
			//console.log(fun()); // return function() {return s++;}
			
			var seq = fun();
			
			console.log(seq()); // [결과] 1
			console.log(seq()); // [결과] 2
			console.log(seq()); // [결과] 3
		</script>
	</head>
	<body>
	
	</body>
</html>