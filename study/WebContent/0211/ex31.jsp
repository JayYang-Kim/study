<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			.box_btn button, .box_btn input {
				vertical-align: middle;
			}
			
			.btn {
				padding: 4px 6px;
			    background-color: #ffffff;
			    border: 1px solid #c4c4c4;
			    border-radius: 2px;
			    color: #4c4c4c;
			    cursor: pointer;
			}
		</style>
		
		<script type="text/javascript">
			//alert("방가");
			
			/* function sendOk() {
				alert("Hello World");
			} */
			
			/* document : <body> 태그 */
			function sendOk() { // if(f.name.value == "") 
				var f = document.myForm;
				
				/* console.log(f);
				
				alert(f.name.value); */
				
				if(!f.name.value) {
					alert("이름은 필수입니다.");
					f.name.focus();
					return;
				}
				
				if(!f.age.value) {
					alert("나이는 필수입니다.");
					f.age.focus();
					return;
				}
				
				f.submit(); // 서버로 전송 (submit 기능이 없는 버튼 클릭 시 서버 전송)
			}
		</script>
	</head>
	<body>
		<h3>form을 이용한 파라미터 전송</h3>
		
		<p>
			submit 버튼이외는 서버로 파라미터를 전송할 수 있는 기능이 없으므로 자바스크립트를 이용한다.
		</p>
		
		<form name="myForm" action="ex03_ok.jsp" method="post">
			<p>
				<span>이름</span>
				<input type="text" name="name" />
			</p>
			<p>
				<span>나이</span>
				<input type="text" name="age" />
			</p>
			<div class="box_btn">
				<button type="button" class="btn" onclick="sendOk();">전송하기</button>
				<input type="button" class="btn" value="전송하기" onclick="sendOk();" />
				<a href="javascript:sendOk()">전송하기</a>
			</div>
		</form>
	</body>
</html>