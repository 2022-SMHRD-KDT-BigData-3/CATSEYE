<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Main</title>

<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css" />
<link rel='stylesheet'
	href='https://vjs.zencdn.net/5-unsafe/video-js.css' />
<link rel='stylesheet' type="text/css" href='./resources/CSS/Main.css' />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<link rel='stylesheet' type="text/css"
	href='./resources/CSS/acordian.css' />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css"
	href='./reources/CSS/MemberRecord.css' />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>
</head>
<body
	style="-theme-bg-color: rgb(255 255 255/ 31%); - -theme-color: #3c3a3a; - -inactive-color: #333333; - -button-inactive: #3c3a3a; - -search-bg: rgb(255 255 255/ 31%); - -dropdown-bg: lightgray 56%; - -overlay-bg: rgb(255 255 255/ 30%); - -dropdown-hover: rgb(255 255 255/ 100%); - -border-color: rgb(255 255 255/ 35%); - -popup-bg: rgb(255, 255, 255); - -hover-menu-bg: rgba(255 255 255/ 35%); - -scrollbar-bg: rgb(255 253 253/ 57%); - -content-title-color: --theme-color;">


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

		<div class="wrapper">
			<div class="left-side" style="display: none;">
				<div class="side-wrapper">
					<div class="side-wrapper"></div>
				</div>
			</div>

			<div class="main-container">
				<!-- video -->
				<div class="content-section">
					<div class="content-section-title">
						<i class="bi bi-border-left"></i> Tracking Model
					</div>
				</div>			
	<div>
						<img
							style="width: 43%;height: 69%;border-radius: 5px;margin: 20px;"
							src="./resources/img/11.jpg">
					<div class="container" style="color: white;">
								<div class="row">
									<div class="col-md-6 mb-3" style="line-height: 50px;position: relative;max-block-size: fit-content;left: 50%;bottom: 392px;padding: 10px;">
										<div>
											<label>이름</label> <input type="text" class="form-control">
										</div>
										<div>
											<label>사용한 운동기구</label> <input type="text"
												class="form-control">
										</div>
										<div>
											<label>운동기구 사용시간</label> <input type="text"
												class="form-control">
										</div>
									</div>
								</div>

							</div>
</div>
						</div>
					</div>
				</div>

		<div class="overlay-app"></div>

</body>
<script src="./resources/JS/Main.js"></script>
<script src="./resources/JS/acordian.js"></script>
</html>