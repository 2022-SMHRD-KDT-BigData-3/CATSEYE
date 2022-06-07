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
</head>
<body>

 <% 
    String joinsuccess = (String)session.getAttribute("joinsuccess");
 System.out.print("로그인?"+joinsuccess);
 if(joinsuccess!=null){
    System.out.print("로그인 확인 성공");
%>

<script type="text/javascript">
window.onload = function(){
alert("회원가입 성공")
   
document.getElementById('btn').onclick=change();
};

</script> 

<%} %>
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
  	<input type="text" placeholder="job position" class="normal name" name="position" style=" width: 41%; margin: 11px;"><br>
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
   
   	<button type='submit' class="b-button normal" id='join'>SIGN UP</button>
    <button type='button' class="b-button normal" id='login' onclick='return submit2(this.form);' style='display:none'>SUBMIT</button>
  
  </div>
  </form>
  </div>
</div>

<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script src='https://kit.fontawesome.com/3eee069757.js'></script>
<!-- <script  src="./script.js"></script> -->

<!-- <script type="text/javascript">
function submit2(frm) { 
   alert("login hi");
    frm.action='login.do'; 
    frm.submit(); 
    return true; 
  } 
/*login*/
let flag = 0;

$(".signin").on("click", function change(){
  if(flag == 0){
    $(".move").addClass("moving");
    $(".move").removeClass("start");
    
    
    $(".form").addClass("movingForm");
    $(".form").removeClass("startForm");
    
    $(".hello").show();
    $(".welcome").hide();
    
    
    $(".move").css("background-position", "right");
    
    setTimeout(function(){
      $(".title").text("Sign-in in to Pixmy");
      $(".light").text("Or use your email account");
      $(".name").hide();
      $("#join").hide();
      $("#login").show();
      $(".forgot").show();
      $(".form").css("border-radius","10px 0px 0px 10px");
      $(".move").css("border-radius","0px 10px 10px 0px");
    }, 200);
    
    flag=1;
  }else{
    $(".move").removeClass("moving");
    $(".move").addClass("start");
    
    $(".form").removeClass("movingForm");
    $(".form").addClass("startForm");
    
    
    $(".hello").hide();
    $(".welcome").show();
    
    $(".move").css("background-position", "left");
    
    setTimeout(function(){
      $(".title").text("Create Account");
      $(".light").text("Or use your email for registration");
      $(".name").show();
      $("#login").hide();
      $("#join").show();
      $(".forgot").hide();
      $(".form").css("border-radius","0px 10px 10px 0px");
      $(".move").css("border-radius","10px 0px 0px 10px");
    }, 200);
    
    flag=0;
  }

/*비디오*/
const allVideos = document.querySelectorAll(".video");

allVideos.forEach((v) => {
 v.addEventListener("mouseover", () => {
  const video = v.querySelector("video");
  video.play();
 });

 v.addEventListener("mouseleave", () => {
  const video = v.querySelector("video");
  video.pause();
 });

$(function () {
 $(".logo, .logo-expand, .discover").on("click", function (e) {
  $(".main-container").removeClass("show");
  $(".main-container").scrollTop(0);
 });
 $(".trending, .video").on("click", function (e) {
  $(".main-container").addClass("show");
  $(".main-container").scrollTop(0);
  $(".sidebar-link").removeClass("is-active");
  $(".trending").addClass("is-active");
 });

 $(".video").click(function () {
  var source = $(this).find("source").attr("src");
  var title = $(this).find(".video-name").text();
  var person = $(this).find(".video-by").text();
  var img = $(this).find(".author-img").attr("src");
  $(".video-stream video").stop();
  $(".video-stream source").attr("src", source);
  $(".video-stream video").load();
  $(".video-p-title").text(title);
  $(".video-p-name").text(person);
  $(".video-detail .author-img").attr("src", img);
 });
});

});
});
</script>
 -->
<script src="./resources/JS/login.js"></script>
</body>
</html>