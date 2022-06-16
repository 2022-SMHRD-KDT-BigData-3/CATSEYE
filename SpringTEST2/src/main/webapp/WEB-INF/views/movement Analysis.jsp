<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Main</title>


<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<script type="text/javascript">

function ff(){
	  var f="<a href='javascript:cview(1)'>2022-06-05 21:00 ~ 21:01</a>"
	  f+="<a href='javascript:cview(2)'>2022-06-05 21:01 ~ 21:02</a>"
	  f+="<a href='javascript:cview(3)'>2022-06-05 21:02 ~ 21:03</a>"
	  f+="<a href='javascript:cview(4)'>2022-06-05 21:03 ~ 21:04</a>"
	  f+="<a href='javascript:cview(5)'>2022-06-05 21:04 ~ 21:05</a>"
		  $("#f").html(f)
}
function cview(idx){
	  var view='<video controls width="250">'
		  view+='<source src="dance_practice.mp4" type="video/mp4"></video>'
		$("#showvideo").html(view)
		$("#f").css("display","none")
}

function goUpdate(idx){
	// title, content
	var title = $("#nt"+idx).val()
	var content = $("#ta"+idx).val()
	$.ajax({
		url : "bUpdate.do",
		
		type : "POST",
		data : {"idx":idx, "title":title, "content":content},
		success : loadList,
		error : function(){alert("error")}
	})
}
</script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<link rel='stylesheet' href='https://vjs.zencdn.net/5-unsafe/video-js.css'/>
<link rel='stylesheet' type="text/css" href='./resources/CSS/Main.css'/>

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
			<div class="header-menu" style="font-weight: 600;">
				<a class="menu-link" href="Main.jsp"><!-- <img src="./resources/img/home.png" style="width: 20px; margin:2px;"> -->Home</a>
				<a class="menu-link is-active" href="Analysis.do" >MovementAnalysis</a> 
				<a class="menu-link" href="posting.do">Emergency Record</a>
				<a class="menu-link" href="logout.jsp">SignOut</a>
			</div>

		</div>


		<div class="wrapper">
			<div class="left-side">
				<div class="side-wrapper">
					<div class="side-title" id="Analysis">Analysis</div>
				</div>
				<div class="side-wrapper">
					<div class="side-title" id="visual">visualization</div>
				</div>
			</div>

			<div class="main-container">

				<!-- 분석 -->
				<div class="content-section An">
					<div class="content-section-title An">
						<img src="./resources/img/Analysis.png"
							style="width: 20px; margin-right: 11px;">Analysis
					</div>
					<!--           	<select class="normal name" name="MBR_SHOP">
  	<option value='' selected>-- select time --</option>
  	<option value='1' id="1">2022-06-05 21:00 ~ 21:01</option>
  	<option value='2' id="2">2022-06-05 21:01 ~ 21:02</option>
  	<option value='3' id="3">2022-06-05 21:02 ~ 21:03</option>
  	<option value='4' id="1">2022-06-05 21:03 ~ 21:04</option>
  	<option value='5' id="1">2022-06-05 21:04 ~ 21:05</option>
  	</select> -->

					<div class="form-group content-wrapper">
						<div style="text-align: center; align-items: center;">
							<label for="date"
								style="font-family: 'Poppins', sans-serif; margin: 15px 0 15px 0; font-weight: bold;">날짜
								설정</label> <input
								style="width: 30%; text-align: center; position: relative; left: 36%;"
								type="date" name="date" class="form-control" id="date"
								name="date"> <label for="first_time"
								style="font-family: 'Poppins', sans-serif; margin: 15px 0 15px 0; font-weight: bold;">시간
								설정</label> <input
								style="width: 25%; text-align: center; position: relative; left: 223px;"
								type="time" name="first_time" class="form-control"
								id="first_time"> <label for="last-time"></label> <input
								style="width: 25%; text-align: center; position: relative; left: 479px; bottom: 61px;"
								type="time" name="last_time" class="form-control" id="last_time">

							<div style="align-self: center; position: relative; bottom: 35px;">
								<button class="btn btn-light An" id="viewresult"
									style="width: fit-content;">결과 보기</button>
								<img id="heatimg" src="./resources/img/heatmap.jpg"
									style="display: none; padding: 20px; position: relative; top: 20px;">
							</div>
						</div>

					</div>
				
				</div>
				
					<!-- 결과 -->
            <div class="content-section result">
            <div class="content-section-title result"><img src="./resources/img/Analysis.png" style="width: 20px; margin-right:11px;">visualization</div>
            <div class="content-wrapper result"></div>
			<div class="content-wrapper result"></div>
			</div>
			</div>
			</div>

		</div>

            

</body>
<script src="./resources/JS/Main.js"></script>
<script type="text/javascript">
$('#Analysis').click(function() {
	$(".An").show();
    $(".result").hide();
    $("#heatimg").hide();
})

$('#visual').click(function() {
    $(".An").hide();
    $(".result").show();
    $("#heatimg").hide();
})
$('#viewresult').click(function() {
    $("#result1").show();
    $("#heatimg").show();
})

</script>
</html>