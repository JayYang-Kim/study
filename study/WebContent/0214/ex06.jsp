<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function onlyNum() {
				// evnet : 이벤트 객체
				if(event.keyCode < 48 || event.keyCode > 57) {
					try{
						/* preventDefault : 이벤트 취소 */
						event.preventDefault(); // IE 11, 엣지, 크롬 가능
					} catch(e) {
						event.returnValue = false; // IE 11 미만
					}
				}
			}
			
			function onlyEng() {
				// evnet : 이벤트 객체
				if((event.keyCode < 65 || event.keyCode > 90) && (event.keyCode < 97 || event.keyCode > 122)) {
					try{
						/* preventDefault : 이벤트 취소 */
						event.preventDefault(); // IE 11, 엣지, 크롬 가능
					} catch(e) {
						event.returnValue = false; // IE 11 미만
					}
				}
			}
			
			function onlyKor() {
				// evnet : 이벤트 객체
				if(event.keyCode < 12592 || event.keyCode > 12687) {
					try{
						/* preventDefault : 이벤트 취소 */
						event.preventDefault(); // IE 11, 엣지, 크롬 가능
					} catch(e) {
						event.returnValue = false; // IE 11 미만
					}
				}
			}
			
			function notHangul(obj) {
				//backSpace:8,  tab:9, %:37, ':39, .:46 (ASCII코드)
				var code = event.keyCode;
				
				if(code == 8 || code == 9 || code == 37 || code == 39 || code == 46) {
					return;
				}
				
				obj.value = obj.value.replace(/[ㄱ-ㅎㅏ-ㅣ가-힣]/g, "");
			}
		</script>
	</head>
	<body>
		<p>
			<span>숫자만 : </span>
			<input type="text" onkeypress="onlyNum()" onkeyup="notHangul(this)" />
		</p>
		<p>
			<span>영어만 : </span>
			<input type="text" onkeypress="onlyEng()" onkeyup="notHangul(this)" />
		</p>
		<p>
			<span>한글만 : </span>
			<input type="text" onkeypress="onlyKor()" />
		</p>
	</body>
</html>