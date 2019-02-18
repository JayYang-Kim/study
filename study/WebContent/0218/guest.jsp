<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	// 작성자
	String name = null;
	if(request.getParameter("name") != null) {
		name = request.getParameter("name");	
	}
	
	// 내용
	String msg = null;
	if(request.getParameter("msg") != null) {
		msg = request.getParameter("msg");
		msg = msg.replaceAll("&", "&amp;")
				.replaceAll("\"", "&quot;")
				.replaceAll("<", "&lt;")
				.replaceAll(">", "&gt;")
				.replaceAll(" ", "&nbsp;") // \\s를 사용하면 \n도 공백으로 바꿔버림
				.replaceAll("\n", "<br/>");	
	}
	
	// 컴퓨터 현재 시간 가져오기
	Date now = new Date();

	SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

	String today = date.format(now);
%>
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
			
			table {
				width: 100%;
				margin-top:20px;
				border-top:1px solid #c4c4c4;
				border-bottom:1px solid #c4c4c4;
				border-spacing: 0;
				border-collapse: collapse;
			}
			
			table tr {
				border-bottom:1px solid #c4c4c4;
			}
			
			table tr th, table tr td {
				padding: 10px;
			} 
			
			table tr th {
				background-color: #eeeeee;
			}
			
			.btn {
				border:1px solid #c4c4c4;
				padding: 5px 10px;
				background-color:#ffffff;
				border-radius: 4px;
				cursor: pointer;
			}
		</style>
		<script type="text/javascript">
			function sendOk() {
				var f = document.textForm;
				
				if(!f.name.value) {
					alert("작성자를 입력해주세요.");
					f.name.focus();
					return;
				}
				
				if(!f.msg.value) {
					alert("내용을 입력해주세요.");
					f.name.focus();
					return;
				}
				
				f.action = "guest.jsp";
				f.submit();
			}
		</script>
	</head>
	<body>
		<div style="width:800px;margin:30px auto;">
			<div>
				<div style="padding-left:10px;border-left:2px solid #c4c4c4;">
					<h2>방명록</h2>
				</div>
				<div>
					<form name="textForm" method="post">
						<table>
							<tr>
								<th>작성자</th>
								<td>
									<input type="text" name="name" style="width:100%;padding:10px;box-sizing:border-box;border: 1px solid #c4c4c4;border-radius:4px;" placeholder="작성자를 입력해주세요."/>
								</td>
							</tr>
							<tr>
								<th>내용</th>
								<td>
									<textarea rows="5" cols="15" name="msg" placeholder="내용을 입력해주세요." style="width:100%;padding:10px;box-sizing:border-box;border: 1px solid #c4c4c4;border-radius:4px;"></textarea>
								</td>
							</tr>
						</table>
						<div style="float:right;margin:20px 0;">
							<input type="button" class="btn" value="등록하기" onclick="sendOk()"/>
							<input type="reset" class="btn" value="다시입력"/>
						</div>
					</form>
				</div>
			</div>
			
			<%
				if(name != null && msg != null) {
					out.print("<div style='border-top:1px solid #c4c4c4;border-bottom:1px solid #c4c4c4;clear:both;'>");
					out.print("<div style='padding:10px;background-color:#eeeeee;'>");
					out.print("<span style='font-weight:bold;'>" + name + "</span>");
					out.print("<div style='float:right;'>");
					out.print("<span>" + today + "</span>");
					out.print("<span> | 삭제</span>");
					out.print("</div>");
					out.print("</div>");
					out.print("<div style='padding:10px;clear:both;'>");
					out.print("<span>" + msg + "</span>");
					out.print("</div>");
					out.print("</div>");
				}
			%>
		</div>
	</body>
</html>