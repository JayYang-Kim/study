<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function fun() {
				/* location 객체 : 현재 문서의 URL 관련 정보 */
				location.href = "member-1.html"; // 뒤로가기 가능(제일많이 사용)
				//location.replace("member-1.html"); // 뒤로가기 불가능
			}
			
			function fun2() {
				/* navigator 객체 : 웹브라우저 제작사, 버전정보, 사용언어 등이 저장됨 */
				var s = navigator.userAgent;
			
				document.getElementById("layout").innerHTML = s;
			}
		</script>
		
	</head>
	<body>
		<button type="button" onclick="fun()">확인</button>
		<!-- javascript: 생략가능 -->
		<button type="button" onclick="javascript:location.href='member-1.html'">확인</button>
		<button type="button" onclick="fun2()">브라우저</button>
		<div id="layout">
		</div>
	</body>
</html>