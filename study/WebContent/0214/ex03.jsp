<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function fun1() {
				alert("안녕");
			}
			
			function fun2() {
				//event.stopPropagation(); // 이베트 전파를 막음
				//event.cancelBubble = true;
				alert("자바");
				
				if(event.stopPropagation()) {
					event.stopPropagation(); // 이베트 전파를 막음
				} else {
					event.canelBubble = true;	
				}
			}
		</script>
	</head>
	<body>
		<div onclick="fun1()">
			<div>안녕</div>
			<div onclick="fun2()">자바</div>
		</div>
	</body>
</html>