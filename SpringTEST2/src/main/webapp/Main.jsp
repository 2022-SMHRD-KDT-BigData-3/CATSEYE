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
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" />
<link rel='stylesheet' href='https://vjs.zencdn.net/5-unsafe/video-js.css' />
<link rel='stylesheet' type="text/css" href='./resources/CSS/Main.css' />
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<link rel='stylesheet' type="text/css" href='./resources/CSS/acordian.css' />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

</head>
<body style="--theme-bg-color: rgb(255 255 255/ 31%); --theme-color: #3c3a3a; --inactive-color: #333333; --button-inactive: #3c3a3a; --search-bg: rgb(255 255 255/ 31%); --dropdown-bg: lightgray 56%; --overlay-bg: rgb(255 255 255/ 30%); --dropdown-hover: rgb(255 255 255/ 100%); --border-color: rgb(255 255 255/ 35%); --popup-bg: rgb(255, 255, 255); --hover-menu-bg: rgba(255 255 255/ 35%); --scrollbar-bg: rgb(255 253 253/ 57%); --content-title-color: --theme-color;">

	<!-- <div><img src="./resources/img/02.png" onclick="location.href='login.jsp'" style="position: fixed; width: 2%; bottom: 96%; left: 79%;"></div> -->
	<p id="logo">
		<!-- <img src="./resources/img/arrows-to-eye-solid.svg"> -->
		CATSEYE
	<P>

	<div class="app">
		<div class="header">
			<div class="header-menu">
				<a class="menu-link" href="Main.jsp">
				<i class="bi bi-border-outer"></i>  Home</a>
				<a class="menu-link is-active" href="#">
				<i class="bi bi-border-left"></i>  Member Record</a> 
				<a class="menu-link is-active" href="Analysis.do">
				<i class="bi bi-border-right"></i>  Movement Record</a> 
				<a class="menu-link" href="posting.do">
				<i class="bi bi-border-inner"></i>  Emergency Record</a>
				<a class="menu-link" href="logout.jsp">
				<i class="bi bi-border"></i>  SignOut</a>
			</div>  

		</div>

		<div class="wrapper" >
			<div class="left-side" style="display:none;">
				<div class="side-wrapper">
				<div class="side-wrapper"></div>
				</div>
			</div>
			
			<div class="main-container">
				<!-- video -->
				<div class="content-section">
				<div class="content-section-title"><i class="bi bi-border-outer"></i>   Real-time Monitoring</div>
				<div class="content-wrapper">
					<!-- autoplay : 자동재생, loop : 자동재생, preload: 무엇을 로드 (auto, metadata, none)  -->

					<video class="video" controls muted poster="./resources/img/11.jpg">
						<source src="./resources/video/dance_practice.mp4" type="video/mp4">
					</video>
					
					<div style="align-self: center;">
					<input type="submit" value="변경" name='change' onclick='change()'>
					</div> 
							<button type="button" class="btn btn-light"
								style="position: relative; right: 29px; margin: 15px;font-weight: 500;">
								Original</button>
							<button type="button" class="btn btn-light"
								style="position: relative; right: 26px;font-weight: 500;">Yolov5</button>
						</div> 
							<button type="button" class="btn btn-light"
								style="position: relative; right: 29px; margin: 15px;font-weight: 500;">
								Original</button>
							<button type="button" class="btn btn-light"
								style="position: relative; right: 26px;font-weight: 500;">Yolov5</button>
						</div> 
							<button type="button" class="btn btn-light"
								style="position: relative; right: 29px; margin: 15px;font-weight: 500;">Original</button>
							<button type="button" class="btn btn-light" style="position: relative; right: 26px;font-weight: 500;">Yolov5</button>
						</div> 
				</div>
				</div>


			
						</div>
					</div>
					
			<div class="overlay-app"></div></body>
<script src="./resources/JS/Main.js"></script>
<script src="./resources/JS/acordian.js"></script>
</html>