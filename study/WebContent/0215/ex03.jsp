<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript" src="util.js"></script>
		<script type="text/javascript">
			function sub() {
				var i = document.getElementById("inputString");
				var u = document.getElementById("upload");
				
				if(!isValidDateFormat(i.value)) {
					alert("날짜 형식 오류");
					return;
				}
				
				if(!isImageFile(u.value)) {
					alert("이미지 형식 오류");
					return;
				}
				
				alert("완료");
			}
			
			function commas(obj) {
				var s = obj.value;
				s = removeComma(s); // 컴마가 있을 경우, 컴마를 지운다.
				obj.value = numberWithCommas(s); // 컴마 추가
			}
		</script>
	</head>
	<body>
		<p>
			<input type="text" id="inputString" />
		</p>
		<p>
			<input type="file" id="upload" />
		</p>
		<p>
			<input type="text" id="numString" onkeyup="commas(this)" />
		</p>
		<p>
			<input type="button" onclick="sub()" value="확인" />
		</p>
	</body>
</html>