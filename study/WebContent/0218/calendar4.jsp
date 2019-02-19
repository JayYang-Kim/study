<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ page import="java.util.Calendar"%>
<%
	String cp=request.getContextPath();
	request.setCharacterEncoding("utf-8");
	
	Calendar cal=Calendar.getInstance();
	int year=cal.get(Calendar.YEAR);
	int month=cal.get(Calendar.MONTH)+1;
	
	String sy=request.getParameter("year");
	String sm=request.getParameter("month");
	
	if(sy!=null)
		year=Integer.parseInt(sy);
	if(sm!=null)
		month=Integer.parseInt(sm);
	
	// year년 month월 1일 이 무슨 요일인지 알아내기
	cal.set(year, month-1, 1);
	year=cal.get(Calendar.YEAR);
	month=cal.get(Calendar.MONTH)+1;
	
	int week=cal.get(Calendar.DAY_OF_WEEK);
	
	// 첫주의 year년도 month월 1일 이전 날짜 객체
	Calendar pcal=(Calendar)cal.clone();
	pcal.add(Calendar.DATE, -(week-1));
	int pdate=pcal.get(Calendar.DATE);
	
	// 마지막주의 year년도 month월 말일 이후 날짜 객체
	// Calendar ncal=(Calendar)cal.clone();
	// ncal.set(year, month, 1); // 다음달 1일
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	font-size: 9pt;
	font-family: 맑은 고딕, 돋움;
}
</style>

<script type="text/javascript">
function change() {
	var year=document.getElementById("year").value;
	var month=document.getElementById("month").value;
	
	var url="calendar4.jsp?year="+year+"&month="+month;
	
	location.href=url;
}
</script>

</head>
<body>

<div style="width: 700px; margin: 30px auto;">

<table style="width: 100%; border-spacing: 0; border-collapse: collapse;">
<tr height="25">
	<td align="center">
		<select id="year" onchange="change();" style="padding: 1px 3px 3px;">
			<%for(int i=year-5; i<=year+5; i++) {%>
					<option value="<%=i%>" <%=year==i ? "selected='selected'":"" %>> <%=i%> 年 </option>
			<%}%>
		</select>
		&nbsp;
		<select id="month" onchange="change();" style="padding: 1px 3px 3px;">
			<% for(int i=1; i<=12; i++) { %>
			         <option value="<%=i%>" <%=month==i ? "selected='selected'":"" %>><%=i%> 月</option>
			<%} %>
		</select>
	</td>
</tr>
</table>

<table border="1" style="width: 100%; margin:5px auto; border-spacing: 0px; border-collapse: collapse; border: 1px solid #cccccc;">
   <tr height="25" bgcolor="#e6e4e6">
   		<td width="100" align="center" style="color: red;">일</td>
   		<td width="100" align="center">월</td>
   		<td width="100" align="center">화</td>
   		<td width="100" align="center">수</td>
   		<td width="100" align="center">목</td>
   		<td width="100" align="center">금</td>
   		<td width="100" align="center" style="color: blue;">토</td>
   </tr>
<%
	out.println("<tr height='25' bgcolor='#fff'>");
	// 1일 앞의 전달 날짜 출력
	for(int i=1; i<week; i++) {
		out.print("<td align='right' style='padding-right:5px;color:#cccccc;'>");
		out.print(pdate++);
		out.print("</td>");
	}
	
	String color;
	// 해당월의 마지막 날짜
	int endDay=cal.getActualMaximum(Calendar.DATE);
	// 1~마지막일까지 날짜 찍기
	for(int i=1; i<=endDay; i++) {
		color=week%7==1?"red":(week%7==0?"blue":"black");
		out.print("<td align='right' style='padding-right:5px;color:"+color+";'>");
		out.print(i);
		out.print("</td>");
		
		week++;
		if(week%7==1 && i!=endDay)  {
			out.print("</tr>");
			
			out.print("<tr height='75' bgcolor='#fff' >");
			for(int n=i-6; n<=i; n++) {
				out.print("<td align='left' valign='top' style='padding:3px 3px 3px 3px;'>");
				out.print("&nbsp;");
				out.print("</td>");
			}
			out.print("</tr>");
			
			out.print("<tr height='25' bgcolor='#fff'>");
		}
	}
	
	// 마지막날짜를 찍고 뒷부분 다음달 처리
	int d=1;
	if(week%7!=1 && week%7!=0) { // 마지막이 일~목
		for(int i=week%7; i<=7; i++) {
			out.print("<td align='right' style='padding-right:5px;color:#cccccc;'>");
			out.print(d++);
			out.print("</td>");
		}
	} else if(week%7==0){ // 마지막이 금
		out.print("<td align='right' style='padding-right:5px;color:#cccccc;'>");
		out.print(d);
		out.print("</td>");
	}
	out.print("</tr>");
	
	int n=0;
	n = week%7-1;
	if(week%7==0) n=6;
	if(week%7==1) n=7;
	
	out.print("<tr height='75' bgcolor='#ffffff'>");
	for(int i=endDay-n+1; i<=endDay-n+7; i++) {
		out.print("<td align='left' valign='top' style='padding:3px 3px 3px 3px;'>");
		out.print("&nbsp;");
		out.print("</td>");
	}
	out.print("</tr>");
%>   
</table>

</div>

</body>
</html>