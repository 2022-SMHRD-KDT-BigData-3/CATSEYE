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
  <link rel='stylesheet' type="text/css" href='./resources/CSS/./manual.css' />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:ital,wght@0,300;0,400;0,600;0,700;1,400&display=swap" rel="stylesheet">

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
		view+="<div class='que'>"
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
	view+="</div>"
	// view+=""
	
	});
	$("#Accordion_wrap").html(view)
	$(".que").click(function() {
		   $(this).next(".anw").stop().slideToggle(300);
		  $(this).toggleClass('on').siblings().removeClass('on');
		  $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
		}); 
}

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
				<a class="menu-link" href="Main.jsp"><!-- <img src="./resources/img/home.png" style="width: 20px; margin:2px;"> -->Home</a>
				<a class="menu-link is-active" href="Analysis.do">MovementAnalysis</a> 
				<a class="menu-link" href="posting.do">Emergency Record</a>
				<a class="menu-link" href="logout.jsp">SignOut</a>
			</div>
		</div>

		<div class="wrapper">
			<div class="left-side">
				<div class="side-wrapper">
					<div class="side-title" id="before">Before</div>
				</div>
				<div class="side-wrapper">
					<div class="side-title" id="after">After</div>
				</div>
				<div class="side-wrapper">
					<div class="side-title" id="Safety">Safety manual</div>
				</div>

			</div>

			<div class="main-container">

				<!-- 유튜브처럼 history  -->
				<!-- <div class="small-header anim Re"
					style="-delay: .3s; padding: inherit;">
					<img src="./resources/img/posting.png"
						style="width: 20px; margin-right: 15px;">History CCTV</div>
				<div class="videos">
					<div class="video anim Re" style="-delay: .4s">
						<div class="video-time">8 min</div>
						<div class="video-wrapper">
							<video muted="">
								<source src="./resources/video/RacingBike.mp4" type="video/mp4">
							</video>
							<div class="author-img__wrapper video-author"></div>
						</div>
						<section style="background-color: LIGHTGRAY;">
							<div class="video-by">title</div>
							<div class="video-name">Contents</div>
							<div class="video-view">
								Conetents2<span class="seperate video-seperate"></span>
							</div>
						</section>
					</div>
				</div> -->
				
				<!-- video -->
				<div class="content-section Re">
				<div class="content-section-title"><img src="./resources/img/posting.png" style="width: 20px; margin-right: 15px;">History CCTV</div>
				<div class="content-wrapper">
					<!-- autoplay : 자동재생, loop : 자동재생, preload: 무엇을 로드 (auto, metadata, none)  -->

					<video class="video" controls muted poster="./resources/img/11.jpg">
						<source src="./resources/video/dance_practice.mp4" type="video/mp4">
					</video>
				</div>
				</div>
				
				<!-- 게시물 list -->
				<div class="content-section-title Re" id="changetext"
					style="-delay: .3s; padding: inherit;">
					<img src="./resources/img/posting.png"
						style="width: 20px; margin-right: 15px;">Emergency Record
				</div>
				<div id='test'></div>
				<div id="Accordion_wrap" class="Re" style="background-color: var(- -theme-bg-color); magin: 2px;">
				

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
							<img src="./resources/img/home.png"
								style="width: 20px; margin: 15px;">Emergency Response Manual
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
				
				<div class="content-section-title Em1">
					<div class="content-section">
						<div class="content-section-title Em1">
							<img src="./resources/img/home.png"style="width: 20px; margin: 15px;">
							Emergency Response Manual
						</div>

<div class="carousel">
	<div class="btn btn-back hidden">
		<i class="fas fa-arrow-left"></i>
		<i class="fas fa-chevron-left left-indicator"></i>
	</div>
	<div class="viewbox">
		<div class="track">
			<div class="slide active">
				<img class="images" src="https://source.unsplash.com/random/800x800">
			</div>
			<div class="slide">
				<img class="images" src="https://source.unsplash.com/aaIN3y2zcMQ/800x801">
			</div>
			<div class="slide">
				<img class="images" src="https://source.unsplash.com/random/800x802">
			</div>
			<div class="slide">
				<img class="images" src="https://source.unsplash.com/random/800x803">
			</div>
			<div class="slide active">
				<img class="images" src="https://source.unsplash.com/random/800x804">
			</div>
			<div class="slide">
				<img class="images" src="https://source.unsplash.com/eADQs40WywY/800x805">
			</div>
			<div class="slide">
				<img class="images" src="https://source.unsplash.com/random/800x806">
			</div>
			<div class="slide">
				<img class="images" src="https://source.unsplash.com/ArYjvKHVByg/800x807">
			</div>
		</div>
	</div>
	<div class="btn btn-next">
		<i class="fas fa-arrow-right"></i>
		<i class="fas fa-chevron-right right-indicator"></i>
	</div>
	<div class="nav-indicator">
		<div class="dot active"></div>
		<div class="dot"></div>
		<div class="dot"></div>
		<div class="dot"></div>
		<div class="dot"></div>
		<div class="dot"></div>
		<div class="dot"></div>
		<div class="dot"></div>
	</div>


</div>
				</div>
			</div>
	</div>



</body>
<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TimelineMax.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js'></script>
<script  src="./resources/JS/manual.js"></script>
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