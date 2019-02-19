<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function sendOk(operator) {
				var f = document.forms[0];
				
				if(!/^(\d+)$/.test(f.num1.value)) {
					f.num1.focus();
					return;
				}
				
				if(!/^(\d+)$/.test(f.num2.value)) {
					f.num2.focus();
					return;
				}
				
				f.operator.value = operator;
				f.submit();
			}
		</script>
	</head>
	<body>
		<form action="ex03_ok.jsp" method="post">
			<p>
				<input type="text" name="num1" placeholder="연산할 숫자 입력"/>
			</p>
			<p>
				<input type="text" name="num2" placeholder="연산할 숫자 입력"/>
			</p>
			<p>
				<input type="hidden" name="operator"/>
				<button type="button" onclick="sendOk('+')">더하기</button>
				<button type="button" onclick="sendOk('-')">뺴기</button>
				<button type="button" onclick="sendOk('*')">곱하기</button>
				<button type="button" onclick="sendOk('/')">나누기</button>
			</p>
		</form>
	</body>
</html>