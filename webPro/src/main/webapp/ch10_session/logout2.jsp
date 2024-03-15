<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
 <%
  session.invalidate();//세션의 모든 정보를 제거 
 %>
<jsp:forward page="../index.jsp"></jsp:forward>


<a href="<%=request.getContextPath() %>/index.jsp">메인(Index)</a>
<hr/>
 <h4>logout.jsp 이지만 브라우저에는 이 화면이 보이지 않아요</h4>
 //로그아웃 기능 구현을 담당하는 
 LogoutHandler(p611)의 작업<br/>
<p>로그아웃되었습니다.</p>
<a href="./loginForm.jsp">로그인(loginForm.jsp)</a>
</body>
</html> 