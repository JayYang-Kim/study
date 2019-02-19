<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	request.setCharacterEncoding("UTF-8");
%>

<%-- Bean객체가 이미 생성된 경우, Bean 클래스의 범위에 따라 Bean을 생성하지 않는다. --%>
<%-- 그러나 Bean의 객체가 생성되지 않으면 Bean을 인스턴스화 한다. --%>
<%-- id : JavaBean 인스턴스 이름이다. 페이지 내에서 고유 한 이름이어야 한다. --%>
<%-- class : 패키지명을 포함한 JavaBean 클래스 이름 (인스턴스의 생성에 이용된다.) --%>
<jsp:useBean id="vo" class="com.user.UserVO"/>

<%-- jsp:useBean 등에서 생성 한 인스턴스의 프로퍼티에 값을 설정 --%>
<%-- name : 값을 지정하는 인스턴스 이름(jsp:userBean 태그의 id 속성 값) --%>
<%-- property : 지정된 속성에 대한 값을 설정하며, "*"를 설정한 경우에는 
reuqest에서 모든 매개 변수 값을 읽고 매개 변수 이름과 동일한 이름의 속성에 대한 값을 설정한다. --%>
<jsp:setProperty property="*" name="vo"/>

<%
	String s = "미성년자";
	if(vo.getAge() >= 19) {
		s = "성인";
	}
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<p><span>이름 : </span><span><%= vo.getName() %></span></p>
		<p><span>생일 : </span><span><%= vo.getBirth() %></span></p>
		<p><span>나이 : </span><span><%= vo.getAge() %></span></p>
		<p><span><%= s %></span></p>
	</body>
</html>
