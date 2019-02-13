<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Date 객체</title>
		<script type="text/javascript">
			function showDate() {
				var now = new Date(); // 현재 컴퓨터의 날짜 가져오기
				var y = now.getFullYear();
				var m = now.getMonth() + 1;
				var d = now.getDate();
				
				if(m < 10) {
					m + "0" + m;
				}
				var d = now.getDate();
				if(d < 10) {
					d = "0" + d;
				}
				
				var hr = now.getHours();
				if(hr < 10) {
					hr = "0" + hr;
				}
				var mi = now.getMinutes();
				if(mi < 10) {
					mi = "0" + mi;
				}
				var sc = now.getSeconds();
				if(sc < 10) {
					sc = "0" + sc;
				}
				
				var s = y + "-" + m + "-" + d + " " + hr + ":" + mi + ":" + sc;
				
				document.getElementById("dateString").value = s;
				
				setTimeout("showDate()", 1000);
			}
			
			window.onload = function() {
				showDate();
			}
		</script>
	</head>
	<body>
		<input type="text" id="dateString" style="border:none" readonly="readonly" />
	</body>
</html>