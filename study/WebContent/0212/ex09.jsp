<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JavaScript 예제09</title>
		<script type="text/javascript">
			// 내장 함수
			//setTimeout("alert('Hello World')", 2000); // 2초 후 한 번만 실행
			
			var n = 0;
			function start() {
				n++;
				
				var div = document.getElementById("result");
				var s = div.innerHTML; // 해당 객체가 가지고 있는 HTML 소스 가져오기
				//var s = div.innerHTML; // 해당 객체가 가지고 있는 텍스트 가져오기
				s += "n : " + n + "<br/>";
			
				div.innerHTML = s; // HTML 소스를 객체에 대입
			}
			
			function stop() {
				n = 0;
				
				clearInterval(tid); // setInterval()에 의해 설정한 무한반복을 중지
			}
			
			/* setInterval : 무한반복 */
			var tid = setInterval("start()", 2000); // 2초에 한 번씩 무한반복
		</script>
	</head>
	<body>
		<p>
			<input type="button" value="시작" onclick="start();" />
			<input type="button" value="종료" onclick="stop();" />
		</p>
		<div id="result">
			<p>
				<b>결과 : </b>
			</p>
		</div>
	</body>
</html>