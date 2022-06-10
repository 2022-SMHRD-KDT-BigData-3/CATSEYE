<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

input[id*="popup"]{
display: none; 
}
input[id*="popup"]+label+div{
opacity: 0;
visibility: hidden;
transition:all 1s;
}

input[id*="popup"]:checked+label+div{
/* display: none;	 */
opacity: 1;
visibility:visible;
}

input[id*="popup"]+label{
 display:inline-block;
 padding:20px;
 background:#ffcd41;
 color:#fff;
}

input[id*="popup"]+label+div{
position: fixed;
top:0;
left:0;
width:100%;
height:100%;
z-index: 100;
}

input[id*="popup"] + label + div > div {
position: absolute;
top:50%;
left:50%;
transform:translate(-50%, -50%);
width:500px;
height: 300px;
background: #fff;
z-index: 2;
}

input[id*="popup"] + label + div > div > label {
position: absolute;
top:0%;
left:0%;
transform:translate(40%, -40%);
padding:20px;
background: #dd5347;
border-radius:100%;
z-index: 1;
}

input[id*="popup"] + label + div > label {
	position: absolute;
	top:0%;
	left:0%;
	width:100%;
	height:100%;
	background:rgba(0,0,0,.9);
	z-index: 1;
}
</style>
</head>
<body>
<input type="checkbox" id="popup">
	<label for="popup">View</label> <!-- button -->
	<div>
		<div>
			<label for="popup">X</label>
		</div>
		<label for="popup">로그인 성공</label>
	</div>

</body>
</html>