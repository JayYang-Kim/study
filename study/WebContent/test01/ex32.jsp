<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	String cp = request.getContextPath();
%>
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
		
		<link rel="stylesheet" href="<%= cp %>/resource/common.css" type="text/css" />
		
		<script type="text/javascript">
			function check() { 
				var f = document.myForm;
				
				if(!f.name.value) {
					alert("이름은 필수입니다.");
					f.name.focus();
					return false;
				}
				
				if(!f.age.value) {
					alert("나이는 필수입니다.");
					f.age.focus();
					return false;
				}
				
				// f.submit(); // 처럼 submit 버튼에서 submit() 함수를 호출하면 서버로 두 번 전송됨
				return true;
			}
		</script>
	</head>
	<body>
		<h3>form을 이용한 파라미터 전송</h3>
		
		<p>
			submit 버튼 : 자바스크립트로 유효성 검사
		</p>
		
		<p><%= cp %></p>
		
		<%-- onsubmit :  --%>
		<form name="myForm" action="ex03_ok.jsp" method="post" onsubmit="retrun check();">
			<p>
				<span>이름</span>
				<input type="text" name="name" />
			</p>
			<p>
				<span>나이</span>
				<input type="text" name="age" />
			</p>
			<div class="box_btn">
				<button>전송하기</button>
			</div>
		</form>
		
		<input type="button" class="btn" name="text" value="버튼" />
	</body>
</html>