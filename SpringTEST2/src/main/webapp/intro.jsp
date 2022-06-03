<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>intro</title>

<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Amatic+SC);

body {
	font-family: 'Amatic SC', cursive;
    background-image: url(./resources/09.jpg);
    background-size: cover;
    background-repeat: no-repeat;
    color: #ffff;
	/* background-color: #111111;
	color: #cccccc; */
}

p {
	font-size: 3em;
	display: table-cell; 
	vertical-align: middle;
	text-align: center;
	opacity: 0;

}

.text{
	top: 0; 
	left: 0; 
	width: 100%; 
	height: 100%;
	position: fixed; 
	display: table;
}

.t1{
	animation: t-animation 6s;
}

.t2{
	animation: t-animation 6s;
	animation-delay: 6s;
}

.end{
	animation: end-animation 2s;
	animation-delay: 12s;
	animation-fill-mode: forwards; 
}

.flicker{
	animation: flicker 10s infinite;
}

@keyframes t-animation {
	0% {opacity: 0;}
	30% {opacity: 1;}
	70% {opacity: 1;}
	100% {opacity: 0;}
}

@keyframes end-animation {
	0% {opacity: 0;}
	100% {opacity: 1;}
}

@keyframes flicker {
	40.1% {left:0px;top:0px;}
	40.2% {left:10px;top:8px;}
	40.3% {left:0px;top:0px;}

	90.1% {left:0px;top:0px;}
	90.2% {left:-5px;top:3px;}
	90.3% {left:0px;top:0px;}
}
</style>

</head>
<body>
<div>
<a href="index.html" class="text flicker">
<div class="text flicker"><p class="t1"></p></div>
	<div class="text flicker"><p class="t2">CATSEYE</p></div>
	<div class="text flicker"><p class="end">CATSEYE</p></div>
</a>
</div>



</body>
</html>