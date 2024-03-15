<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인폼</title></head><body>
<xmp>
p608에서는 action="login.do"로 지정
여기에서는 임시로 loginOk.jsp로 지정
</xmp>
<a href="<%=request.getContextPath() %>/index.jsp">메인(Index)</a>
<hr/>
<% //로그인 실패했을 때만 서버로부터 받은 로그인 실패원인에 따른 메세지를 출력
/*서버에서는 아래와 같이 Model처리 하였다
3.Model처리
request.setAttribute(String 속성명, Object 값)
request.setAttribute("errMsg","id나 비번이 불일치합니다")*/
String model=(String)request.getAttribute("errMSG");
if( model != null){
out.println("모델내용:"+model+"<hr/>");
}
%>

 <h4>loginForm.jsp(p608)</h4>
<form name="loginFrm" action="loginOk.jsp" method="get">
<div>
 *아이디:<input type="text" name="id" id="id" value="${param.id}">
</div>
 <div>
 *암호:<input type="password" name="password" id="password">
</div>
<div>
  <input type="submit" value="로그인">
  <input type="reset" value="취소">
  </div>
</form>
</body></html>