<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>DOM(Document Object Model)</title>
		<script type="text/javascript">
			function sub1() {
				var obj = document.getElementById("layout");
				var s;
				
				// 속성값 확인
				s = obj.getAttribute("style");
				// 속성설정
				// 객체.setAttribute("속성명", "속성값");
				
				alert(s);
			}
			
			function sub2() {
				var obj = document.getElementById("layout");
				
				// 태그 생성
				var node = document.createElement("p");
				var textNode = document.createTextNode("마지막");
				
				node.appendChild(textNode);
				obj.appendChild(node);
			}

			function sub3() {
				var obj = document.getElementById("layout");
				
				// 태그 생성
				var node = document.createElement("p");
				var textNode = document.createTextNode("앞");
				
				node.appendChild(textNode);
				obj.insertBefore(node, obj.childNodes[2]); // 크롬은 enter 때문에 순서가 다름 0: 자바, 1:enter, 2:스프링
			}

			function sub4() {
				var obj = document.getElementById("layout");
				if(obj.childNodes.length > 1) {
					obj.removeChild(obj.childNodes[1]);
				}
			}

			function sub5() {
				var obj = document.getElementById("layout");
				//obj.style.border = "none";
				obj.style.removeProperty("border"); // 크롬, IE9 이상
			}
		</script>
	</head>
	<body>
		<div id="layout" style="width:300px;height:300px;overflow-y:auto;border:1px solid #c4c4c4;">
			<p>자바</p>
			<p>스프링</p>
		</div>
		<br/>
		<hr/>
		<div>
			<button type="button" onclick="sub1()">정보</button>
			<button type="button" onclick="sub2()">추가</button>
			<button type="button" onclick="sub3()">특정 노드앞에 추가</button>
			<button type="button" onclick="sub4()">노드삭제</button>
			<button type="button" onclick="sub5()">특정 스타일제거</button>
		</div>
	</body>
</html>