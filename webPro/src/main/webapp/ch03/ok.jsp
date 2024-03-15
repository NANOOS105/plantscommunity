<%@ page import ="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>I AM NOT OKAY</title>
</head>
<body>
	<h1>I AM NOT OKAY</h1>
	<h5>
		ok.jsp<br /> http://127.0.0.1:8081/wp/ch03/ok.jsp<br /> http://<%=request.getServerName()%>:<%=request.getServerPort()%><%=request.getContextPath()%>/ch03/ok.jsp
	</h5>
	<hr/>
	★getMethod : <%=request.getMethod()%><br/>
	<pre>
 교재  -로그인처리 기능구현  p607참고
 교재에서는  form에서의 요청방식을 파악하여
 get방식이면   prcessForm()메서드를 호출, =>p607 22라인
 post방식이면 prcessSubmit()메서드를 호출하는 방식으로 진행=>p607 24라인
 --------------------
 교재  -비번변경 기능구현  p622~623참고
 교재에서는  form에서의 요청방식을 파악하여
 get방식이면   prcessForm()메서드를 호출, =>p622 22라인
 post방식이면 prcessSubmit()메서드를 호출하는 방식으로 진행=>p622 24라인
 --------------------
 교재  -글쓰기 기능구현  p641
 get방식이면   prcessForm()메서드를 호출, =>p641 21라인
 post방식이면 prcessSubmit()메서드를 호출하는 방식으로 진행=>p641 23라인
 --------------------
 교재  -글수정 기능구현  p669
 get방식이면   prcessForm()메서드를 호출, =>p669 28라인
 post방식이면 prcessSubmit()메서드를 호출하는 방식으로 진행=>p669 30라인
	</pre>
	<hr/>
	<%

	String name = request.getParameter("userName");//이름
	String pwd = request.getParameter("userPwd");//비밀번호
	String sns = request.getParameter("snsYN");//수신여부
	String[] seasons = request.getParameterValues("season");//계절
	//수신여부
	//좋아하는 계절
	//브라우저에 출력
	out.println("user가 입력한 내용");
	out.println("<br/>이름:" + name);
	out.println("<br/>비밀번호:" + pwd);
	out.println("<br/>sns수신여부:" + sns);
	if (seasons != null) {
	out.println("<br/>좋아하는 계절:" + Arrays.toString(seasons));
		for (String s : seasons) {
			out.println("<br/>좋아하는 계절:" + s);
		}
	}
	%>
<hr/>
<%
//p77 25라인 참고 
 //request.getParameterNamess():파라미터이름들 가져오기
 out.println("파라미터이름:user가 입력선택한 값 출력하기<br/>");
 Enumeration<String> names = request.getParameterNames();
 while(names.hasMoreElements()){
	String parameterName = names.nextElement();
 	
	//p77 37라인 참고 
	// request.getParameterMap() : 브라우저가 전송한 파라미터의 Map을 구한다
 	Map<String,String[]> map = request.getParameterMap();
 	String[] value = map.get(parameterName);
 	
 	//여기에서는 브라우저에서 넘어온 값들이므로(배열형식)
 	//브라우저에 파라미터명 : user가 입력선택값 출력
 	for(String v:value){
	 out.println(parameterName+" : "+v+"<br/>");
 	}
 }
 
	 
%>
<a href="./formEx01.jsp">상대경로:로그인페이지로이동</a>
</body>
</html>