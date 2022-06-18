<%@page import="kr.book.entity.detection"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Posting</title>


<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"/>
<link rel='stylesheet' href='https://vjs.zencdn.net/5-unsafe/video-js.css'/>
<link rel='stylesheet' type="text/css" href='./resources/CSS/Main.css'/>
<link rel='stylesheet' type="text/css" href='./resources/CSS/posting.css'/>
<link rel='stylesheet' type="text/css" href='./resources/CSS/acordian.css' />
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css'>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script> -->
<!--   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script> -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>

<script type="text/javascript">
$(document).ready(()=>{ /* 람다식 */
   loadposting()
});
function loadposting(){
   $.ajax({
      url : "loadposting.do",
      type : "GET",
      async:false,
      data : "data",
      dataType : "json",
      success : resultHtml,
      error : function(){alert("error");  }
   });
   
}
function resultHtml(data){
   var view=""
   $.each(data, function(index, obj){
      view+="<div class='que' id="+obj.photo_path+" value="+obj.video_path+">"
      view+="<span>"+obj.indate
      view+=" 위험 상황 감지</span></div>"
      
   view+="<div class='anw'>"
   view+="<div class='form-group'>"
   view+="<label for=\"datetime\" style=\"font-family: 'Poppins', sans-serif;\">날짜</label>"
   view+="<input type=\"datetime-local\" name=\"datetime\" class=\"form-control\" id=\"datetime\" name=\"datetime\">"
   view+="</div>"
   view+="<div class=\"form-group\">"
   view+="<label for=\"content\">내용</label>"
   view+="<textarea class='form-control' rows='5' id='content"+obj.num+"' "
   
   view+="name='content' placeholder='내용 작성' readonly='readonly' >"+obj.content+"</textarea>"
   view+="</div>"
   view+="<button type='submit' class='btn btn-default' "
   view+="style='background: #fff;' onclick='goUpdate("+obj.num+")'>수정하기</button>"
   view+="&nbsp"
   view+="<button type='submit' class='btn btn-default' "
   view+="style='background: #fff;' onclick='goDelete("+obj.num+")'>삭제</button>"
   view+="<input style='display:none' value="+obj.photo_path+">"
   view+="</div>"
   // view+=""
   });
   $("#Accordion_wrap").html(view)
   $(".que").click(function() {
         $(this).next(".anw").stop().slideToggle(300);
        $(this).toggleClass('on').siblings().removeClass('on');
        $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
        $("#postingphoto").attr("poster","/img/"+$(this).attr("id").replace("./",""))
        $("#postingvideo").attr("src","/img/"+$(this).attr("value").replace("./",""))
        $("#postingphoto")[0].load();
        document.getElementById("postingphoto").play();
        //$('#postingvideo').get(0).load();
        //$('#'+videoID).attr('poster', newposter); //Change video poster
       //$('#postingvideo').get(0).play();
      }); 
}
//"C:\Users\smhrd\Desktop\catseye"+obj.photo_path.replace(".","")
//+$(this).attr("id").replace("./","").replace(":","").replace(":","")
function goUpdate(num){
      var content = $("#content"+num).val()
      $.ajax({
         url : "updateDetection.do",
         type : "GET",
         data : {"num":num, "content":content},
         success : loadposting,
         error : function(){alert("error")}
      })
   }
   function goDelete(num){
      var result = confirm('이 기록을 삭제하시겠습니까?');
      if(result==true){
      $.ajax({
         url : "deleteDetection.do",
         type : "GET",
         data : {"num":num},
         success : loadposting,
         error : function(){alert("error")}
      })
      }else{
         return false;
      }
   }
</script>

</head>
<body style="--theme-bg-color: rgb(255 255 255 / 31%);
    --theme-color: #3c3a3a;
    --inactive-color: #333333;
    --button-inactive: #3c3a3a;
    --search-bg: rgb(255 255 255 / 31%);
    --dropdown-bg: lightgray 56%;
    --overlay-bg: rgb(255 255 255 / 30%);
    --dropdown-hover: rgb(255 255 255 / 100%);
    --border-color: rgb(255 255 255 / 35%);
    --popup-bg: rgb(255 255 255);
    --hover-menu-bg: rgba(255 255 255 / 35%);
    --scrollbar-bg: rgb(255 253 253 / 57%);
    --content-title-color: --theme-color;">

<div class="app">
      <div class="header">
         <div class="header-menu">
            <a class="menu-link" href="Main.jsp">
            <i class="bi bi-border-outer"></i>  Home</a>
            <a class="menu-link is-active" href="memberRecord.jsp">
            <i class="bi bi-border-left"></i>  Member Record</a> 
            <a class="menu-link is-active" href="Analysis.do">
            <i class="bi bi-border-right"></i>  Movement Record</a> 
            <a class="menu-link" href="posting.do">
            <i class="bi bi-border-inner"></i>  Emergency Record</a>
            <a class="menu-link" href="logout.jsp">
            <i class="bi bi-border"></i>  SignOut</a>
         </div>  

      </div>

      <div class="wrapper">
         <div class="left-side">
            <div class="side-wrapper">
               <div class="side-title" id="before">  Before</div>
            </div>
            <div class="side-wrapper">
               <div class="side-title" id="after">  After</div>
            </div>
            <div class="side-wrapper">
               <div class="side-title" id="Safety">  Safety manual </div>
            </div>
         </div>

         <div class="main-container">
            
            <!-- video -->
            <div class="content-section Re">
            <div class="content-section-title">
            <i class="bi bi-border-inner"></i>  History CCTV</div>
            <div class="content-wrapper">
               <!-- autoplay : 자동재생, loop : 자동재생, preload: 무엇을 로드 (auto, metadata, none)  -->
               <div id="showvideo">
               
               
               </div>
               <video class="video" controls muted poster="./resources/img/11.jpg" id="postingphoto">
                  <source src="/img/emergency/fall.mp4" type="video/mp4" id="postingvideo">
               </video>
               
            </div>
            </div>
            
            <!-- 게시물 list -->
            <div class="content-section-title Re" id="changetext" style="-delay: .3s; padding: inherit;">
            <i class="bi bi-border-inner Em2"></i>  Emergency Record</div>
            <div id='test'></div>
            <div id="Accordion_wrap" class="Re" style="background-color: var(--theme-bg-color); magin:2px;">
               <div class="que">
                  <span>TITLE</span>
               </div>
               <div class="anw">
                  <span><form action="#" method="post">
						<div class="form-group">
							<label for="datetime"
								style="font-family: 'Poppins', sans-serif;">날짜</label> <input
								type="datetime-local" name="datetime" class="form-control"
								id="datetime" name="datetime">
						</div>
						<div class="form-group">
                           <label for="content">내용</label>
                           <textarea class="form-control" rows="5" id="content"
                              name="content" placeholder="내용 작성"></textarea>
                        </div>
                        <button type="submit" class='btn btn-light' style="margin-right: 5px;">수정</button>
                        <button type="submit" class='btn btn-light' style="margin-right: 5px;">삭제</button>
                     </span>
               </div>
            </div>

            <!-- 응급처치 메뉴얼 -->
            <div class="content-section-title Em">
               <div class="content-section">
               <div class="content-section-title">
               <i class="bi bi-border-inner"></i>  Emergency Response Manual
               </div>
                  <div class="apps-card">
                     <div class="app-card">
                        <span> After Effects</span>
                        <div class="app-card__subtext">Industry Standart motion graphics & visual effects</div>
                        <div class="app-card-buttons">
                           <button class="content-button status-button open">Open</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>

			<div class="content-section-title Em1" style="display: none;">
				<div class="content-section">
					<div class="content-section-title Em1">
						<i class="bi bi-border-inner"></i> safety Manual
					</div>
				</div>

				<div id="demo" class="carousel slide" data-ride="carousel">

					<div class="carousel-inner"
						style="position: relative; width: 68%; overflow: hidden; left: 159px;">
						<!-- 슬라이드 쇼 -->
						<div class="carousel-item active">
							<!--가로-->
							<img class="d-block w-100" src="./resources/img/001.jpg"
								alt="First slide">
							<div class="carousel-caption d-none d-md-block"></div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="./resources/img/002.jpg"
								alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="./resources/img/003.jpg"
								alt="Third slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="./resources/img/004.jpg"
								alt="Third slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="./resources/img/005.jpg"
								alt="Third slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="./resources/img/006.jpg"
								alt="Third slide">
						</div>

						<!-- / 슬라이드 쇼 끝 -->

						<!-- 왼쪽 오른쪽 화살표 버튼 -->
						<a class="carousel-control-prev" href="#demo" data-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<!-- <span>Previous</span> -->
						</a> <a class="carousel-control-next" href="#demo" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<!-- <span>Next</span> -->
						</a>
						<!-- / 화살표 버튼 끝 -->

						<!-- 인디케이터 -->
						<ul class="carousel-indicators">
							<li data-target="#demo" data-slide-to="0" class="active"></li>
							<!--0번부터시작-->
							<li data-target="#demo" data-slide-to="1"></li>
							<li data-target="#demo" data-slide-to="2"></li>
							<li data-target="#demo" data-slide-to="3"></li>
							<li data-target="#demo" data-slide-to="4"></li>
							<li data-target="#demo" data-slide-to="5"></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TimelineMax.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js'></script>
<script src="./resources/JS/posting.js"></script>
<script src="./resources/JS/Main.js"></script>
<script src="./resources/JS/acordian.js"></script>
<script type="text/javascript">

$('#Record').click(function() {
    $(".Em").show();
    $(".Em1").hide();
    $(".Re").show();
})

$('#before').click(function() {
   $("#changetext").text("Before");
    $(".Em").hide();
    $(".Em1").hide();
    $(".Re").show();
})

$('#after').click(function() {
   /* document.getElementById("#changetext").textContent="after"; */
   $("#changetext").text("After");
    $(".Em").hide();
    $(".Em1").hide();
    $(".Re").show();
})

$('#Safety').click(function() {
    $(".Em").hide();
    $(".Em1").show();
    $(".Re").hide();
})
</script>
</html>