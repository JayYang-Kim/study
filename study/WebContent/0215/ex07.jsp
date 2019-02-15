<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>DOM(Document Object Model)</title>
		<style type="text/css">
			.wb{background:white;}
			.yb{background:yellow;}
		</style>
		<script type="text/javascript">
			/* 객체를 찾을수 있는 방법 : id(제일 찾기 쉬움), class, name, HTML tag */
			function mover() {
				//layout.className = 'yb; // id값이 중복일 경우  액션이 둘다 안됨
				document.getElementById("layout").className = 'yb';	// id값이 중복일 경우 맨 위에 있는 id값에 있는 객체에만 액션 가능
			}
		
			function mout() {
				//layout.className = 'wb;
				document.getElementById("layout").className = 'wb';
			}
		</script>
	</head>
	<body>
		<div id="layout" onmouseover="mover()" onmouseout="mout()" style="border:1px solid black;width:200px;height:200px;">
		</div>
		<br/>
		<!-- <div id="layout" onmouseover="mover()" onmouseout="mout()" style="border:1px solid black;width:200px;height:200px;">
		</div> -->
	</body>
</html>