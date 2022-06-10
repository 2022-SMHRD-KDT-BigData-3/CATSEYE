<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600;900&display=swap" rel="stylesheet"><link rel="stylesheet" href="./style.css">
<style type="text/css">
* {
  box-sizing: border-box;
}

:root {
  --gold: #ffb338;
  --light-shadow: #77571d;
  --dark-shadow: #3e2904;
}
body {
  margin: 0;
}
.wrapper {
  background: radial-gradient(#272727, #1b1b1b);
  display: grid;
  grid-template-areas: 'overlap';
  place-content: center;
  text-transform: uppercase;
  height: 100vh;
}
.wrapper > div {
  background-clip: text;  
  -webkit-background-clip: text;
  color: #363833;
  font-family: 'Poppins', sans-serif;
  font-weight: 900;
  font-size: clamp( 3em, 18vw, 15rem);
  grid-area: overlap;
  letter-spacing: 1px;
  -webkit-text-stroke: 4px transparent;
}
div.bg {
  background-image: repeating-linear-gradient( 105deg, 
    var(--gold) 0% , 
    var(--dark-shadow) 5%,
    var(--gold) 12%);
  color: transparent;
  filter: drop-shadow(5px 15px 15px black);
  transform: scaleY(1.05);
  transform-origin: top;
}
div.fg{
  background-image: repeating-linear-gradient( 5deg,  
    var(--gold) 0% , 
    var(--light-shadow) 23%, 
    var(--gold) 31%);
  color: #1e2127;
  transform: scale(1);
}
</style>
</head>
<body>
<!-- partial:index.partial.html -->
<div class="wrapper">
  <div class="bg" onclick="location.href='login.jsp'">CATSEYE</div>
  <div class="fg" onclick="location.href='login.jsp'">CATSEYE</div>
</div>
</body>
</html>