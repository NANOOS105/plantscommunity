<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm2.jsp(p608)</title>
</head>
<body>
<xmp>
p608에서는 action="login.do"로 지정
여기에서는 임시로 loginOk.jsp로 지정
</xmp>
<a href="<%=request.getContextPath() %>/index.jsp">메인(Index)</a>
<hr/>

      <c:set var = "model" scope = "session" value = "errMSG"/>
      <c:if test = "${model != null}">
         모델내용: <c:out value = "${model}"/><br/>
         모델내용: ${model}<br/>
      </c:if>

 <h4>loginForm.jsp(p608)</h4>
<form name="loginFrm" action="loginOk2.jsp" method="get">
<div>
 *아이디:<input type="text" name="id" id="id" value="${param.id}">
</div>
 <div>
 *암호:<input type="password" name="password" id="password">
</div>
<div>
  <input type="submit" value="로그인">
  <input type="reset" value="취소">
  </div>
</form>
</body>
</html>