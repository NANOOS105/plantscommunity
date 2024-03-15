<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN US</title>
<style>
.leftclass{
text-align: center;
}
.ul1{
line-height:2.2;
}
.button button{
padding: 5px 20px;
background-color: #F5E9B6;
border-radius:5px;

}
 fieldset{
  width: 60%;
  margin:0 auto;
  background-color: white;
  
}
 body{
  background-image: url('http://localhost:8081/webPro/imgs/');
  background-size: 160%;
  background-position: 60% 30%;
 }
 
</style>
</head>
<body>
<form oninput="x.value=parseInt(visit.value)"></form>
<fieldset class="leftclass" class="margin">
<br/>
<h1><mark>Welcome!! Please, fill the form</mark></h1>
<br/>
</fieldset>
<fieldset>
<ul class="ul1">
 <li>ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: 
 <input type="text" name="id" id="id"> <input type="button" name="check" id="check" value="중복확인" onclick="alert('you can use the ID!')"></li>
 <li>Password : <input type="password" name="pwd" id="pwd"></li>
 <li>E-mail &nbsp;&nbsp;&nbsp;&nbsp;: <input type="email" name="email" id="email"></li>
 <li>Tel &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:
 <input type="tel" name="tel" id="tel"></li>
 <li>SMS opt-in : <input type="radio" name="sms" id="smsY" value="Y">YES
 <input type="radio" name="sms" id="smsN" value="N">NO</li>
 <li>Birthday&nbsp; : <input type="date" name="d1" id="d1"/></li>
 <li>Have you visited our shop?
 <input type="radio" name="member" id="memberY" value="Y"/><label for="memberY">YES</label>
 <input type="radio" name="member" id="memberN" value="N"/><label for="memberN">NO</label></li>
 <li>Select Location of Houseplant .<br/>
 <input type="checkbox" name="Location" id="c1" value="c1"/><label for="c1">Indoor</label>
<input type="checkbox" name="Location" id="c2" value="c2"/><label for="c2">Outdoor</label>
<input type="checkbox" name="Location" id="c3" value="c3"/><label for="c3">Balcony</label>
<input type="checkbox" name="Location" id="c4" value="c4"/><label for="c4">Other</label></li>
<li>The frequency of watering plants</br>
<span id="maxvisit">[none]</span><input type="range" name="visit" id="visit" max="7" min="0" step="1" value="0"/>
<span id="minvisit">[everyday]</span>
<output name="x" for "visit"></output> times!!</li>
</ul>
&nbsp;&nbsp;<a href="./login.jsp" class="button" onclick="alert('Welcome to our membership!')"><button>submit</button></a>&nbsp;&nbsp;<a href="./login.jsp" class="button"><button>back</button></a>
</fieldset>
</body>
</html>