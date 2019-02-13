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
				
				// 입력 폼 : 20001010, 2000-10-10, 2000/10/10, 2000.10.10 (정규 표현식)
				var p = /(\.)|(\-)|(\/)/g;
				input = input.replace(p, "");
				
				if (input.length != 8) {
					alert("날짜 형식 오류입니다.")
					inputString.focus();
					return;
				}
				
				var y = parseInt(input.substr(0, 4));
				var m = parseInt(input.substr(4, 2));
				var d = parseInt(input.substr(6));
				
				var now = new Date();
				var date = new Date(y, m - 1, d);
				
				if (y != date.getFullYear() || m != date.getMonth() + 1 || d != date.getDate()) {
					alert("날짜 형식 오류입니다.!")
					inputString.focus();
					return;
				}
				
				var d_day = (date - now)/1000/60/60/24; // 결과은 ms로 반환
				d_day = Math.ceil(d_day); // 반올림
				//d_day = Math.floor(dday); // 절삭
				
				var s = "D-Day는 <span style='color:red;'>" + d_day + "일 </span> 남았습니다.";
				result.innerHTML = s;
			}
		</script>
	</head>
	<body>
		<div>
			<p>
				<span>날짜 : </span>
				<input type="text" id="inputString" />
				<button type="button" onclick="fun();">확인</button>
			</p>
			<div id="result">
			</div>
		</div>
	</body>
</html>