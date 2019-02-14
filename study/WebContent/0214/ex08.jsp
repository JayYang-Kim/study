<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function fun1() {
				var s = subject.value;
				alert(s);
			}
			
			function fun2() {
				var id = document.getElementById("userId").value;
				
				if(!id) {
					msgId.style.display = "";
					document.getElementById("userId").focus();
				} else {
					msgId.style.display = "none";
				}
			}
			
			function fnReturn() {
				// Enter 입력 시 userPwd로 focus 이동
				if(event.keyCode == 13) {
					document.getElementById("userPwd").focus();
				}
			}
		</script>
	</head>
	<body>
		<select id="subject" onchange="fun1()">
			<option value="java">자바</option>
			<option value="web">웹</option>
			<option value="spring">스프링</option>
			<option value="oracle">오라클</option>
		</select>
		<br/>
		<input type="text" id="userId" placeholder="아이디" onblur="fun2()" onkeypress="fnReturn()" />
		<span id="msgId" style="display:none;">아이디를 입력해주세요.</span><br/>
		<input type="text" id="userPwd" placeholder="비밀번호" />
		<span id="msgPwd" style="display:none;">비밀번호를 입력해주세요.</span><br/>
	</body>
</html>