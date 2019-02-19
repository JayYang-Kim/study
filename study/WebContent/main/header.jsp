<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	// 실제 작업경로
	String cp = request.getContextPath();
	
	// jsp:param 액션태그는 request.getParameter()로 넘겨 받는다.
	String menuItem = request.getParameter("menuItem");
	if(menuItem == null) {
		menuItem = "";
	}
%>

<ul>
	<li><a href="main.jsp">Home</a></li>
	<%if(menuItem.equals("guest")) {%>
		<li style="color:blue;font-weight:bold">방명록</li>
	<%} else {%>
	<li><a href="guest.jsp">방명록</a></li>
	<%} %>
	<li><a href="bbs.jsp">게시판</a></li>
	<li><a href="#">공지사항</a></li>
	<li><a href="#">일정관리</a></li>
</ul>