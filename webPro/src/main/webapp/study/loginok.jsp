<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login process</title>
</head>
<body>
	<h1><mark>LOGIN SUCCESS!!</mark></h1>
	<%
	String inputedId = request.getParameter("userId");
	String inputedPwd = request.getParameter("userPwd");

	Map<String, String> map = new Hashtable<String, String>();
	map.put("spring", "1");
	map.put("summer", "2");
	map.put("fall", "3");
	map.put("winter", "4");
	
	if(inputedId == null){
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request,response);
	}
	String result = null;
		if(map.containsKey(inputedId)){
		
		String memberPwd=map.get(inputedId);
		if(memberPwd.equals(inputedPwd)){
			
			session.setAttribute("AUTH_USER_ID", inputedId);
			session.setAttribute("AUTH_USER_PWD", inputedPwd);
			
			String loginid = (String)session.getAttribute("AUTH_USER_ID");
			String loginpwd = (String)session.getAttribute("AUTH_USER_PWD");
	%>	
	<%=loginid %>님, 로그아웃 하시겠습니까?<br>
	<input type="button"name="logout" id="logout" value="LOGOUT" onclick="location.href='./logout.jsp'" class ="c1"></button>
<% 		}else {
			request.setAttribute("errMSG", "CHECK YOUR PASSWORD!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request,response);
			}
		}else {	request.setAttribute("errMSG", "YOU'RE NOT OUR MEMBER!");
				RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request,response);
		}	

	%>
</body>
</html>