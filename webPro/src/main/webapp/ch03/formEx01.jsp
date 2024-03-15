<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form태그</title>
</head>
<body>
<h3>form요소(웹교재p133/JSP교재p74)</h3>
<h4>http://localhost:<%=request.getServerPort()%><%=request.getRequestURI()%></h4> 
<hr/>
<form method="get" action="./ok.jsp">
<ul>
 <li>*이름:<input type="text" name="userName" id="userName" required="required" value="dummy"/><br/></li>
 <li>*비밀번호:<input type="password" name="userPwd" id="userPwd" required="required"value="1234"></li>
 <li>SNS수신여부:
     <input type="radio" name="snsYN" id="snsYN" value="Y" checked="checked"/>수신허용
     <input type="radio" name="snsYN" id="snsYN" value="N" />수신불허
</li>
 <li>좋아하는 계절:
 	<input type="checkbox" name="season" id="season1" value="spring"/>봄
 	<input type="checkbox" name="season" id="season2" value="summer"/>여름
 	<input type="checkbox" name="season" id="season3" value="fall" />가을
 	<input type="checkbox" name="season" id="season4" value="winter"/>겨울
 </li>
 <li>:</li>
 <li>:<input type="submit" value="전송"/>
 	 <input type="reset" value="취소"/>
 </li>
</ul>
</form>
</body>
</html>