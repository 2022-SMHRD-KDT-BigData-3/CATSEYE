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
      <div class="header" >
         <div class="menu-circle"></div>
         <div class="header-menu">
            <a class="menu-link is-active" href="movement Analysis.jsp">movement Analysis</a>
            <a class="menu-link" href="posting.jsp">Posting</a> 
            <a class="menu-link notify" href="#">Settings</a>
         </div>
         
         <div class="search-bar"></div>
         <div class="header-profile"> </div>
      
      </div>
      <div class="wrapper">
         <div class="left-side">
            <div class="side-wrapper">
               <div class="side-title"></div>
               <div class="side-menu"></div>
            </div>
            <div class="side-wrapper">
               <div class="side-title"></div>
               <div class="side-menu"></div>
            </div>
         </div>
         <div class="main-container">
            <div class="main-header">
               <a class="menu-link-main" href="Main.jsp">HOME</a>
               <div class="header-menu">
               <a class="main-header-link is-active" href="#">Analysis</a>
               <a class="main-header-link is-active" href="#">visualization</a> 
            </div>
         </div>
            <!-- 분석 -->
            <div class="content-section">
            <div class="content-section-title">Analysis</div>
          	<select class="normal name" name="MBR_SHOP">
  	<option value='' selected>-- select time --</option>
  	<option value='1' id="1">2022-06-05 21:00 ~ 21:01</option>
  	<option value='2' id="2">2022-06-05 21:01 ~ 21:02</option>
  	<option value='3' id="3">2022-06-05 21:02 ~ 21:03</option>
  	<option value='4' id="1">2022-06-05 21:03 ~ 21:04</option>
  	<option value='5' id="1">2022-06-05 21:04 ~ 21:05</option>
  	</select>

              	<button onclick='ff()'>영상 보기</button>
            <div class="content-wrapper" id='f'>
            <!-- 시간 보일곳 -->
            </div>
            <div class="content-wrapper" id='showvideo'>
            <!-- 영상 보일곳 -->
            </div>
			<div class="content-wrapper">contents</div>
			</div>
			
			<!-- 결과 -->
            <div class="content-section">
            <div class="content-section-title">visualization</div>
            <div class="content-wrapper">contents</div>
			<div class="content-wrapper">contents</div>
			</div>
              
            

</body>
<script src="./resources/JS/Main.js"></script>
</html>