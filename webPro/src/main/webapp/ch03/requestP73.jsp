<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request객체(p73)</title>

</head>
<body>
<h3>request객체(p73)</h3>
<h4>URL http://172.30.1.24:8081/webPro/ch03/requestP73.jsp</h4>
<hr/>
<% //scriptlit 02-123-1234 031-111-9999
    String ssn = "123456-1234990";
	System.out.println(ssn);
	System.out.println(ssn.substring(7));
	System.out.println(ssn.length());//글자길이
	//------------------------------------------
	String uri = request.getRequestURI();
    String context = request.getContextPath();
    out.println(uri);
    out.println("<br/>");
    out.println(context);
    out.println("<br/>");
    out.println(uri.substring(7));
    out.println("<br/>");
    out.println(uri.substring(context.length()));
    out.println("<br/>");
    out.println(uri.substring(request.getContextPath().length()));   
 %>
 
<hr/>
<ul>
 <li>(클라이언트 ip주소)getRemoteAddr():<%=request.getRemoteAddr()%></li>
 <li>getContentLength():<%=request.getContentLength()%></li>
 <li>getCharacterEncoding():<%=request.getCharacterEncoding()%></li>
 <li>getContentType():<%=request.getContentType()%></li>
 <li>getProtocol():<%=request.getProtocol()%></li>
 <li>getMethod():<%=request.getMethod()%></li>
 <li>★★★getRequestURI()요청 URI:<%=request.getRequestURI()%></li>
 <li>★★★getContextPath() 컨텍스트 경로:<%=request.getContextPath()%></li>
 <li>getServerName():<%=request.getServerName()%></li>
 <li>getServerPort():<%=request.getServerPort()%></li>
</ul>
</body>
</html>