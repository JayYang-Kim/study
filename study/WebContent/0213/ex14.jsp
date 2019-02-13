<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>documnet.forms 객체</title>
		<script type="text/javascript">
			function result() {
				var s = "", v;
				var f = document.forms[0];
				
				v = f.elements[0].value;
				s = v + "<br/>";
				v = f.elements[1].value;
				s += v + "<br/>";
				
				f = document.forms[1];
				
				v = f.elements[0].value;
				s += v + "<br/>";
				v = f.elements[1].value;
				s += v + "<br/>";
				
				alert(s);
			}
		</script>
	</head>
	<body>
		<div>
			<form>
				<input type="text" />
				<input type="text" />
			</form>
		</div>
		<hr/>
		<div>
			<form>
				<input type="text" />
				<input type="text" />
			</form>
		</div>
		<div>
			<button type="button" onclick="result()">확인</button>
		</div>
	</body>
</html>