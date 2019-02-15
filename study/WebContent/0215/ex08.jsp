<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>DOM(Document Object Model)</title>
		
		<script type="text/javascript">
		function getElements(attrName,attrValue) {
			// 모든 태그에서 해당 속성과 속성의 값을 검색하여 해당 태그를 반환하는 함수
			var elements = document.getElementsByTagName("*");
			var foundElements=[];
			
			for(var i=0; i<elements.length; i++) {
				if(elements[i].hasAttribute(attrName) && 
					 elements[i].getAttribute(attrName).toLowerCase()==attrValue.toLowerCase()) {
					foundElements.push(elements[i]);
				}
					
			}
			
			return foundElements;
		}
		
		
		function sub() {
			// id 접근
			var name=document.getElementById("name").value;
			// name 속성으로 접근
			var age=document.getElementsByName("age")[0].value;
			// tag로 접근
			var birth=document.getElementsByTagName("input")[2].value;
			// 속성으로 접근
			var chk = getElements("type","checkbox");
			// class로 접근(브라우저에 따라 지원하지 않을 수 있다.)
			var tel=document.getElementsByClassName("tc")[0].value;
			
			var s=name+":"+age+":"+birth+":"+chk[0].checked+":"+tel;
			alert(s);
		}
		</script>
	
	</head>
	<body>
		<form>
			  이름 : <input type="text" id="name"><br>
			  나이 : <input type="text" name="age"><br>
			  생년월일 : <input type="text">
			  <input type="checkbox" value="1">양력<br>
			  전화번호 : <input type="text" class="tc"><br>
			  <hr>
			  <button type="button" onclick="sub();">확인</button>
		</form>
	
	</body>
</html>