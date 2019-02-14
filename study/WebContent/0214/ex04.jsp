<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function fun1() {
				alert("Hello");
				
				header2.addEventListener("click", function(){
					alert("클릭");
				}, false)
			}
		</script>
	</head>
	<body>
		<h3 id="header1" onclick="fun1()">등록</h3>
		<h3 id="header2">클릭2</h3>
	</body>
</html>