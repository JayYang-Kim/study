<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JavaScript 예제12</title>
		<script type="text/javascript">
			function bg() {
				var r = Math.floor(Math.random() * 256); // 0 ~ 255 사이 난수
				var g = Math.floor(Math.random() * 256); // 0 ~ 255 사이 난수
				var b = Math.floor(Math.random() * 256); // 0 ~ 255 사이 난수
				
				document.getElementById("layout").style.backgroundColor = "rgb("+r+","+g+","+b+")";
				
				setTimeout("bg()", 2000);
			}
			
			window.onload = function() {
				bg();
			}
		</script>
	</head>
	<body>
		<div id="layout" style="width: 500px;height: 500px;border: 1px solid #c4c4c4;">
		
		</div>	
		<!-- <script type="text/javascript">
			bg();
		</script> -->
	</body>
</html>