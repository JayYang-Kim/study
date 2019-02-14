<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			// undefined = 밑에있는 html을 읽기전에 먼저 스크립트가 실행되서 undefined가 발생
			// 방법1. window.onload(전체 데이터 읽은 후)을 사용하여 확인 가능
			// 방법2. script영역을 body영역 밑으로 뺀다.
			//alert(document.myForm); 
			
			window.onload = function() {
				var f = document.myForm;
				// select 선택
				//f.age.value = "20";
				f.age.options[0].selected = true;
			}
			
			function result() {
				var f = document.myForm;
				
				// 선택된 값  가져오기
				//var s = f.subject.value;
				var s = f.subject.options[f.subject.selectedIndex].value;
				alert(s);
			}
			
			function result2() {
				var f = document.myForm;
				
				var n = "";
				for(var i = 0; i < f.test.length; i++) {
					if(f.test.options[i].selected) {
						//n += f.test.options[f.subject.selectedIndex].value;
						n += f.test.options[i].value + "\n";
					}
				}
				
				alert(n);
			}
			
			var n = 0;
			function add() {
				var f = document.myForm;
				
				/* select > option 추가 */
				//f.test[0] = new Option("홍길동", "hong"); // text, value(서버 전송용)
				//f.test[1] = new Option("엄유선", "엄");
				
				/* 클릭할때 마다 option 추가 */
				var s = (++n) + " 테스트";
				f.test[f.test.length] = new Option(s, n);
			}
			
			function remove() {
				var f = document.myForm;
				
				for(var i = f.test.length - 1; i >= 0; i--) {
					if(f.test[i].selected) {
						f.test[i] = null;	
					}
				}
				
				/* 오류있는 소스 */
				/* for(var i = 0; i < f.test.length; i++) {
					if(f.test[i].selected) {
						f.test[i] = null;	
					}
				} */
			}
		</script>
	</head>
	<body>
		<div>
			<form name="myForm">
				<!-- option에 value가 없으면 안에 들어가 있는 text값을 전송 -->
				<select name="subject">
					<option value="java">자바</option>
					<option value="spring" selected="selected">스프링</option>
					<option value="web">웹</option>
					<option value="oracle">오라클</option>
				</select>
				<br/>
				<select name="age">
					<option value="10">10대</option>
					<option value="20">20대</option>
					<option value="30">30대</option>
					<option value="기타">기타</option>
				</select>
				<br/>
				<select name="test" multiple="multiple" size="5">
					
				</select>
				<br/>
				<button type="button" onclick="result()">확인</button>
				<button type="button" onclick="add()">추가</button>
				<button type="button" onclick="result2()">다중선택값</button>
				<button type="button" onclick="remove()">삭제</button>
			</form>
		</div>
	</body>
</html>