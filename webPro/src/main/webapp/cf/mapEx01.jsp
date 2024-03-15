<%@ page import="java.util.*" %>        
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Map</title>
</head>
<body>
	<h3>protocol://domainname:port/path</h3>
	<h3>http://127.0.0.1:8081/webPro/cf/mapEx01.jsp</h3>
	<hr/>
	<h2>회원명단(HashMap구현클래스 사용)</h2>
<% //java코드작성
//~객체를 생성하여 임의의 이름 5개를 저장
//클래스 참조변수 =  new 클래스명();
//HashMap<String> map =  new HashMap<String>();

//상위클래스 참조변수 =  new 하위클래스명();
//인터페이스 참조변수 =  new 구현클래스명();
Map<String,String> map =  new HashMap<String,String>();
map.put("001", "김길동");
map.put("002", "이순신");
map.put("003", "세종대왕");
map.put("004", "김9");
map.put("005", "원빈");

//특정K를 사용하여 브라우저에 출력
//map참조변수.get(K);
String name = map.get("003");
out.println("*003회원명 : "+name+"<hr/>");  //out내장객체의 println()활용

//Iterator반복자를 이용하여 출력
 Set<String> keySet = map.keySet();
 Iterator<String>   iter = keySet.iterator();
 while( iter.hasNext() ){
	 String  key = iter.next();			//키
	 String  value = map.get(key);//값
	 out.println(key+" : "+value+"<br/>");//브라우저에 출력
 }
%>	


</body>
</html>








