<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Array Sort(정렬)</title>
		<script type="text/javascript">
			var arr = ["seoul", "korea", "busan"];
			arr.sort(); // 문자열 오름차순 정렬
			
			document.write(arr.join() + "<br/>");
			
			var arr2 = [20, 10, 15, 8];
			//arr2.sort(); // 숫자는 정렬 안됨
			arr2.sort(compareAsc); // 숫자는 sort() 함수의 매개변수로 정렬의 기준이 되는 함수명을 대입해야함
			document.write(arr2.join() + "<br/>");
			
			arr2.sort(compareDesc);
			document.write(arr2.join() + "<br/>");
			
			// 오름차순
			function compareAsc(a, b) {
				return a - b;
			}
			
			// 내림차순
			function compareDesc(a, b) {
				return -(a - b);
			}
		</script>
	</head>
	<body>
	
	</body>
</html>