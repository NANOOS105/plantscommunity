<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOk2</title>
</head>
<body>
<h4>loginOk2.jsp</h4>
이 문서는 loginForm2.jsp에서 client가 보낸 id,비번을 받아서 처리하는
server측 페이지이다<br/>
나중에는 LoginHandler.java(p606)로 처리할 예정<hr/>
<% //MVC패턴: client > request > server 
   //server는 요청에 따라 비즈니스로직을 수행
   //Controller가 호출
  
   //*Controller가 해야할 일----------------
   // 1.parameter 얻기
    String id = request.getParameter("id");
	String pwd = request.getParameter("password");
    System.out.println(id+"/"+pwd);
	// 2.비즈니스로직을 수행 > Service <-> DAO <-> DB 
   //여기에서는 회원 DB의 id를 java/비번qwert가정하고진행
   //비교하여 id와 비번이 모두 일치해야지만
   //세션에 정보를 저장
   String dbid="java";
   String dbpwd="qwer";
  
   if(dbid.equals(id) && dbpwd.equals(pwd)){
   // 3.Model - session을 이용
   //session.setAttribute(String 속성명,Object 값)   
    session.setAttribute("AUTH_USER_ID",id);
    session.setAttribute("AUTH_USER_PWD", pwd);//비번 > 제거
   
    String loginid = (String)session.getAttribute("AUTH_USER_ID");
    String pwd2 = (String)session.getAttribute("AUTH_USER_PWD");//비번>제거

    out.println("로그인 성공!!");   
%>
<ol>
	<li>세션에 저장된 id:<%=loginid %></li>
	<li>세션에 저장된 비번:<%= pwd2%></li>
    <li><%=loginid %>님 <a href="logout.jsp">로그아웃</a></li>
</ol>
<%	   
   }else{
   //id나 비번이 불일치하면 "id나 비번이 불일치합니다"메세지를 client에게 보냄
   //Model
   //request.setAttribute(name, o)
   request.setAttribute("errMSG","id나 비번이 불일치합니다");
   System.out.println(request.getAttribute("errMSG"));//콘솔출력
   
   //4.View 지정
   //out.println("id나 비번이 불일치");//loginOk.jsp 브라우저에 출력
   RequestDispatcher dispatcher = request.getRequestDispatcher("loginForm.jsp");
   dispatcher.forward(request,response); 
   }
   
   //response.sendRedirect("loginForm.jsp");
%>
<%
   long ct = session.getCreationTime();
   Date time = new Date(ct);
   SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//p235
   //세선이 생성된 시간
%>
<hr/>
//jsp에는 기본객체 session 내장되어있다. servlet에서는 HttpSession을 얻어야한다.
<ul>
 <li>session의 id:<%=session.getId() %></li>
 <li>세션이 생성된 시간  
  <ol>
   <li>session.getCreationTime()=<%=session.getCreationTime() %><br/></li>
   <li>Date객체이용:<%=time %></li>
   <li>포맷에 Date객체를 적용:<%=formatter.format(time) %></li>
  </ol>
 </li>
 <li>최근 접근시간session
   session.getLastAccessedTime():<%=session.getLastAccessedTime() %>
</ul>
</body>
</html>