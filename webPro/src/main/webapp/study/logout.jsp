<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
<% session.invalidate(); 
request.setAttribute("errMSG", "LOGOUT SUCCESS!");
%>
<jsp:forward page="./login.jsp"></jsp:forward>
</body>
</html>

//