<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>for ~ in 문과 객체 프로퍼티 출력</title>
		<script type="text/javascript">
			// user 객체 생성
			var user = {
				name : "자바",
				kor : 90,
				eng : 80
			}
			
			console.log("name" in user); // [결과] true
			console.log("kor" in user); // [결과] true
			console.log("eng" in user); // [결과] true
			console.log("gender" in user); // [결과] false
			
			//document.write(user.name + "<br/>");
			
			with(user) {
				document.write(name + "<br/>");
				document.write(kor + "<br/>");
				document.write(eng + "<br/>");
			}
			
			var arr = ["자바", "안드로이드", "스프링"];
			
			// for (var i = 0; i < arr.length; i++) 과 동일
			for (var i in arr) {
				document.write(i + " : " + arr[i] + "<br/>");
			}
		</script>
	</head>
	<body>
		
	</body>
</html>