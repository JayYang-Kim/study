<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			/* var s = "";
			for(var i in screen) { // screnn 객체 : 컴퓨터 스크린 정보
				s += screen[i] + "\n";
			}
			
			alert(s); */
			
			/* console.log(screen);
			console.dir(screen); */
			
			/* window 객체 */
			/* 
				- 브라우저 기반 자바스크립트의 최상위 객체
				- var 키워드로 선언한 일바 변수도 모두 window 객체의 속성이 됨
			*/
			var f = window.open("", "", "width=300,height=200");
			f.moveTo(0, 0); // popUp 시작 위치
			
			setInterval(function() {
				f.moveBy(10,10);
			},1000);
		</script>
	</head>
	<body>
	
	</body>
</html>