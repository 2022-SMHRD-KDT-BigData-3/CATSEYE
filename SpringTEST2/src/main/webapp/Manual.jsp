<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manual here</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css'>
  <link rel='stylesheet' type="text/css" href='./resources/CSS/./manual.css' />
</head>
<body>
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
<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TimelineMax.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js'></script>
<script  src="./resources/JS/manual.js"></script>

</body>
</html>