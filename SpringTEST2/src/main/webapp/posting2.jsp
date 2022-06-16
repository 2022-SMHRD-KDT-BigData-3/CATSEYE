<%@page import="kr.book.entity.detection"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Main</title>


<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"/>
<link rel='stylesheet' href='https://vjs.zencdn.net/5-unsafe/video-js.css'/>
<link rel='stylesheet' type="text/css" href='./resources/CSS/Main.css'/>
<link rel='stylesheet' type="text/css" href='./resources/CSS/posting.css'/>
<link rel='stylesheet' type="text/css" href='./resources/CSS/acordian.css' />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<script type="text/javascript">
$(document).ready(()=>{ /* 람다식 */
	loadposting()
});
function loadposting(){
	$.ajax({
		url : "loadposting.do",
		type : "GET",
		dataType : "json",
		success : resultHtml,
		error : function(){alert("error");  }
	});
}
function resultHtml(data){
	$.each(data, function(index, obj){
		var view+="<tr>"
	    	view+="<td>"+obj.idx+"</td>"
	    	view+="<td id='t"+obj.idx+"'><a href='javascript:cview("+obj.idx+")'>"+obj.title+"</a></td>"
	    	view+="<td>"+obj.writer+"</td>"
	    	view+="<td>"+obj.indate+"</td>"
	    	view+="<td>"+obj.count+"</td>"
	    	view+="</tr>"
		view+="<tr id='cv"+obj.idx+"' style='display:none'>"
	    	view+="<td>내용</td>"
	    	view+="<td colspan='4'>"
	    	view+="<textarea rows='7' class='form-control' readonly id='ta"+obj.idx+"'>"+obj.content+"</textarea>"
	    	view+="<br>"
	    	if("${mvo.userId}"==obj.userId){
	    		view+="<span id='u"+obj.idx+"'><button class='btn btn-light' onclick='goForm("+obj.idx+")'>수정</button></span>&nbsp"
	    		view+="<button class='btn btn-light' onclick='goDel("+obj.idx+")'>삭제</button>"
	    	}else{
	    		view+="<span id='u"+obj.idx+"'><button disabled class='btn btn-light' onclick='goForm("+obj.idx+")'>수정</button></span>&nbsp"
	    		view+="<button disabled class='btn btn-light' onclick='goDel("+obj.idx+")'>삭제</button>"
	    		
	    	}
	    	view+="</td>"
	    	view+="</tr>"
		
	});
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
				<a class="menu-link" href="Main.jsp"><img src="./resources/img/home.png" style="width: 20px; margin:2px;">Home</a>
				<a class="menu-link is-active" href="Analysis.do" ><img src="./resources/img/Analysis.png" style="width: 20px; margin:2px;">movementAnalysis</a> 
				<a class="menu-link" href="posting.do"><img src="./resources/img/posting.png" style="width: 20px; margin:2px;">Emergency Record</a>
				<a class="menu-link" href="logout.jsp"><img src="./resources/img/signout.png" style="width: 20px; margin:2px;">SignOut</a>
			</div>

		</div>

			<!-- 검색창 없앰 -->
			<div class="search-bar"></div>
			<div class="header-profile"></div>
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
				<div class="content-section">
				<div class="content-section-title"><img src="./resources/img/posting.png"
						style="width: 20px; margin-right: 15px;">History CCTV</div>
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
				<div id="Accordion_wrap" class="Re" style="background-color: var(- -theme-bg-color); magin: 2px;">
				
					<div class="que">
						<span>TITLE</span>
					</div>
					<div class="anw">
								<div class="form-group">
									<label for="datetime" style="font-family: 'Poppins', sans-serif;">날짜</label>
									<input type="datetime-local" name="datetime" class="form-control" id="datetime" name="datetime">
								</div>
								<div class="form-group">
									<label for="content">내용</label>
									<textarea class="form-control" rows="5" id="content" 
									name="content" placeholder="내용 작성"></textarea>
								</div>
								<button type="submit" class="btn btn-light">수정</button>
								<button type="submit" class="btn btn-light">삭제</button>
					</div>
				</div>

				<!-- 응급처치 메뉴얼 -->
				<div class="content-section-title Em"
					style="-delay: .3s; padding: inherit;">
					<img src="./resources/img/posting.png"
						style="width: 20px; margin-right: 15px;">Safety manual</div>
				<div id="Em" style="background-color: var(- -theme-bg-color); magin: 2px;">
					<div class="apps-card">
						<div class="app-card Em">
							<span> After Effects</span>
							<div class="app-card__subtext">Industry Standart motion
								graphics & visual effects</div>
							<div class="app-card-buttons">
								<button class="content-button status-button open">Open</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>



</body>
<script src="./resources/JS/posting.js"></script>
<script src="./resources/JS/Main.js"></script>
<script src="./resources/JS/acordian.js"></script>
<script type="text/javascript">

$('#Record').click(function() {
    $(".Em").show();
    $(".Re").show();
})

$('#before').click(function() {
	$("#changetext").text("Before");
    $(".Em").hide();
    $(".Re").show();
})

$('#after').click(function() {
	/* document.getElementById("#changetext").textContent="after"; */
	$("#changetext").text("After");
    $(".Em").hide();
    $(".Re").show();
})

$('#Safety').click(function() {
    $(".Em").show();
    $(".Re").hide();
})
</script>
</html>