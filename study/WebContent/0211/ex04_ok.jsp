<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>

<%
	// 파라미터
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String result = "성인";
	
	if (age < 19) {
		result = "미성년자";
	}
	
	// QueryString (GET 방식에서의 파라미터)
	String queryString = request.getQueryString();
	
	//Method
	String method = request.getMethod();
	
	String requestURI = request.getRequestURI();
	StringBuffer requestURL = request.getRequestURL();
	String cp = request.getContextPath();
	
	String ip = request.getRemoteAddr();
	
	String userBrowser = request.getHeader("User-Agent");
	String referer = request.getHeader("Referer");
	
	if (referer == null) {
		referer = "이전 주소가 없습니다.";
	}
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
	</head>
	<body>
		<h3>GET 방식에서의 파라미터 전송</h3>
		
		<div>
			<p>
				<span>이름 : </span>
				<%= name %>
			</p>
			<p>
				<span>나이 : </span>
				<%= age %>
			</p>
			<p>
				<span>결과 : </span>
				<%= result %>
			</p>
			<p>
				<span>QueryString</span>
				<%= queryString %>
			</p>
			<p>
				<span>Method</span>
				<%= method %>
			</p>
			<p>
				<span>requestURI</span>
				<%= requestURI %>
			</p>
			<p>
				<span>requestURL</span>
				<%= requestURL %>
			</p>
			<p>
				<span>contextPath</span>
				<%= cp %>
			</p>
			<p>
				<span>client ip</span>
				<%= ip %>
			</p>
			<p>
				<span>userBrowser</span>
				<%= userBrowser %>
			</p>
			<p>
				<span>referer</span>
				<%= referer %>
			</p>
		</div>
	</body>
</html>