<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.text.SimpleDateFormat, java.util.Date"%>
<%//java코드작성 
 java.text.SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
 Date today = new Date();
 String strDate = sdf.format(today);
%>
<!DOCTYPE html>
<html>
	<head>
	<!-- 한글로 변환 -->
	<meta charset="utf-8">
	<title><%=strDate %></title>
	</head>
	<body>
	<h1>hello.jsp</h1>
	<h2>URL형식</h2>
	<h3>프로토콜://도메인네임:포트번호/경로</h3>
	<h4>프로토콜://ip주소:포트번호/컨텍스트패스/파일명.확장자</h4>
	<h5>http://localhost:8081/컨텍스트패스/파일명.확장자</h5>
	<h6>http://localhost:8081/webPro/hello.html</h6>
	<hr/><!-- 수평선.구분역할-->
 <pre> <!--preformatted 태그-->
 br태그:단순 줄바꿈.반복적용 
 p태그 :문단.p요소앞뒤로 빈 줄.
 ul(unordered list):무순서목록 "type=disc(기본)|circle(원)|square(사각형)"
 ol(ordered list):순서목록 "type="숫자(기본)|로마대소문자|알파벳대소문자"
 </pre>
 <hr/><!-- 수평선.구분역할-->
 <ul>
  <li>ul(unordered list):무순서목록</li>
  <li type="disc">프론트엔드-HTML,JavaScript,jQuery,Ajax,JSON등</li>
  <li type="circle">백엔드-Java,JSP/SErvlet등</li>
  <li type="square">DBMS-오라클,MySQL,MariaDB등</li>
 </ul>
 <ol>
  <li>ol(ordered list):순서목록</li>
  <li type="1">요구사항 개발 프로세스</li>
   <ol>
	  <li type="A">도출</li>
	  <li type="a">분석</li>
	  <li type="I">명세</li>
	  <li type="i">확인</li>
   </ol>
 </ol>
 <hr/>
hello~<br/><br/><br/>
	HTML: Hyper Text Markup Language.<br/>
		  웹문서골격,내용<br>
	<p>XML: eXtensible Markup Language.</p>
	<!--간격 띄워주기 -->
		 확장가능한 마크업 언어.<br>
		 데이터(작은db역할)<br>
		 다른 언어들과 연동.<br>
		 주로 환경설정용으로 사용.<br>
	</body>
</html>