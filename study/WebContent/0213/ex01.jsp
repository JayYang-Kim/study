<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			// user 객체 생성
			// 객체의 메소드를 호출할때 this 바인딩
			var user = {
				name : "스피링",
				getName : function() {
					return this.name; // this : 함수의 프로퍼티 접근
				}
			};
			
			var other_user = {
				name : "자바"
			};
			
			other_user.getName = user.getName;
			
			console.log(user);
			console.log(other_user);
			
			console.log(user.getName());
			console.log(other_user.getName());
			
			var n = 10; // 전역변수
			
			function fun() {
				var n = 5; // 지역변수
				
				document.write(n + "<br/>");
				document.write(this.n + "<br/>"); // 함수의 this는 전역변수에 바인딩
			}
			
			fun();
		</script>
	</head>
	<body>
	
	</body>
</html>