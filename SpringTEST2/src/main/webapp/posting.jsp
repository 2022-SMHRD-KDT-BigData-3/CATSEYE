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

</head>
<body style="--theme-bg-color:rgb(255 255 255 / 31%); --theme-color: #3c3a3a;--inactive-color: #333333; --button-inactive: #3c3a3a;--border-color: rgb(255 255 255 / 35%);--hover-menu-bg:rgba(255 255 255 / 35%); --scrollbar-bg: rgb(255 253 253 / 57%);--content-title-color:--theme-color;">
	
	<div class="app">
		<div class="header">
			<div class="menu-circle"></div>
			<div class="header-menu">
				<a class="menu-link is-active" href="#">movement Analysis</a>
				<a class="menu-link" href="posting.jsp">Posting</a> 
				<a class="menu-link notify" href="#">Settings</a>
			</div>
			
				<!-- 검색창 없앰 -->
			<div class="search-bar"></div>
			<div class="header-profile"></div>
		</div>
		
		<div class="wrapper">
			<div class="left-side">
				<div class="side-wrapper">
					<div class="side-title">Apps</div>
					<div class="side-menu">
						<a href="#"> <svg viewBox="0 0 512 512">
       <g xmlns="http://www.w3.org/2000/svg" fill="currentColor">
        <path
									d="M0 0h128v128H0zm0 0M192 0h128v128H192zm0 0M384 0h128v128H384zm0 0M0 192h128v128H0zm0 0"
									data-original="#bfc9d1" />
       </g>
       <path xmlns="http://www.w3.org/2000/svg"
									d="M192 192h128v128H192zm0 0" fill="currentColor"
									data-original="#82b1ff" />
       <path xmlns="http://www.w3.org/2000/svg"
									d="M384 192h128v128H384zm0 0M0 384h128v128H0zm0 0M192 384h128v128H192zm0 0M384 384h128v128H384zm0 0"
									fill="currentColor" data-original="#bfc9d1" />
      </svg> All Apps
						</a> <a href="#"> <svg viewBox="0 0 488.932 488.932"
								fill="currentColor">
       <path
									d="M243.158 61.361v-57.6c0-3.2 4-4.9 6.7-2.9l118.4 87c2 1.5 2 4.4 0 5.9l-118.4 87c-2.7 2-6.7.2-6.7-2.9v-57.5c-87.8 1.4-158.1 76-152.1 165.4 5.1 76.8 67.7 139.1 144.5 144 81.4 5.2 150.6-53 163-129.9 2.3-14.3 14.7-24.7 29.2-24.7 17.9 0 31.8 15.9 29 33.5-17.4 109.7-118.5 192-235.7 178.9-98-11-176.7-89.4-187.8-187.4-14.7-128.2 84.9-237.4 209.9-238.8z" />
      </svg> 제목 <span class="notification-number updates">3</span>
						</a>
					</div>
				</div>
				<div class="side-wrapper">
					<div class="side-title">Categories</div>
					<div class="side-menu">
						<a href="#"> 게시물 내용 </a> <a href="#"> <svg
								viewBox="0 0 512 512" fill="currentColor">
       <circle cx="295.099" cy="327.254" r="110.96"
									transform="rotate(-45 295.062 327.332)" />
       <path
									d="M471.854 338.281V163.146H296.72v41.169a123.1 123.1 0 01121.339 122.939c0 3.717-.176 7.393-.5 11.027zM172.14 327.254a123.16 123.16 0 01100.59-120.915L195.082 73.786 40.146 338.281H172.64c-.325-3.634-.5-7.31-.5-11.027z" />
      </svg> Graphic Design
						</a> <a href="#"> <svg viewBox="0 0 58 58" fill="currentColor">
       <path
									d="M57 6H1a1 1 0 00-1 1v44a1 1 0 001 1h56a1 1 0 001-1V7a1 1 0 00-1-1zM10 50H2v-9h8v9zm0-11H2v-9h8v9zm0-11H2v-9h8v9zm0-11H2V8h8v9zm26.537 12.844l-11 7a1.007 1.007 0 01-1.018.033A1.001 1.001 0 0124 36V22a1.001 1.001 0 011.538-.844l11 7a1.003 1.003 0 01-.001 1.688zM56 50h-8v-9h8v9zm0-11h-8v-9h8v9zm0-11h-8v-9h8v9zm0-11h-8V8h8v9z" />
      </svg> Video
						</a> <a href="#"> <svg viewBox="0 0 512 512" fill="currentColor">
       <path
									d="M499.377 46.402c-8.014-8.006-18.662-12.485-29.985-12.613a41.13 41.13 0 00-.496-.003c-11.142 0-21.698 4.229-29.771 11.945L198.872 275.458c25.716 6.555 47.683 23.057 62.044 47.196a113.544 113.544 0 0110.453 23.179L500.06 106.661C507.759 98.604 512 88.031 512 76.89c0-11.507-4.478-22.33-12.623-30.488zM176.588 302.344a86.035 86.035 0 00-3.626-.076c-20.273 0-40.381 7.05-56.784 18.851-19.772 14.225-27.656 34.656-42.174 53.27C55.8 397.728 27.795 409.14 0 416.923c16.187 42.781 76.32 60.297 115.752 61.24 1.416.034 2.839.051 4.273.051 44.646 0 97.233-16.594 118.755-60.522 23.628-48.224-5.496-112.975-62.192-115.348z" />
      </svg> Illustrations
						</a> <a href="#"> UI/UX </a> <a href="#"> <svg
								viewBox="0 0 512 512" fill="currentColor">
       <path
									d="M0 331v112.295a14.996 14.996 0 007.559 13.023L106 512V391L0 331zM136 391v121l105-60V331zM271 331v121l105 60V391zM406 391v121l98.441-55.682A14.995 14.995 0 00512 443.296V331l-106 60zM391 241l-115.754 57.876L391 365.026l116.754-66.15zM262.709 1.583a15.006 15.006 0 00-13.418 0L140.246 57.876 256 124.026l115.754-66.151L262.709 1.583zM136 90v124.955l105 52.5V150zM121 241L4.246 298.876 121 365.026l115.754-66.15zM271 150v117.455l105-52.5V90z" />
      </svg> 3D/AR
						</a>
					</div>
				</div>
				<div class="side-wrapper">
					<div class="side-title">Fonts</div>
					<div class="side-menu">
						<a href="#"> <svg viewBox="0 0 332 332" fill="currentColor">
       <path
									d="M282.341 8.283C275.765 2.705 266.211 0 253.103 0c-18.951 0-36.359 5.634-51.756 16.743-14.972 10.794-29.274 28.637-42.482 53.028-4.358 7.993-7.428 11.041-8.973 12.179h-26.255c-10.84 0-19.626 8.786-19.626 19.626 0 8.989 6.077 16.486 14.323 18.809l-.05.165h.589c1.531.385 3.109.651 4.757.651h18.833l-32.688 128.001c-7.208 27.848-10.323 37.782-11.666 41.24-1.445 3.711-3.266 7.062-5.542 10.135-.42-5.39-2.637-10.143-6.508-13.854-4.264-4.079-10.109-6.136-17.364-6.136-8.227 0-15.08 2.433-20.37 7.229-5.416 4.93-8.283 11.193-8.283 18.134 0 5.157 1.701 12.712 9.828 19.348 6.139 4.97 14.845 7.382 26.621 7.382 17.096 0 32.541-4.568 45.891-13.577 13.112-8.845 24.612-22.489 34.166-40.522 9.391-17.678 18.696-45.124 28.427-83.9l18.598-73.479h30.016c10.841 0 19.625-8.785 19.625-19.625s-8.784-19.626-19.625-19.626h-19.628c6.34-21.62 14.175-37.948 23.443-48.578 2.284-2.695 5.246-5.692 8.412-7.678-1.543 3.392-2.325 6.767-2.325 10.055 0 6.164 2.409 11.714 6.909 16.03 4.484 4.336 10.167 6.54 16.888 6.54 7.085 0 13.373-2.667 18.17-7.716 4.76-5.005 7.185-11.633 7.185-19.703.017-9.079-3.554-16.899-10.302-22.618z" />
      </svg> Manage Fonts
						</a>
					</div>
				</div>
				<div class="side-wrapper">
					<div class="side-title">Resource Links</div>
					<div class="side-menu"></div>
				</div>
			</div>
			
			<div class="main-container">
				<div class="main-header">
					<a class="menu-link-main" href="Main.jsp">HOME</a>
					<div class="header-menu">
						<a class="main-header-link is-active" href="#">Before</a> 
						<a class="main-header-link" href="#">After</a>
						<a class="main-header-link" href="gomanual()">Safety manual</a>
					</div>
				</div>


	<!-- 게시물 list -->
				<div class="content-section">
					<div class="content-section-title">Posting</div>
					<ul>
						<li class="adobe-product">
							<div class="products">Category</div> <span class="status"> <span
								class="status-circle"></span> Title
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
							<div class="products">Category</div> <span class="status"> <span
								class="status-circle"></span> Title
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
							<div class="products">Category</div> <span class="status"> <span
								class="status-circle"></span> Title
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
					</ul>
				</div>
				
				<!-- 응급처치 메뉴얼  : Safety management manual 클릭시 보이게 -->
				<div class="content-section">
					<div class="content-section-title">Emergency Response Manual</div>
					<div class="apps-card">
						<div class="app-card">
							<span>  After Effects</span>
							<div class="app-card__subtext">Industry Standart motion
								graphics & visual effects</div>
							<div class="app-card-buttons">
								<button class="content-button status-button open">Open</button>
						</div>
						</div>
						<div class="app-card">
							<span>  After Effects</span>
							<div class="app-card__subtext">Industry Standart motion
								graphics & visual effects</div>
							<div class="app-card-buttons">
								<button class="content-button status-button open">Open</button>
						</div>
						</div>
						<div class="app-card">
							<span>  After Effects</span>
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
<script src="./resources/JS/Main.js"></script>
</html>
