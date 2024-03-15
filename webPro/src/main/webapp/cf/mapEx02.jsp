<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table</title>
</head>
<body>
 <h3>protocol://domainname:port/path</h3>
 <h3>http://127.0.0.1:8081/webPro/cf/mapEx02.jsp</h3>
 <hr/>
 <h2>회원명단(Hashtable구현클래스 사용)</h2>
<%//java코드작성
//Hashtable객체를 생성하여 임의의 이름 5개를 저장하여 console에 출력
    Map<String,String> map = new Hashtable<String,String>();
	map.put("1","amy");
	map.put("2","billy");
	map.put("3","cat");
	map.put("4","daisy");
	map.put("5","emily");
	map.put("6","emily");
	
	//특정K값을 사용하여 브라우저에 출력
	//table참조변수.get(K);
	String name = map.get("1");
	out.println("1.회원명: "+name+"<hr/>");
	//out내장객체의 println()활용브라우저 출력
    
	//Iterator반복자를 이용하여 출력
	Set<String> keySet = map.keySet();
 	Iterator<String> iter = keySet.iterator();
    while(iter.hasNext()){
    	String key = iter.next();
    	String value = map.get(key);//키
    	System.out.println(key+":"+value);//값
    	out.println(key+":"+value+"<br/>");//브라우저에 출력
    } 
    
%>

</body>
</html>