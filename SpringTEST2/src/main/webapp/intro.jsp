<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>CSS</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Charis+SIL:ital,wght@0,400;0,700;1,400&family=Joan&display=swap');

body {
	padding: 0px;
	margin: 0px;
	position: relative;
    height: 100vh;
    overflow: hidden;
    line-height: 1.42857143;
    font-family: 'Joan', serif;
}

.jb-box {
	width: 100%;
	height: 500px;
	margin: 0px auto;
	position: relative;
}

video {
	position: fixed;
	right: 0;
	bottom: 0;
	min-width: 100%;
	min-height: 100%;
	width: auto;
	height: auto;
	z-index: -100;
	background-size: cover;
	display: inline-block;
    vertical-align: baseline;
    object-fit: cover;
}


#logo {
    letter-spacing: 2px;
    color: white;
    font-size: 20PX;
    margin-left: 44px;
    font-weight: 800;
    z-index: 0;
    text-align: end;
    margin-right: 30px;
}

#w1 {
    box-sizing: border-box;
    overflow-wrap: break-word;
    margin: 20px 0 0;
    color: cornflowerblue;
    text-shadow: 1px 1px 0px white;
    font-size: 40px;
    text-transform: uppercase;
    font-weight: 600;
    letter-spacing: 2px!important;
    max-width: 650px;
    margin-bottom: 0!important;
    line-height: 45px!important;
}

#w2 {
    line-height: 1.42857143;
    box-sizing: border-box;
    color: #fff!important;
    font-size: 42px;
    display: block;
    margin-bottom: 15px;
    font-style: italic;
    font-weight: 300;
    text-transform: none;
}

#w3 {
    box-sizing: border-box;
    overflow-wrap: break-word;
    -webkit-font-smoothing: auto;
    font-size: 20px!important;
    line-height: 25px;
    font-weight: 300;
    margin: 0 0 10px;
    color: #fff!important;
}

a.solid-gold-button {
    line-height: 1.42857143;
    box-sizing: border-box;
    text-decoration: none;
    position: relative;
    background-color: cornflowerblue;
    border: 2px solid aliceblue;
    color: #fff;
    margin-top: 5px;
    padding: 9px 18px;
    max-width: 355px;
    width: 100%;
    text-transform: uppercase;
    font-size: 14px;
    letter-spacing: 1px;
    text-align: center;
    float: left;
    display: block;
    transition: all .2s ease-in-out;
    font-family: 'Charis SIL', serif;
   }
   
   .am{    
    font-size: 14px;
    line-height: 1.42857143;
    box-sizing: border-box;
    position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
    float: left;
    width: 75%;
    }
    
    .text{
    opacity: 0;
    animation: fadeInText 3s 2s ease-out forwards;
    }
    
    @keyframes fadeInText {
    100% {
        opacity: 1;
    }
}

</style>
</head>
<body>

	<p id="logo">
		<!-- <img src="./resources/img/arrows-to-eye-solid.svg"> -->
		CATSEYE
	<P>
	<div class="am text" style="position: relative;top: 311px;left: 135px;">
			<h1 id="w1">Digital Analytics Management</h1>
			<span id="w2">With Proven Results</span>
			<p id="w3">Enables efficient operation and management of business establishments</p>
			<a class="solid-gold-button">Signin and use the website</a>

	</div>


	<div class="jb-box">
		<video muted autoplay loop>
			<source src="./resources/video/mosaic_put.mp4" type="video/mp4">
		</video>
	</div>
</body>
</html>