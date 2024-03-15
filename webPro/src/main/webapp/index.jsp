<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>

</head>
<body>
<h1>메인페이지(index.jsp)</h1>
http://localhost:8081/webPro/index.jsp<br/>
http://localhost:<%=request.getServerPort()%><%=request.getContextPath() %>/index.jsp
<hr/>

<%
Object sessionobj = session.getAttribute("AUTH_USER_ID");
if(sessionobj != null){
String loginid =(String)session.getAttribute("AUTH_USER_ID");	

%>
<%--로그인 후 메뉴 ----------- --%>
<ul>
 <li><%=loginid %>님 <a href="<%=request.getContextPath() %>/ch10/logout.jsp">로그아웃</a></li>
</ul>
<%} else{%>
<%--로그인전메뉴----------------- --%>
<ul>
 <li>회원가입 > 회원가입폼요청</li>
 <li><a href="<%=request.getContextPath() %>/ch10/loginForm.jsp">로그인(loginForm.jsp로 이동)>로그인폼요청</a>
 a href="/logn.do"로 변경할 예정(p608)</li>
</ul>
<%} %>
</body>
</html>