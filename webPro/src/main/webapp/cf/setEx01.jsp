<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*"%>
<%@page import="java.util.HashSet,java.util.Set" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set</title>
</head>
<body>
 <h3>protocol://domainname:port/path</h3>
 <h3>http://127.0.0.1:8081/webPro/cf/setEx01.jsp</h3>
 <hr/>
 <h2>회원명단(HashSet구현클래스 사용)</h2>
<%//java코드작성
//HashSet객체를 생성하여 임의의 이름 5개를 저장하여 console에 출력
//ArrayList<String> list = new ArrayList<>();
    Set<String> set = new HashSet<>();
    set.add("amy");
    set.add("billy");
    set.add("cat");
    set.add("daisy");
    set.add("emily");
    set.add("emily");
    
/* 	Iterator<String> iterator = set.iterator();
    while(iterator.hasNext()){
    	String str = iterator.next();
    	System.out.println(str);
    } */
    
    for(String name : set){
    	System.out.println(name);//콘솔에 출력
    	out.println(name+"<br/>");//브라우저에출력
    }
%>

</body>
</html>