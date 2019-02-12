<%@page import="java.net.URLDecoder"%>
<%@page import="java.io.InputStream"%>
<%@page import="javax.print.DocFlavor.STRING"%>
<%@page import="java.util.Enumeration"%>
<!-- 클라이언트가 요청했을때 보여주는 문서 type을 설정 (없으면 안됨) -->
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>

<%
	/* POST로 보냈고 getParameter로 받을 경우 꼭 필요 (이 과정을 하지 않으면 ISO-8859-1 형식으로 디코딩을 하기 때문에 한글이 깨짐) */
	/* getParameter로 받지 않은 경우, 생략 가능 */
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
	<head>
		<!-- jsp 파일에서는 없어도됨 -->
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			button {
				background-color: #ffffff;
				border: 1px solid #c4c4c4;
				border-radius: 2px;
			}
		</style>
	</head>
	<body>
		<%
			out.print("method : " + request.getMethod() + "<br/><br/>");
			out.print("Query String(GET 방식의 파라미타 : )" + request.getQueryString() + "<br/><br/>");
			out.print("<hr/>");
			out.print("request로 요청받은 header 영역...<br/>");
			
			/* getHeaderNames : return값 Enumeration */
			Enumeration<String> e = request.getHeaderNames();
			
			while(e.hasMoreElements()) {
				String key = e.nextElement();
				String value = request.getHeader(key);
				out.print(key + ":::" + value + "<br/>");
			}
			
			out.print("<hr/>");
			
			out.print("request로 요청받은 body영역<br/>");
			
			// POST 방식으로 넘어온 파라미터는 body 영역에서 넘겨 받는다.
			InputStream is = request.getInputStream();
			
			byte[] b = new byte[1024];
			int size;
			String str;
			
			while((size = is.read(b)) != -1) {
				str = new String(b, 0, size);
				out.print("디코딩 전 자료 : " + str + "<br/>");
				str = URLDecoder.decode(str,"UTF-8");
				out.print("디코딩 후 자료 : " + str + "<br/>");
			}
		%>
	</body>
</html>