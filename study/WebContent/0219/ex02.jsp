<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			// 서버로 데이터를 받는 방법
			function check() {
				var f = document.form1;
				
				// submit기능이 있는 객체가 submit()을 호출하게 되면 서버에 두 번 전송됨
				return true;
			}
		</script>
	</head>
	<body>
		<form name="form1" action="ex02_ok.jsp" method="post" onsubmit="return check()">
			<p><span>아이디 : </span><input type="text" name="id" /></p>
			<p><span>패스워드 : </span><input type="text" name="pwd" /></p>
			<p><span>이름 : </span><input type="text" name="name" /></p>
			<p>
				<span>성별 : </span>
				<input type="radio" name="gender" value="남" checked="checked"/>남자
				<input type="radio" name="gender" value="여"/>여자
			</p>
			<p>
				<span>관심과목 : </span>
				<input type="checkbox" name="subjects" value="java"/>자바
				<input type="checkbox" name="subjects" value="web"/>웹
				<input type="checkbox" name="subjects" value="oracle"/>오라클
				<input type="checkbox" name="subjects" value="spring"/>스프링
				<input type="checkbox" name="subjects" value="html"/>HTML
			</p>
			<p>
				<span>학력 : </span>
				<select name="hak">
					<option>선택</option>
					<option value="대졸">대졸</option>
					<option value="고졸">고졸</option>
					<option value="기타">기타</option>
				</select>
			</p>
			<p>
				<span>취미 : </span>
				<select name="hobby" multiple="multiple" size="5">
					<option value="게임">게임</option>
					<option value="만화">만화</option>
					<option value="영화">영화</option>
					<option value="음악">음악</option>
					<option value="여행">여행</option>
					<option value="독서">독서</option>
				</select>
			</p>
			<p>
				<button>보내기</button>
			</p>
		</form>
	</body>
</html>