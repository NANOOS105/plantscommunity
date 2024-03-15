<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Our PLACE</title>
<style>
.c1 {width:100px;}
button {border: none; background: none;}

body{
  display: flax;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin:0;
  background-image: url('<%=request.getContextPath() %>/imgs/leaves.jpg');
 }
 .leftFieldset {
  text-align: center;
  background-color: rgba(255,255,255,0.6);
 }
  .leftFieldset1 {
  text-align: center;
  background-color: rgba(255,255,255,0.4);
 }
 
 .button1 {
  background-color: #4B0082;
  color: white;
  border-radius: 20px;
  padding: 10px 30px;
 }
  .button2{
  background-color: black;
  color: white;
  border-radius: 20px;
  padding: 8px 25px;
 }
   .button3{
  background-color: #708090;
  color: white;
  border-radius: 20px;
  padding: 10px 30px;
 }
   .button4{
  background-color:#2E8B57;
  color: white;
  border-radius: 20px;
  padding: 10px 30px;
 }
 fieldset{
  line-height:1.5;
  width: 60%;
  margin:0 auto;
}
</style>
</head>
<body>
<form name ="login" action="./loginok.jsp" method="get" >
<br/>
<br/>
<br/>
<br/>
<br/>
<fieldset class="leftFieldset">
<h1>PLANTS COMMUITY</h1>
</fieldset>
<br/>
<fieldset class="leftFieldset1">
<br/>
<input type="text" name="userId" id="userId" placeholder="USER ID"/> <br/>
<input type="password" name="userPwd" id="userPwd" placeholder="USER PW"/><br/><br/>
<input type="submit"  value="submit" title="submit" class ="button4"/></a>
<button type="reset"  class ="button3">reset</button>
<input type="button" name="join" id="join" value="CLICK ME" onclick="alert('Hello!!');" class ="button2">
 <br>
 <% String model=(String)request.getAttribute("errMSG");
if(model != null){
out.println(model);}
%>
</fieldset>
</br>
<fieldset class="leftFieldset">
<h1>Do You Want Join Us??</h1>
<input type="button" name="join" id="join" value="JOIN US!!!" onclick="location.href='./joinmember.jsp'" class = "button1">
</fieldset>
</form>
</body>
</html>