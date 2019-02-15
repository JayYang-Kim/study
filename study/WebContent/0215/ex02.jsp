<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function fun() {
				var input = inputString.value;
				var p;
				
				// test : 정규 표현식인지 아닌지 확인
				//p = /^[가-힣]{2,4}$/; // 한글 2 ~ 4자리 (정규식 표현)
				//p = /^(\d+)$/; // 1자 이상 숫자, p = /^[0-9]+$/;
				//p = /^[가-힣\s]+$/; // 한자 이상의 한글과 띄어쓰기 허용 (공백만 입력 가능)
				//p = /^01[016789]-[0-9]{3,4}-[0-9]{4}$/; // 전화번호 (핸드폰 : 000-0000-0000, 000-000-0000)
				//p = /^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$/;
				//p = /^01(0|1|[6-9])-(\d{3}|\d{4})-(\d{4})$/;
				p = /^(?=.*[a-z])(?=.*[!@#$%^*+=-]|.*[0-9]).{5,10}$/i; // 5 ~ 10자이내 이며 영문자와 하나 이상의 숫자 또는 특수문자
				//p = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{5,10}$/;
				
				if(!p.test(input)) {
					alert("오류");
					return;
				}
				
				/* if(/^[가-힣]{2,4}$/.test(input)) {
					alert("오류");
					return;
				} */
				
				alert("확인");
			}
			
			window.load = function() {
				if(event.keyCode == 13) {
					fun();
				}
			}
		</script>
	</head>
	<body>
		<p><input type="text" id="inputString" /></p>
		<p><button type="button" onclick="fun()">확인</button></p>
	</body>
</html>