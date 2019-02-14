<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			* {
				/* padding: 0;
				margin: 0; */
			}
		</style>
		<script type="text/javascript">
			function fun() {
				/* client : documnet의 가장 위쪽 지점부터의 좌표 (스크롤바가 이동된것 만큼 포함하지 안됨) */
				var x = event.clientX;
				var y = event.clientY;
				
				/* screnn : 브라우저의 상단 좌표 */
				var x1 = event.screenX;
				var y1 = event.screenY;
				
				/* offset : div영역 안에서 */
				var x2 = event.offsetX;
				var y2 = event.offsetY;
				
				// client와 동일하지만 스크롤바가 이동된 경우 스크롤바가 이동된것 만큼 포함
				var x3 = event.pageX;
				var y3 = event.pageY;
				
				var s = x + " : " + y + " , " + x1 + " : " + y1 + " , " + x2 + " : " + y2 + " , " + x3 + " : " + y3;
				
				resultLayout.innerHTML = s;
			}
		</script>
	</head>
	<body>
		<div id="resultLayout" style="border: 1px solid #c4c4c4;width:200px;height:700px;" onclick="fun()">
		<!-- <div style="border: 1px solid #c4c4c4;width:200px;height:200px;" onmousemove = "fun()"> -->
		</div>
	</body>
</html>