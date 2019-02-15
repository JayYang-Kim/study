<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript" src="util.js"></script>
		<script type="text/javascript">
			var w = null;
			function fun() {
				//winOpen("member-1.html", "member"); // util.js 활용
				
				var url = "member-1.html";
				w = window.open(url, "member", "left=20,top=20,width=700,height=500");
			}
			
			function winClose() {
				if(w != null) {
					w.close();
					w=null;
				}	
			}
		</script>
	</head>
	<body>
		<button type="button" onclick="fun()">팝업창</button>
		<button type="button" onclick="winClose()">팝업창 닫기</button>
	</body>
</html>