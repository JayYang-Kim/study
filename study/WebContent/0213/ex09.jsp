<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Array 객체</title>
		<script type="text/javascript">
			var arr = ["a","b","c"];
			var s;
			
			document.write(arr + "<br/>"); // [결과] a,b,c
			
			/* join(default) : ,로 구분 */
			s = arr.join(); // ,로 구분하여 하나의 값으로 만든다.
			document.write(s + "<br/>"); // [결과] a,b,c
			
			s = arr.join(" / "); // /로 구분하여 하나의 값으로 만든다.
			document.write(s + "<br/>"); // [결과] a / b / c
			
			// arr 배열의 마지막에 하나의 원소를 추가
			arr.push("d");
			document.write(arr.join() + "<br/>"); // [결과] a,b,c,d
			
			// arr 배열의 가장앞에 하나의 원소를 추가
			arr.unshift("1");
			document.write(arr.join() + "<br/>"); // [결과] 1,a,b,c,d
			
			// arr 배열의 마지막에 하나의 원소를 제거
			arr.pop();
			document.write(arr.join() + "<br/>"); // [결과] 1,a,b,c
			
			// arr 배열의 가장앞에 하나의 원소를 제거
			arr.shift();
			document.write(arr.join() + "<br/>"); // [결과] a,b,c
			
			// arr 배열의 모든 내용 지우기
			arr.length = 0; // 모두 지우기
			arr[0] = "Hello";
			document.write(arr.join() + "<br/>");
		</script>
	</head>
	<body>
	
	</body>
</html>