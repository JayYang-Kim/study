<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	// table의 행과 열에 대한 변수 및 초기화
	int rows = 10; 
	int cols = 15;
	
	int width = cols * 30 + 20 * (cols/5) + 30;
	
	if(cols/5 == 0) {
		width -= 20;
	}
	
	// 예약된 자리
	String []cc = {"2:3", "2:4", "5:6", "5:7", "8:2", "8:3"};
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		 * {
		 	padding: 0;
		 	margin: 0;
		 }
		</style>
		<script type="text/javascript">
			function sendOk() {
				var f = document.reserveForm;
				
				var cnt = 0;
				for(var i = 0; i < f.chks.length; i++) {
					if(f.chks[i].disabled) {
						continue;
					}
					
					// 선택되어 있으면
					if(f.chks[i].checked) {
						cnt++;
					}
					
				}
					
				if(cnt < 1 || cnt > 4) {
					alert("좌석은 1 ~ 4개만 선택 가능합니다.");
					return;
				}
				
				f.submit();
			}
		</script>
	</head>
	<body>
		<div style="width:<%= width%>px;margin:30px auto;">
			<form name="reserveForm" action="reserve_ok.jsp" method="post">
				<div style="height:30px;line-height:30px;background-color:lightgray;text-align:center;">
					<p>스크린</p>
				</div>
				<table style="width:100%;border-spacing:0;border-collapse:collapse;">
					<tr height="30" align="center">
						<%
							out.print("<td width='30'>&nbsp;</td>");
							for(int i = 1; i <= cols; i++) {
								if(i != 1 && i % 5 == 1) {
									out.print("<td width='30'>&nbsp;</td>");
								}
								
								out.print("<td width='30'>" + i + "</td>");
							}
						%>
					</tr>
					
					<%
						String s;
						for(int i = 1; i <= rows; i++) {
							out.print("<tr height='25' align='center'>");
							out.print("<td>" + i + "</td>");
							for(int j = 1; j <= cols; j++) {
								if(j != 1 && j % 5 == 1) {
									out.print("<td style='background-color:lightgray'>&nbsp;</td>");
								}
								
								s = i + ":" + j;
								
								boolean b = false;
								
								for(int k = 0; k < cc.length; k++) {
									if(s.equals(cc[k])) {
										b = true;
										break;
									}
								}
								
								out.print("<td>");
								// 사용자의 입력을 하지 못하게 하는 기능 : readonly, disabled
								// readonly : form 전송이 가능
								// disabled : form 전송 시 값이 전달되지 않는다.
								if(b) {
									out.print("<input type='checkbox' name='chks' value='"+ s +"' checked='checked' disabled='disabled'>");
								} else {
									out.print("<input type='checkbox' name='chks' value='"+ s +"'>");
								}
								
								out.print("</td>");
							}
							out.print("</tr>");
						}
					%>
				</table>
				<table style="width:100%;border-spacing:0;">
					<tr height="30" align="right">
						<td>
							<button type="button" onclick="sendOk()">좌석예약</button>
						</td>
					</tr>
				</table>
			</form>
			<%-- <div style="width:100%;">
				<div style="padding:10px;background-color:lightgray;">
					<span style="text-align:center;">스크린</span>
				</div>
				<div>
					<table>
						<tr>
							<%
								for(int i = 0; i < cols; i++) {
									
									out.print("<td>");
									out.print(i);
									out.print("</td>");
									
								}
							%>
						</tr>
						
					</table>
				</div>
			</div> --%>
		</div>
	</body>
</html>