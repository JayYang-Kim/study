<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			// 생성자 (생성자는 일반적으로 대문자로 시작)
			function User(name, age) {
				this.name = name; // 파라미터와 같은 이름의 프로퍼티를 만들고 싶을땐 this 사용
				this.age = age;
				this result = function() {
					return this.age >= 19 ? "성인" : "미성년자";
				}
			}
			
			var u new User("자바", 20);
			document.write(u.name + "<br/>");
			document.write(u.result() + "<br/>");
			
			console.log(u.constructor == User);
			console.log(u instanceof User);
			console.log(u instanceof Object); // 스크립트의 모든 객체는 Object 객체이기도 한다.
		</script>
	</head>
	<body>
		
	</body>
</html>