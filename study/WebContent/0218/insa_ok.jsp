<%@page import="java.util.Calendar"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="javax.xml.bind.ParseConversionEvent"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String tel = request.getParameter("tel");
	int money = Integer.parseInt(request.getParameter("money"));
	int sudang = Integer.parseInt(request.getParameter("sudang"));
	
	NumberFormat nf = NumberFormat.getCurrencyInstance();
	
	String sbirth = birth.replaceAll("(\\.|\\-|\\/)", "");
	int y = Integer.parseInt(sbirth.substring(0,4));
	int m = Integer.parseInt(sbirth.substring(4,6));
	int d = Integer.parseInt(sbirth.substring(6));
	
	Calendar cal = Calendar.getInstance();
	
	// 나이 - 방법1
	int age = cal.get(Calendar.YEAR) - y;
	
	if((m > cal.get(Calendar.MONTH) + 1) || (m == cal.get(Calendar.MONTH) + 1) && d > cal.get(Calendar.DAY_OF_MONTH)) {
		age--;
	}
	
	// 나이 - 방법2
	/* cal.set(Calendar.YEAR, y);
	cal.set(Calendar.MONTH, m-1);
	cal.set(Calendar.DATE, d);
	
	Calendar now = Calendar.getInstance();
	
	int age = now.get(Calendar.YEAR) - cal.get(Calendar.YEAR);
	if ((cal.get(Calendar.MONTH) > now.get(Calendar.MONTH))
			|| (cal.get(Calendar.MONTH) == now.get(Calendar.MONTH)
					&& cal.get(Calendar.DAY_OF_MONTH) > now.get(Calendar.DAY_OF_MONTH))) {
		age--;
	} */

	// 띠 구하기 1(닭) ~ 12(원숭이)
	String[] tt = { "원숭이", "닭", "개", "돼지", "쥐", "소", "호랑이", "토끼", "용", "뱀", "말", "양" };

	// 세금
	double s;
	if (money + sudang >= 3000000) {
		s = (money + sudang) * 0.03;
	} else if (money + sudang >= 2000000) {
		s = (money + sudang) * 0.02;
	} else {
		s = 0;
	}
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
			
			table tr th, table tr td {
				padding: 10px;
			}
		</style>
		<script type="text/javascript">
		
		</script>
	</head>
	<body>
		<div style="width:800px;margin:30px auto;">
			<div style="width:100%;">
				<p>인사관리 - 확인</p>
				<div>
					<form name="insaForm" action="insa_ok.jsp" method="post" onsubmit="return check()">
						<table border="1" style="width:100%;border-spacing:0;border-collapse:collapse;">
							<tr>
								<th>이름</th>
								<td>
									<%= name %>
								</td>
							</tr>
							<tr>
								<th>생년월일</th>
								<td>
									<%= birth %>
								</td>
							</tr>
							<tr>
								<th>띠</th>
								<td>
									<%= tt[y%12] %>
									<span>(띠)</span>
								</td>
							</tr>
							<tr>
								<th>나이</th>
								<td>
									<%= age %>
									<span>(만)</span>
								</td>
							</tr>
							<tr>
								<th>전화번호</th>
								<td>
									<%= tel %>
								</td>
							</tr>
							<tr>
								<th>기본급</th>
								<td>
									<%= nf.format(money) %>
								</td>
							</tr>
							<tr>
								<th>수당</th>
								<td>
									<%= nf.format(sudang) %>
								</td>
							</tr>
							<tr>
								<th>세금</th>
								<td>
									<%= nf.format(s) %>
								</td>
							</tr>
							<tr>
								<th>실급여</th>
								<td>
									<%= nf.format(money+sudang-s) %>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>