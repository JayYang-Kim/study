<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			function stringBytes(str) {
				var strLen = str.length;
				var totalBytes = 0;
				
				var oneChar;
				for(var i= 0; i < strLen; i++) {
					oneChar = str.charAt(i);
					
					// 한글인지 확인 escape를 사용하여  인코딩 처리
					if(escape(oneChar).length > 4) { // 한글은 length가 6이됨
						totalBytes += 3; // 한글을 3bytes
					} else {
						totalBytes++;
					}
				}
				
				return totalBytes;
				
				/* var num = 0;
				for(var i = 0; i < str.length; i++) {
					if(/[ㄱ-ㅎㅏ-ㅣ가-힣]/g.test(str)) {
						num += 3;
					} else {
						num += 1;
					}
				}
				
				document.getElementById("memoBytes").innerHTML = "<span style='color:lightblue'>" + parseInt(num) + "</span>"; */
			}
			
			function stringCut(obj, maxByte) {
				var str = obj.value;
				var strLen = str.length;
				var totalByte = 0;
				
				var oneChar;
				var len = 0;
				
				for(var i= 0; i < strLen; i++) {
					oneChar = str.charAt(i);
					
					// 한글인지 확인 escape를 사용하여  인코딩 처리
					if(escape(oneChar).length > 4) { // 한글은 length가 6이됨
						totalByte += 3; // 한글을 3bytes
					} else {
						totalByte++;
					}
					
					if(totalByte <= maxByte) {
						len = i + 1; // 실제 출력할 문자 길이
					}
				}
				
				if(totalByte > maxByte) {
					alert(maxByte + "byte를 초과 할 수 없습니다.");
					str = str.substring(0, len);
					obj.value = str;
				}
			}
			
			function checkString() {
				var id = document.getElementById("memo");
				var maxBytes = 10;
				
				var totalBytes = stringBytes(id.value);
				
				if(totalBytes > maxBytes) {
					stringCut(id, maxBytes);
					totalBytes = maxBytes;
				}
				
				memoBytes.innerHTML = totalBytes + " bytes";
			}
		</script>
	</head>
	<body>
		<div>
			<textarea id="memo" rows="5" cols="60" onkeyup="checkString()"></textarea>
			<!-- <textarea id="memo" rows="5" cols="60" onkeyup="stringBytes(this.value)"></textarea> -->
		</div>
		<div id="memoBytes">
			
		</div>
	</body>
</html>