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
<link rel='stylesheet' type="text/css" href='./resources/CSS/acordian.css' />
</head>
<body style="--theme-bg-color: rgb(255 255 255/ 31%); --theme-color: #3c3a3a; --inactive-color: #333333; --button-inactive: #3c3a3a; --search-bg: rgb(255 255 255/ 31%); --dropdown-bg: lightgray 56%; --overlay-bg: rgb(255 255 255/ 30%); --dropdown-hover: rgb(255 255 255/ 100%); --border-color: rgb(255 255 255/ 35%); --popup-bg: rgb(255, 255, 255); --hover-menu-bg: rgba(255 255 255/ 35%); --scrollbar-bg: rgb(255 253 253/ 57%); --content-title-color: --theme-color;">

	<!-- <div><img src="./resources/img/02.png" onclick="location.href='login.jsp'" style="position: fixed; width: 2%; bottom: 96%; left: 79%;"></div> -->

	<div class="app">
		<div class="header">
			<div class="menu-circle"></div>
			<div class="header-menu">
				<a class="menu-link is-active" href="movement Analysis.jsp" style="
    text-decoration-line: none;
    font-size: medium;
">movement
					Analysis</a> <a class="menu-link" href="posting.jsp">Posting</a>
				<!-- <a class="menu-link notify" href="#">Settings</a> -->
				<!-- <div>
					<img src="./resources/img/01.png"
						style="width: 3%; position: fixed; left: 91%; bottom: 795px;">
				</div>
				임시 로그인화면으로  이동
				<div>
					<img src="./resources/img/03.png"
						onclick="location.href='login.jsp'"
						style="position: fixed; width: 3%; bottom: 94%; left: 95%;">
				</div> -->
			</div>



			<!-- 검색창 -->
			<div class="search-bar">
				<!-- <input type="text" placeholder="Search"> -->
			</div>

			<div class="header-profile"></div>
		</div>
		<div class="wrapper">
			  <div class="left-side">
   <div class="side-wrapper">
    <div class="side-title">Profile</div>
    <div class="side-menu">
     <img class="profile-img" src="https://images.unsplash.com/photo-1600353068440-6361ef3a86e8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80" alt="">
    <button class="content-button status-button open" id="edit" style="margin:8px;">edit</button>
    </div>
   </div>
   <div class="side-wrapper">
    <div class="side-title" onclick="location.href='Main.jsp'">HOME</div>
   </div>
   <div class="side-wrapper">
    <div class="side-title"onclick="location.href='intro.jsp'">LOGOUT</div>

   </div>
  </div>
			<div class="main-container">
				<div class="main-header">
					<a class="menu-link-main" href="Main.jsp">HOME</a>
					<div class="header-menu"></div>
				</div>


				<!-- video -->
				<div class="content-wrapper">
					<!-- autoplay : 자동재생, loop : 자동재생, preload: 무엇을 로드 (auto, metadata, none)  -->

					<video class="video" controls muted poster="./resources/img/11.jpg">
						<source src="./resources/video/dance_practice.mp4"
							type="video/mp4">
					</video>
				</div>


				<!-- 게시물 list -->
				<div class="content-section">
					<div class="content-section-title">Posting</div>
					<div id="Accordion_wrap">
     <div class="que">
      <span>This is first question.</span>
     </div>
     <div class="anw">
      <span>This is hihi answer.</span>
     </div>
      <div class="que">
      <span>This is second question.</span>
     </div>
     <div class="anw">
      <span>This is second answer.</span>
     </div>
      <div class="que">
      <span>This is third question.</span>
     </div>
     <div class="anw">
      <form action="#" method="post">
									<div class="form-group">
										<label for="title">제목</label>
										<input type="text" class="form-control" id="title"
											placeholder="제목 입력(4-100)" name="title" maxlength="100"
											required="required" pattern=".{4,100}">
									</div>
									
									<div class="form-group">
										<label for="writer">작성자</label> <input type="text"
											class="form-control" id="writer" placeholder="작성자(2자-10자)"
											name="writer">
									</div>
									
									<div class="form-group">
										<label for="writer"
											style="font-family: 'Poppins', sans-serif;">날짜</label> <input
											type="datetime-local" name="datetime" class="form-control"
											id="datetime" name="datetime">
									</div>

									<div class="form-group">
										<label for="file">첨부파일</label>
										<button class="form-control" id="file">불러오기</button>
									</div>

									<div class="form-group">
										<label for="content">내용</label>
										<textarea class="form-control" rows="5" id="content"
											name="content" placeholder="내용 작성"></textarea>
									</div>

									<button type="submit" class="btn btn-default" style="background:#fff;">등록</button>
								</form>
     </div>
</div>
					<ul>
						<li class="adobe-product">
							<div class="products">Category</div> <span class="status">
								<span class="status-circle"></span> Title
						</span>
							<div class="button-wrapper">
								<button class="content-button status-button open">Open</button>
								<div class="menu">
									<button class="dropdown">
										<ul>
											<li><a href="#">Writing</a></li>
											<li><a href="#">Update</a></li>
											<li><a href="#">Delete</a></li>
										</ul>
									</button>
								</div>
							</div>
						</li>
						<li class="adobe-product">
							<div class="products">Category</div> <span class="status">
								<span class="status-circle"></span> Title
						</span>
							<div class="button-wrapper">
								<button class="content-button status-button open">Open</button>
								<div class="menu">
									<button class="dropdown">
										<ul>
											<li><a href="#">Writing</a></li>
											<li><a href="#">Update</a></li>
											<li><a href="#">Delete</a></li>
										</ul>
									</button>
								</div>
							</div>
						</li>
						<li class="adobe-product">
							<div class="products">Category</div> <span class="status">
								<span class="status-circle"></span> Title
						</span>
							<div class="button-wrapper">
								<button class="content-button status-button open write"">Open</button>
								<div class="menu">
									<button class="dropdown">
										<ul>
											<li><a href="#">Writing</a></li>
											<li><a href="#">Update</a></li>
											<li><a href="#">Delete</a></li>
										</ul>
									</button>
								</div>
							</div>
						</li>
						<li>
						<div class="container" id="myDIV" style="padding: 20px;">
								<form action="#" method="post">
									<div class="form-group">
										<label for="title">제목</label>
										<input type="text" class="form-control" id="title"
											placeholder="제목 입력(4-100)" name="title" maxlength="100"
											required="required" pattern=".{4,100}">
									</div>
									
									<div class="form-group">
										<label for="writer">작성자</label> <input type="text"
											class="form-control" id="writer" placeholder="작성자(2자-10자)"
											name="writer">
									</div>
									
									<div class="form-group">
										<label for="writer"
											style="font-family: 'Poppins', sans-serif;">날짜</label> <input
											type="datetime-local" name="datetime" class="form-control"
											id="datetime" name="datetime">
									</div>

									<div class="form-group">
										<label for="file">첨부파일</label>
										<button class="form-control" id="file">불러오기</button>
									</div>

									<div class="form-group">
										<label for="content">내용</label>
										<textarea class="form-control" rows="5" id="content"
											name="content" placeholder="내용 작성"></textarea>
									</div>

									<button type="submit" class="btn btn-default" style="background:#fff;">등록</button>
								</form>
							</div>
							</li>
					</ul>
				</div>

				<!-- 응급처치 메뉴얼 -->
				<div class="content-section">
					<div class="content-section-title">Emergency Response Manual</div>
					<div class="apps-card">
						<div class="app-card">
							<span> After Effects</span>
							<div class="app-card__subtext">Industry Standart motion
								graphics & visual effects</div>
							<div class="app-card-buttons">
								<button class="content-button status-button open">Open</button>
							</div>
						</div>
						<div class="app-card">
							<span> After Effects</span>
							<div class="app-card__subtext">Industry Standart motion
								graphics & visual effects</div>
							<div class="app-card-buttons">
								<button class="content-button status-button open">Open</button>
							</div>
						</div>
						<div class="app-card">
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
		<div class="overlay-app"></div>
</body>
<script src="./resources/JS/Main.js"></script>
<script src="./resources/JS/acordian.js"></script>
</html>