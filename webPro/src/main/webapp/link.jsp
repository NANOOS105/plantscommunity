<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>link</title>
</head>
<body>
<%
  String uri = request.getRequestURI();
  String context = request.getContextPath();
  out.println(uri.substring(context.length()));// /ch03/requestp73.jsp
  out.println(uri.substring(request.getContextPath().length())); // /ch03/requestp73.jsp
 %>
<h4>URL http://172.30.1.24:8081/webPro/link.jsp</h4>
<ul>
 <li><a href="http://localhost:8081/webPro/ch03/requestP73.jsp"> request기본객체(절대경로)</a></li>
 <li><a href="./ch03/requestP73.jsp"> request기본객체(상대경로)</a></li>
 <li><a href="<%=request.getContextPath()%>/ch03/requestP73.jsp"> request기본객체(request객체활용: 절대경로))</a></li>
 <li><a href="<%=request.getContextPath()%>"> response기본객체</a></li>
 </ul>

</body>
</html>