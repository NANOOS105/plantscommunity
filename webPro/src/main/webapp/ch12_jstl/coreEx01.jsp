<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>JSTL(Standard Tag Lirary)-교재p292</h4>
<h5>Core태그 : 변수설정,조건문,반복문 등 제공</h5>
<hr/>
//c:forTokens items = "값1,값2,값n" delims = "구분자, 공백 등" var = "변수명"<br/>
      <c:forTokens items = "Zara-nuha-roshy" delims = "-" var = "name">
         <c:out value = "${name}"/><br/>
      </c:forTokens>

<hr/>
//for(int i=1; i<=5; i++){syso("Item")}과 같은 결과<br/>
      <c:forEach var = "i" begin = "1" end = "5" step="1">
         Item <c:out value = "${i}"/><br/>
      </c:forEach>
<hr/>      
<% //jsp의 out기본 객체를 이용해서 브라우저 출력
out.println("스크립트릿을 이용해서 출력<br>");
 String msg = "hello";%>
*jsp의 표현식을 이용해서 브라우저 출력:<%=msg%><br/>
*jstl - core의 out태그를 이용해서 브라우저 출력:
<c:out value = "내용"/><br/>
<c:out value = "${'<tag> , &'}"/><br/>

<%--
<c:set var = "변수명" scope = "session" value = "${2000*2}"/>
--%>
<c:set var = "salary" scope = "session" value = "${2000*2}"/>
<c:out value = "${salary}"/>
<p>Before Remove Value: <c:out value = "${salary}"/></p>
 <c:remove var = "salary"/>
<p>After Remove Value: <c:out value = "${salary}"/></p>
<hr/>

<c:set var = "salary" scope = "session" value = "${2000*2}"/>
      <p>Your salary is : <c:out value = "${salary}"/></p>
      <c:choose>
         
         <c:when test = "${salary <= 0}">
            Salary is very low to survive.
         </c:when>
         
         <c:when test = "${salary > 1000}">
            Salary is very good.
         </c:when>
         
         <c:otherwise>
            No comment sir...
         </c:otherwise>
      </c:choose>


<hr/>
<c:set var = "salary" scope = "session" value = "${2000*2}"/>
<c:if test = "${salary > 2000}">
<p>My salary is:  <c:out value = "${salary}"/><p>
</c:if>


</body>
</html>