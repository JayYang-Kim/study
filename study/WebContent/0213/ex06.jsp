<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>String 객체</title>
		<script type="text/javascript">
			var s1, s2;
			s1 = "seoul korea";
			s2 = s1.charAt(6); // [결과] k
			
			document.write(s2 + "<br/>");
			
			s2 = s1.substr(6, 3); // [결과] kor
			document.write(s2 + "<br/>");
			
			s2 = s1.substr(6); // [결과] korea
			document.write(s2 + "<br/>");
			
			s2 = s1.indexOf("o"); // [결과] 2
			document.write(s2 + "<br/>");
			
			s2 = s1.indexOf("t"); // [결과] 없으면 -1 반환
			document.write(s2 + "<br/>");
			
			s2 = s1.lastIndexOf("o"); // [결과] 7
			document.write(s2 + "<br/>");
			
			s2 = s1.toUpperCase(); // [결과] SEOUL KOREA
			document.write(s2 + "<br/>");
			
			s2 = s1.replace("o", "O"); // [결과] seOul korea (첫번째만)
			document.write(s2 + "<br/>");
			
			s2 = s1.replace(/o/g, "O"); // [결과] seOul kOrea 모두 (정규식인 경우)
			document.write(s2 + "<br/>");
			
			s1 = "abc 123 de 456";
			s2 = s1.replace(/\d/g, ""); // abc de (숫자 제거)
			document.write(s2 + "<br/>");
			
			s1 = "자바, 웹, 안드로이드";
			s2 = s1.split(","); // 배열로 반환
			document.write(s2[0] + "<br/>");
			document.write(s2[0] + " : " + s2[1] + " : " + s2[2] + "<br/>");
			
			s1 = "우리나라 대한 우리 대한";
			s2 = s1.replace("대한", "大韓");
			document.write(s2 + "<br/>");
		</script>
	</head>
	<body>
	
	</body>
</html>