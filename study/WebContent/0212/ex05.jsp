<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JavaScript 예제04</title>
		<script type="text/javascript">
			/* 함수 선언문 방식으로 함수 생성 (함수는 호출을 해야함) */
			/* 함수 선언문 방식은 선언전 호출 가능 */
			function sum(n) {
				var s = 0;
				
				for (var i = 1; i <= n; i++) {
					s += i;
				}
				
				/* console.log : 브라우저 f12 console 영역에서 로그찍기 */
				console.log(s);
				
				return s;	
			}
			
			function sub(a) {
				alert(a);
			}
			
			var a;
			a = sum(100);
			
			document.write(a + "<br/>");
			
			//sub(); // [결과] undefined
			//sub("Hello World");
			sub(1,2); // [결과] 1
			
			/* 함수 표현식 방법으로 함수 만들기 */
			/* 함수 표현식 방법은 선언전 호출 불가 */
			/* 함수전에 호출 방식 : 함수 호이스팅 */
			var fun = function(x, y) {
				return x + y;
			}
			
			var f = fun;
			
			document.write(fun(10, 5) + "<br/>");
			document.write(f(10, 5) + "<br/>");
			
			console.log(fun(10, 5));
			
			/* 기명 표현식 방법으로 함수 만들기 */
			var fun2 = function add(x, y) { // 재귀호출 사용 시 함수에 이름 입력
				return x + y;
			}
			
			document.write(fun2(20, 5) + "<br/>");
			//document.write(add(20, 5) + "<br/>"); [Error] 함수 표현식의 함수명은 외부에서 호출 불가
			
			console.log(fun2(10, 5));
			
			/* 기명 표현식 방법으로 함수 만들기 (n! 계산하기) */
			var fact = function factorial(n) {
				if (n <= 1) {
					return 1;
				}
				
				return n * factorial(n - 1); 
			}
			
			document.write(fact(3) + "<br/>");
			
			/* Function() 생성자를 이용하여 함수 만들기 */
			var f1 = Function('a', 'b', 'return a + b');
			document.write(f1(1, 2) + "<br/>");
		</script>
	</head>
	<body>
	
	</body>
</html>