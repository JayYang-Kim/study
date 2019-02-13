<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Array 객체</title>
		<script type="text/javascript">
			/* var arr = new Array();
			arr[0] = new Arrary();
			arr[1] = new Arrary();
			arr[0][0] = 1;
			arr[0][1] = 2;
			arr[1][0] = 3;
			arr[1][1] = 4; */
			
			/* var arr = [[],[]];
			arr[0][0] = 1;
			arr[0][1] = 2;
			arr[1][0] = 3;
			arr[1][1] = 4; */
			
			var arr = [[1,2,3],[4,5]]; // 2차원 배열 초기화
			
			for (var i = 0; i < arr.length; i++) {
				for (var j = 0; j < arr[i].length; j++) {
					document.write(arr[i][j] + "<br/>");
				}
			}
		</script>
	</head>
	<body>
	
	</body>
</html>