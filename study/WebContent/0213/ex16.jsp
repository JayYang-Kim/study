<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function result1() {
				var n = document.form1.inputString.value;
				alert(n);
			}
			
			function result2() {
				//var n = document.form2.inputString.value;
				//var n = document.forms[1].inputString.value;
				var n = document.forms['form2'].inputString.value;
				
				alert(n);
			}
			
			function result3(f) {
				var n = document.forms[f].inputString.value;
				alert(n);
			}
		</script>
	</head>
	<body>
		<form name="form1">
			<input type="text" name="inputString" />
			<button type="button" onclick="result1()">확인</button>
			<button type="button" onclick="result3('form1')">확인</button>
			<button type="button" onclick="result3(form1.name)">확인</button>
		</form>
		<br/><br/>
		
		<form name="form2">
			<input type="text" name="inputString" />
			<button type="button" onclick="result2()">확인</button>
		</form>
		<br/><br/>
		
		<button type="button" onclick="result3('form1')">확인1</button>
		<button type="button" onclick="result3('form2')">확인2</button>
	</body>
</html>