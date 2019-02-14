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
				
				// 이벤트 등록
				document.getElementById("header2").onclick = function() {
					alert("Hello");
					
					// 이벤트 제거
					//document.getElementById("header2").onclick = null;
					//this.onclick = null; // this 이벤트를 발생시킨 객체
					
					this.style.color = "lightblue";
				};
			}
		</script>
	</head>
	<body>
		<h3 id="header1" onclick="fun1()">클릭</h3>
		<h3 id="header2">클릭2</h3>
	</body>
</html>