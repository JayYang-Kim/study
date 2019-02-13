<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Array 객체</title>
		<script type="text/javascript">
			var arr = new Array(); // 생성자를 이용한 빈배열 생성 (성능 안좋음)
			//var arr = new Array(2); // 크기를 지정하여 배열생성 (크기는 의미 없음)
			arr[0] = "a";
			arr[1] = "b";
			arr[3] = "c";
			
			for (var i = 0; i < arr.length; i++) {
				document.write(arr[i] + "<br/>"); // [결과] a b undefined c
			}
			
			// 빈 배열 생성
			var arr2 = []; // new Array(); 보다 성능 좋음
			arr2[0] = "d";
			arr2[1] = "e";
			arr2[4] = "f";
			
			
			for (var i = 0; i < arr2.length; i++) {
				document.write(arr2[i] + "<br/>");
			}
			
			// 초기화
			var arr3 = [10, 20, 30];
			arr3[5] = 60;
			
			for (var i = 0; i < arr3.length; i++) { // [결과] 10 20 30 undefined undefined 60
				document.write(arr3[i] + "<br/>");
			}
			
			// undefined 찾기
			/* if (arr3[4] == undefined) {
				
			} */
			
			for (var i in arr3) { // [결과] 10 20 30 60 (undefined는 출력 안됨)
				document.write(arr3[i] + "<br/>");
			}
		</script>
	</head>
	<body>
		
	</body>
</html>