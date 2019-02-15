<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			.wb {
				background-color: #ffffff;
				border: 1px solid #0000ff;
				outline: none; /* 포커스를 받을때 바깥부분 그림자 제거 */
			}
			
			.yb {
				background-color: yellow;
				border: 1px solid #ff0000;
				outline: none; /* 포커스를 받을때 바깥부분 그림자 제거 */
			}
		</style>
		<script type="text/javascript">
			function txtFocus(obj) {
				obj.className = "yb";
			}
			
			function txtBlur(obj) {
				obj.className = "wb";
			}
		</script>
	</head>
	<body>
		<form>
			<p><input type="text" name="name" class="wb" onfocus="txtFocus(this)" onblur="txtBlur(this)" /></p>
			<p><input type="text" name="age" class="wb" /></p>
			<p><input type="text" /></p>
			<p><button type="button">학인</button></p>
		</form>
	</body>
</html>