<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>login</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css'>
  <link rel='stylesheet' type="text/css" href='./resources/CSS/Login.css'/>
  <meta http-equiv="Cache-Control" content="no-cache"/>
  <meta http-equiv="Expires" content="0"/>
  <meta http-equiv="Pragma" content="no-cache"/>
</head>
<body>
 
<%response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires",-1);%>
<div class="container">
  <div class="move">
    <div class="p-button normal signin animated pulse"  id='bnt'>SIGN IN</div>
  </div>
  <div class="welcome">
    <h4 class="bold welcome-text">Welcome Back!</h4>
    <p class="normal text">To keep connected with us please login with your personal info</p>
  </div>
  <div class="hello">
    <h4 class="bold welcome-text">Hello Friend</h4>
    <p class="normal text">Enter your personal details and start journey with us</p>
  </div>
  <div class="form">
    <!-- <h4 class="bold title">Create Account</h4> -->
    <div class="icons">
      <!-- <div class="icon"><i class="fab fa-facebook-f"></i></div>
      <div class="icon"><i class="fab fa-github"></i></div>
      <div class="icon"><i class="fab fa-twitter"></i></div> -->
    </div>
    
    <!-- name 값 지정, 가입시 필요 해당 목록 추가 필요 -->
<!-- 회원가입에 회원번호(?)  -->
    <form action="join.do" method="post">
    <div style="margin:-26px;">
    <br>
    <p class="normal light">Register information</p>
    <div id ="mp">
 	<select class="normal name" name="MBR_SHOP">
  	<option value='' selected>-- branch --</option>
  	<option value='Gangnam'>강남점</option>
  	<option value='Cheongdam'>청담점</option>
  	<option value='sinsa'>신사점</option>
  	<option value='yeogsam'>역삼점</option>
  	<option value='Myeongdong'>명동점</option>
  	<input type="text" placeholder="job position" class="normal name" name="MBR_POS" style=" width: 41%; margin: 11px;"><br>
	</div>
     
   <div>
  	<input type="text" placeholder="ID" class="normal" name="MBR_ID" id="MBR_ID"><br>
    <input type="password" placeholder="password" class="normal" name="MBR_PW"><br>
    </div>
   
   <!-- <p class="normal light2">Register Privacy</p> -->
   <input type="text" placeholder="Name" class="normal name" name="MBR_NAME" id="MBR_NAME"><br>
    <input type="text" placeholder="Phone number" class="normal name" name="MBR_CNT"><br>    
    <input type="text" placeholder="Email" class="normal name" name="MBR_MAIL" style=" width: 40%; "><select class="normal name" name='detailemail'>
  	<option value='' selected>-- 선택 --</option>
  	<option value=''>@naver.com</option>
  	<option value='banana'>@daum.net</option>
  	</select><br>
    <p class="normal forgot">Forgot your password?</p>
   
    <button type='submit' class="b-button normal" id='join' value="SIGNUP" style="display: inline-block;">SIGNUP</button>
    <button type='button' class="b-button normal" id='login' onclick='return submit2(this.form);' value="SUBMIT">SUBMIT</button>
  </div>
  </form>  
  </div>
</div>


<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script src='https://kit.fontawesome.com/3eee069757.js'></script>
<!-- <script  src="./script.js"></script> -->


<script src="./resources/JS/login.js"></script>
</body>
</html>