<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
 <h2>회원명단</h2>
 <h3>protocol://domainname:port/path</h3>
 <h3>http://127.0.0.1:8081/webPro/cf/listEx01.jsp</h3>
<%//java코드작성
//ArrayList객체를 생성하여 임의의 이름 5개를 저장하여 console에 출력
//ArrayList<String> list = new ArrayList<>();
    List<String> list = new ArrayList<>();
	list.add("amy");
	list.add("billy");
	list.add("cat");
	list.add("daisy");
	list.add("emily");
	for(int i=0; i<list.size();i++){
	System.out.println(list.get(i));
}
%>
 <hr/>
 <h2>회원명단(ArrayList구현클래스 사용)</h2>
 <%
 //브라우저에 출력
 for(int i=0; i<list.size();i++){
  String name = list.get(i);
 %>
  <%=name %><br/>
 <% 
 }
 %>
</body>
</html>