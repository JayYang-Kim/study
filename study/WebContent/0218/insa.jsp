<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			* {
				padding: 0;
				margin: 0;
				font-size: 12px;
			}
			
			table tr th, table tr td {
				padding: 10px;
			}
			
			table tr th {
				background-color:lightgray;
			}
		</style>
		<script type="text/javascript">
			function check() {
				var f = document.insaForm;
				
				if(!isValidKorea(f.name.value)) {
					alert("이름 입력 형식이 일치하지 않습니다.");
					f.name.focus();	
					return false;
				}
				
				if(!isValidDateFormat(f.birth.value)) {
					alert("생일 입력 형식이 일치하지 않습니다.");
					f.birth.focus();
					return false;
				}
				
				/* if(!isValidBirth(f.birth.value)) {
					alert("생일 입력 형식이 일치하지 않습니다.");
					f.birth.focus();
					return false;
				} */
				
				if(!isValidTel(f.tel.value)) {
					alert("전화번호 입력 형식이 일치하지 않습니다.");
					f.tel.focus();
					return false;
				}
				
				if(!isValidMoney(f.money.value)) {
					alert("기본급 입력 형식이 일치하지 않습니다.");
					f.money.focus();
					return false;
				}
				
				if(!isValidSudang(f.sudang.value)) {
					alert("수당 입력 형식이 일치하지 않습니다.");
					f.sudang.focus();
					return false;
				}
				
				return true;
			}
			
			function isValidKorea(data) {
				var format = /^[\uac00-\ud7a3]*$/g;
				//var format = /^[가-힣]+$/g; // 한글을 한글자 이상 입력
			    return format.test(data);
			}
			
			function isValidDateFormat(data){
			    var regexp = /[12][0-9]{3}[\.|\-|\/]?[0-9]{2}[\.|\-|\/]?[0-9]{2}/;
			    if(! regexp.test(data))
			        return false;

			    regexp=/(\.)|(\-)|(\/)/g;
			    data=data.replace(regexp, "");
			    
				var y=parseInt(data.substr(0, 4));
			    var m=parseInt(data.substr(4, 2));
			    if(m<1||m>12) 
			    	return false;
			    var d=parseInt(data.substr(6));
			    var lastDay = (new Date(y, m, 0)).getDate();
			    if(d<1||d>lastDay)
			    	return false;
					
				return true;
			}
			
			function isValidBirth(data) {
				var format = /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/g;
				return format.test(data); 
			}
			
			function isValidTel(data) {
				var format = /^01[0-9]-[0-9]{3,4}-[0-9]{4}$/g;
				return format.test(data); 
			}
			
			function isValidMoney(data) {
				var format = /^\d{5,8}$/;
				return format.test(data); 
			}
			
			function isValidSudang(data) {
				var format = /^\d{1,8}$/;
				return format.test(data); 
			}
		</script>
	</head>
	<body>
		<div style="width:800px;margin:30px auto;">
			<div style="width:100%;">
				<p>인사관리</p>
				<div>
					<form name="insaForm" action="insa_ok.jsp" method="post" onsubmit="return check()">
						<table border="1" style="width:100%;border-spacing:0;border-collapse:collapse;">
							<tr>
								<th>이름</th>
								<td>
									<input type="text" name="name"/>
								</td>
							</tr>
							<tr>
								<th>생년월일</th>
								<td>
									<input type="text" name="birth"/>
								</td>
							</tr>
							<tr>
								<th>전화번호</th>
								<td>
									<input type="text" name="tel"/>
								</td>
							</tr>
							<tr>
								<th>기본급</th>
								<td>
									<input type="text" name="money"/>
								</td>
							</tr>
							<tr>
								<th>수당</th>
								<td>
									<input type="text" name="sudang" value="0"/>
								</td>
							</tr>
						</table>
						<div style="margin-top:15px;text-align:center;">
							<input type="submit" value="등록하기"/>
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>