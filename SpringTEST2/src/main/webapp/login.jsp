<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>login</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css'>
<style type="text/css">
/*Fonts*/
@import url('https://fonts.googleapis.com/css?family=Montserrat:500,700&display=swap');
@import url('https://fonts.googleapis.com/css?family=Darker+Grotesque&display=swap');

body{
  background: #4d4d4d;
  margin:0;
}

.bold{
  font-family: 'Montserrat', sans-serif;
  font-weight:700;
  font-size:25px;
}

.normal{
  font-family: 'Darker Grotesque', sans-serif;
  font-weight:500;
  font-size:17px;
}

.welcome-text{
  color:#fff;
}

.welcome{
  text-align:center;
  color:#fff;
  position:absolute;
  height:50%;
  width:400px;
  z-index:30;
}

.hello{
  text-align:center;
  color:#fff;
  position:absolute;
  height:50%;
  right:0;
  width:400px;
  z-index:30;
  display:none;
}

.welcome-text{
  margin-top:100px;
}

.move{
  height:117%;
  position:absolute;
  width:400px;
  text-align:center;
  z-index:20;
  /* background-color:#2ecc71; */
  background-image:url(./resources/09.jpg);
  background-size:cover;
  background-position:left;
  transition:all .4s ease;
  border-radius: 10px 0px 0px 10px;
}

@keyframes moving{
  0%{width:400px;transform:translate(0px);}
  50%{width:550px;transform:translate(200px);}
  100%{width:400px;transform:translate(500px);}
}

@keyframes start{
  0%{width:400px;transform:translate(500px);}
  50%{width:550px;transform:translate(200px);}
  100%{width:400px;transform:translate(0px);}
}

@keyframes startForm{
  0%{width:500px;transform:translate(0px);}
  50%{width:650px;transform:translate(200px);}
  100%{width:500px;transform:translate(400px);}
}

@keyframes movingForm{
  0%{width:500px;transform:translate(400px);}
  50%{width:650px;transform:translate(200px);}
  100%{width:500px;transform:translate(0px);}
}

.moving{
  animation: moving .4s linear forwards;
  transition:all .4s ease-out;
}

.movingForm{
  animation: movingForm .4s linear forwards;
  transition:all .4s ease-out;
}

.start{
  animation: start .4s linear forwards;
  transition:all .4s ease-out;
}

.startForm{
  animation: startForm .4s linear forwards;
  transition:all .4s ease-out;
}

.p-button{
    animation-iteration-count:5;
  color:white;
  padding:12px 60px;
  color:#fff;
  font-size:14px;
  border-radius:25px;
  border:1px solid #fff;
  width:40%;
  position:absolute;
  left:0;
  right:0;
  margin: auto;
  top:60%;
  text-align:center;
  cursor:pointer;
  transition:all .4s ease;
}

.p-button:hover{
  transition:all .4s ease;
  background-color:rgba(0,0,0,.7);
}

h4{
  font-size:22px;
}

p{
  font-size:14px;
}

.container{
  height:450px;
  width:900px;
  position:absolute;
  top:50%;
  left:50%;
  transform:translate(-50%, -50%);
}

.text{
  width:60%;
  line-height:20px;
  margin:0 auto;
}

.icon{
  width:30px;
  height:30px;
  border:1px solid lightgray;
  border-radius:50%;
  text-align:center;
  cursor:pointer;
  line-height:30px;
  display:inline-block;
}

.icon:hover{
  background-color:#000;
  color:white;
}

.light,.light2{
  color:#b2bec3;
}

.icons{
  text-aling:center;
  margin-bottom:20px;
}

.forgot{
  display:none;
}

.form{
  text-align:center;
  position:absolute;
  height:117%;
  transform:translate(400px);
  width:500px;
  background-color:#fff;
  border-radius:0px 10px 10px 0px;
}

input{
  border:0px;
  border-bottom:1px solid lightgray;
  margin-bottom:15px;
  padding: 8px 5px;
  width:60%;
}

.b-button{
  background-color:#079992;
  color:white;
  padding:12px 60px;
  font-size:14px;
  border-radius:25px;
}

</style>

</head>
<body>
<div class="container">
  <div class="move">
    <div class="p-button normal signin animated pulse">SIGN IN</div>
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
    <div style="margin:-26px;">
    <form action="join.do" method="post">
    <br>
    <p class="normal light">Register company information</p>
    <p class="normal light2">management store</p>
 	<select class="normal name" name='shop'>
  	<option value='' selected>-- 선택 --</option>
  	<option value='Gangnam'>강남점</option>
  	<option value='Cheongdam'>청담점</option>
  	<option value='sinsa'>신사점</option>
  	<option value='yeogsam'>역삼점</option>
  	<option value='Myeongdong'>명동점</option>
  	</select>
    <input type="text" placeholder="job position" class="normal name" name="position">
    <br>
	<p class="normal light2">Register Privacy</p>
<<<<<<< HEAD
    <input type="text" placeholder="Name" class="normal name" name="name">
    <input type="text" placeholder="ID" class="normal" name="id">
    <input type="password" placeholder="Password" class="normal" name="password">
    <input type="email" placeholder="email" class="normal" name='email1'> @ <select name='detailemail' name='email2'>
=======
    <input type="text" placeholder="Name" class="normal name" name="Name">
    <input type="text" placeholder="ID" class="normal" name="ID">
    <input type="password" placeholder="Password" class="normal"> 
    <input type="text" placeholder="Emaile" class="normal name" name="Name"> <select class="normal" name='detailemail'>
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-KDT-BigData-3/CATSEYE.git
  <option value='' selected>-- 선택 --</option>
  <option value=''>강남점</option>
  <option value='banana'>청담점</option>
  <option value='lemon'>신사점</option>
  <option value='lemon'>역삼점</option>
  <option value='lemon'>명동점</option>
</select>
    <input type="text" placeholder="Phone number" class="normal name" name="phone"><br>
    
    <p class="normal forgot">Forgot your password?</p>
    <button type="submit" class="b-button normal">SIGN UP</button>
    
  </form>
  </div>
  </div>
</div>
</form>

<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script src='https://kit.fontawesome.com/3eee069757.js'></script>
<!-- <script  src="./script.js"></script>  -->

<script type="text/javascript">
/*login*/
let flag = 0;


$(".signin").on("click", function(){
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
      $(".p-button").text("SIGN IN");
      $(".b-button").text("SIGN UP");
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
      $(".p-button").text("SIGN UP");
      $(".b-button").text("SIGN IN");
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
</body>
</html>