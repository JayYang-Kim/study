<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로또 짜기</title>
		<script type="text/javascript">
			function lotto() {
				var cnt = inputCount.value;
				
				// 숫자만 입력했는지 검사
				if (! /^[0-9]$/g.test(cnt)) { // if (! /^[0-9]$/g.test(cnt)) 입력 시 하단 수검사 불필요
					alert("숫자만 가능합니다.");
					inputCount.focus();
					return;
				}
				
				cnt = parseInt(cnt);
				
				// 1 ~ 5 검사
				if (cnt < 1 || cnt > 5) {
					alert("1 ~ 5사이 숫자만 입력가능합니다.");
					inputCount.focus();
					return;
				}
				
				var arr = [];
				var s = "";
				
				// 입력한 수만큼 반복
				for (var i = 0; i < cnt; i++) {
					// 1 ~ 45까지의 랜덤 수 6개 생성
					for (var j = 0; j < 6; j++) {
						arr[j] = Math.floor(Math.random() * 45) + 1; // 1 ~ 45 랜덤 생성
						
						// 중복 수 검사
						for (var k = 0; k < j; k++) {
							if (arr[j] == arr[k]) {
								j--;
								break;
							}
						} 
					}
					
					// 정렬
					arr.sort(compareAsc);
					
					s += (i + 1) + "번째 : " + arr.join() + "<br/>";
				}
				
				resultLayout.innerHTML = s;
			}
			
			function compareAsc(a, b) {
				return a - b;
			}
		</script>
	</head>
	<body>
		<div>
			<span>구매개수(1 ~ 5) : </span>
			<input type="text" id="inputCount" />
			<button type="button" onclick="lotto();">로또</button>
		</div>
		<div id="resultLayout"></div>
	</body>
</html>