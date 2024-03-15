<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx</title>
<style>
/*css 주석문*/                                                       
/*선택자  {css속성:값;css속성:값;} */
/*선택자에는 tag, .클래스명 #id명*/
.c1 {width:100px;}
</style>
</head>
<body>
<%--output은 input이벤트가 발생되면
	parseInt(price.value)은 name속성이 price인 요소의 값(value)을 정수화한다
	x.vlaue는 name속성이 x인 요소의 값(value)을 의미 
	x.value=parseInt(price.value)은 
	price의   값을 정수화하여 output요소의 값으로 설정하라는 의미
	--%>
<form name="frm" id="frm" method="get" action="ok.jsp" oninput="x.value=parseInt(price.value)">
<input type="submit" value="확인"/>
<img src="http://localhost:8081/webPro/imgs/KakaoTalk_20240226_151133103.png" 
 alt="submitIMG" title="전송이미지" class="c1"/>
<input type="image" src="<%=request.getContextPath() %>/imgs/KakaoTalk_20240226_151133103.png" 
style="width:100px;" title="submit역할이미지" class="c1"/>
<input type="reset" value="취소"/>
<br/>
<input type="button" value="type속성이button" onclick="alert('안녕');">
<button>button요소(submit역할)</button>
<button type="button">button요소(type="button")</button>
<button type="reset">button요소(type="reset")</button>
<button type="submit">button요소(type="submit")</button>

<fieldset>
 <legend>html의 여러 type 속성값</legend>
 <ul>
 <%int bno=999; %>
   <li>★hidden:<input type="hidden" name="bno" id="bno" value="<%= bno %>"/></li>
   
   <li>search:<input type="search" name="search" id="search" autofocus="autofocus" placeholder="검색어를 입력하세요"/></li>
   <li>범위range:
   <span id="minPrice">1000</span><input type="range" name="price" id="price" max="10000" min="1000" step="1"/>
   <span id="maxPrice">10000</span>
   =>
   선택한 값:<output name="x" for "price"></output></li>
 
   <li>주문수량number:
   <input type="number" name="orderQty" id="orderQty" value="1" max="10" min="0" step="1"/></li>
   
   <%-- file=file=스크린샷+2024-02-19+181933.png
        file 업로드기능구현시 (자세한 내용은 jsp p696참고)
        반드시 method ="post"
        enctype= "multiparty/form-data"속성값을 지정     --%> 
   <li>file:<input type="file" name="file" id="file"/></li>
 
  <%--%23ff0000 --%>
  <li>color: <input type="color" name="col" id="col"/></li>
  
  <%-- d1=2024-02-26 --%>
  <li>date:<input type="date" name="d1" id="d1"/></li>
  
   <%-- d2=2024-02-15T12%3A18 --%>
  <li>datetime-local:<input type="datetime-local" name="d2" id="d2"/></li>
  
  <%-- d3=2024-12 --%>
  <li>month:<input type="month" name="d3" id="d3"/></li>
  
  <%--d4=2024-W05 --%>
  <li>week:<input type="week" name="d4" id="d4"/></li>
  
  <%-- 24시 중에서 15시 24분선택시 d5=15%3A24--%>
  <li>time:<input type="time" name="d5" id="d5"/></li>
  
  <%--browser마다 지원형태 다르다. javascript,jQuery이용해서 유효성 검사 --%>
  <li>email:<input type="email" name="email" id=""/></li>
  <li>tel:<input type="tel" name="tel" id="tel"/></li>
  <li>url:<input type="url" name="url" id="url"/></li>
 
  <li>:<input type="" name="d6" id="d6"/></li>

 </ul>
 </fieldset>
 
<ul>
 <li>이름:<input type="text" name="uName" id="uName" required="required" size="15" maxlength="10"/></li>
 <li>비번:<input type="password" name="uPwd" id="uPwd" size="20"/></li>
 
 <li>성별(단일선택):
 	<input type="radio" name="gender" id="g0" value="남" checked="checked"/><label for="g0">남</label>
 	<input type="radio" name="gender" id="g1" value="여"/><label for="g1">여</label>
 </li>
 <li>좋아하는 동물(다중선택):
 	<input type="checkbox" name="animal" id="a0" value="사자" checked="checked"/><label for="a0">사자</label>
 	<input type="checkbox" name="animal" id="a1" value="물개"/><label for="a1">물개</label>
 	<input type="checkbox" name="animal" id="a2" value="토끼"/><label for="a2">토끼</label>
 	<input type="checkbox" name="animal" id="a3" value="영양"/><label for="a3">영양</label>
</li>
 <li>언어(단일선택):
 <select name="language" id="language" >
  <option value="korean">한국어</option>
  <option value="japanese">일본어</option>
  <option value="english">영어</option>
  <option value="spaish">스페인어</option>
  <option value="chinese">중국어</option>
 </select>
 </li>
 
 <li>언어(다중선택):
 <select name="language1" id="language1" size="7" multiple="multiple">
  <option value="korean">한국어</option>
  <option value="japanese">일본어</option>
  <option value="english">영어</option>
  <option value="spaish">스페인어</option>
  <option value="chinese">중국어</option>
 </select>
 </li>
 
 <li>브라우저(input-datalist):
  <input list="browsers" name="browsers">
  <datalist id="browsers">
    <option value="Edge">
    <option value="Firefox">
    <option value="Chrome">
    <option value="Opera">
    <option value="Safari">
  </datalist>
 </li>
 

  <li>자기소개(textarea의 rows,cols속성):<textarea name="mySelf" id="mySelf" rows="5" cols="30">tx기본값</textarea></li>
  <li>자기소개(textarea에 style적용):
  <textarea name="mySelf1" id="mySelf1" style="height:80px;width:120px;">tx기본값</textarea></li>
</ul>

<h4>form(웹교재p133)</h4>
<pre>
<a href="https://www.w3schools.com/html/html_forms.asp" target="_blank">form참고</a>
</pre><hr/>
</form>
</body>
</html>