<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			window.onload = function() {
				i = document.getElementById("inputString"); 
				i.onkeydown = function(e) {
					//var code = event.keyCode; // 위 라인에서 function(e) 안써도됨
					//var code = e.keyCode; // 키코드 값
					var code = e.which; // 키코드 값
					
					span1.innerHTML = code;
				}
				
				i.onkeypress = function(e) {
					var code = e.keyCode; // 키코드 값
					
					span2.innerHTML = code;
				}
				
				i.onkeyup = function(e) {
					var code = e.keyCode; // 키코드 값
					
					span3.innerHTML = code;
				}
			}
		</script>
	</head>
	<body>
		<p>
			<input type="text" id="inputString" />
		</p>
		<p>
			<label>keyDown : </label>
			<span id="span1"></span>
		</p>
		<p>
			<label>keyPress : </label>
			<span id="span2"></span>
		</p>
		<p>
			<label>keyUp : </label>
			<span id="span3"></span>
		</p>
	</body>
</html>