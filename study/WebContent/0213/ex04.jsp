<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			// trim이 안될 경우 밑의 소스로 trim 실행
			// String에 trim이 없으면
			if(typeof String.prototype.trim !== "function") {
				String.prototype.trim = function() {
					var p = /(^\s*)|(\s*$)/g;
					return this.replace(p,"");
				}
			}
			
			var a = "  대한  ";
			a = a.trim(); // ie8에서 지원을 하지 않는다.
			alert(":" + a + ":");
		</script>
	</head>
	<body>
		
	</body>
</html>