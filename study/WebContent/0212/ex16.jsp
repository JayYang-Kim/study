<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JavaScript 예제16</title>
		<script type="text/javascript">
			/* Object() 객체 생성자 함수 - 객체 생성방법 1 */
			/* var oo = new Object();
			oo.subject = "자바";
			oo.date = "2000-10-10";
			oo.age = 10;
			
			console.log(typeof(oo));
			console.log(oo);
			
			alert(oo.subject); */
			
			/* 객체 리터럴 - 객체 생성방법 2 */
			var user = {
				subject : "자바",
				year : 2000
			};
			
			console.log(typeof(user));
			console.log(user);
			
			//consloe.log(user.name); // [Error] 
			user.name="name"; // 동적으로 프로퍼티 추가
			console.log(user);
			console.log(user.name);
		</script>
	</head>
	<body>
		
	</body>
</html>