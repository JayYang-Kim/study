<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
  request.setCharacterEncoding("utf-8");

  Calendar cal=Calendar.getInstance();
  int year=cal.get(Calendar.YEAR);
  int month=cal.get(Calendar.MONTH)+1;
  
  // 클라이언트로부터 넘어온 연도, 월이 존재하는 경우
  String sy=request.getParameter("year");
  String sm=request.getParameter("month");
  if(sy!=null)
	  year=Integer.parseInt(sy);
  if(sm!=null)
	  month=Integer.parseInt(sm);
  
  // Calendar 객체에 year년 month월 1일로 설정
  cal.set(year, month-1, 1);
  year=cal.get(Calendar.YEAR);
  month=cal.get(Calendar.MONTH)+1;

  int week=cal.get(Calendar.DAY_OF_WEEK); // 1(일)~7(토)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
	padding: 0px; margin: 0px;
}
</style>
<script>
	function changeDate(){
		var optionYear = document.getElementsByName("year");
		var optionMonth = document.getElementsByName("month");
		var year=optionYear[0].value;
		var month=optionMonth[0].value;
		for(var i=0; i<optionYear.length; i++){
			if(i.selected){
				year = i.value;
			}
		}
		for(var i=0; i<optionMonth.length; i++){
			if(i.selected){
				month = i.value;
			}
		}
		location.href="/study/0218/calendar2.jsp?year="+year+"&month="+month>;
	}
</script>

</head>
<body>

<div style="margin: 30px auto; width: 210px;">
	<table style="width: 100%; border-spacing: 0;">
		<tr height="35" align="center">
		  <td>
			<select name="year" onchange="changeYear();">
					<%
						for(int i=year-5; i<=year+5; i++){
							out.print("<option value="+i+" "+(year==i?"selected='selected'":"")+">"+i+"</option>");
						}
					%>
			</select>
			<select name="month" onchange="changeMonth();">
					<%
						for(int i=1; i<=12; i++){
							out.print("<option value="+i+" "+((month)==i?"selected='selected'":"")+">"+i+"</option>");
						}
					%>
			</select>
		  </td>
		  </tr>
		  
	</table>
	<table border="1" style="width: 100%; border-spacing: 0; border-collapse: collapse">
	<tr height="30" align="center" bgcolor="#e4e6e4">
		<td width="30" style="color:red;">일</td>
		<td width="30">월</td>
		<td width="30">화</td>
		<td width="30">수</td>
		<td width="30">목</td>
		<td width="30">금</td>
		<td width="30" style="color:blue;">토</td>
	</tr>
	
<%
	int col=0;
	out.print("<tr height='30' align='center'>");
	// 1일 앞의 공백 부분
	for(int i=1;i<week;i++){
		col++;
		out.print("<td>&nbsp;</td>");
	}
	
	// 1~말일까지 날짜 출력하기
	String color;
	int e=cal.getActualMaximum(Calendar.DATE); // 해당월의 마지막 일자 
	for(int i=1;i<=e;i++){
		color=col==0?"red" : (col==6?"blue":"black");
		out.print("<td style='color:"+color+";'>"+i+"</td>");
		col++;
		if(col==7&&i!=e){
			out.print(" </tr>");
			out.print("<tr height='30' align='center'>");
			col=0;
		}
	}
	while(col>0&&col<7){
		out.print("<td>&nbsp;</td>");
		col++;
	}
	out.print("</tr>");
%>	
	</table>
</div>

</body>
</html>