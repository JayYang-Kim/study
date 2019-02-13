<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function result() {
				//var n = document.forms[0].name.value;
				//var n = document.myForm.name.value;
				//var n = document.getElementsByName("name")[0].value; // form을 거치지 않고 이름으로 접근 시 배열로 가져오기 떄문에 첨자를 써줘야한다.
				//var n = document.getElementsByName("name")[1].value;
				var n = document.getElementById("name").value;
				
				alert(n);
			}
		</script>
	</head>
	<body>
		<div>
			<form name="myForm">
				<input type="text" id="name" name="name" value="name" style="width:100px;" maxlength="5" placeholder="값을 입력해주세요."/>
				<br/>
				<input type="text" name="age" />
				<br/>
				<input type="button" value="확인" onclick="result()" />
			</form>
			<hr/>
			<input type="text" name="name" />
		</div>
	</body>
</html>