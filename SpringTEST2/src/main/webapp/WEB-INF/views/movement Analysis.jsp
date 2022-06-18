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

function loadheatmap(){
   $("#heatimg").attr("src",'./resources/img/loading.gif');
   var first_time = $("#first_time").val()
   first_time = first_time.replace(":", "")+"00";   
   var last_time = $("#last_time").val() 
   last_time = last_time.replace(":", "")+"00";   
   console.log(first_time, last_time)
      $.ajax({
      url : "http://172.30.1.5:8082/heatmap",
      type : "POST",
      data : {"first_time":first_time, "last_time":last_time},
      success:setTimeout(loadphoto,10000)
   })
}
 
function loadphoto(){
   $("#heatimg").attr("src",'http://172.30.1.5:8082/static/img/diff-overlay2.jpg?'+Date.now());
}
</script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<link rel='stylesheet' href='https://vjs.zencdn.net/5-unsafe/video-js.css'/>
<link rel='stylesheet' type="text/css" href='./resources/CSS/Main.css'/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

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
         <div class="left-side">
            <div class="side-wrapper">
               <div class="side-title" id="Analysis">Analysis</div>
            </div>
            <div class="side-wrapper">
               <div class="side-title" id="visual">visualization</div>
            </div>
         </div>

         <div class="main-container">

            <!-- 분석 -->
				<div class="content-section An">
					<div class="content-section-title An">
						<i class="bi bi-border-right"></i> Analysis
					</div>

					<div class="form-group">

							    <label style="font-family: 'Poppins', sans-serif;padding: 10px;font-weight: bold;"> Time setting</label>
						<ul style="color: currentColor; font-weight: 500; height: 70px;">
							<li>
							&nbsp;&nbsp; start time&nbsp;<input type="time"
								name="first_time" class="form-control" id="first_time">

								&nbsp;&nbsp; end time&nbsp;<input type="time" name="last_time"
								class="form-control" id="last_time"> &nbsp;&nbsp;
								<button class="btn btn-light An" id="viewresult"
									style="width: fit-content;" onclick="loadheatmap()">
									조회</button>
							</li>
						</ul>
						<div class="loader"></div>
									<img id="heatimg" style="position: relative;left: 47%;margin-top: 30px;" src="#">
								</div>
							</div>
							
						</div>
					</div>
				</div>


				<!-- 결과 -->
            <div class="content-section result">
            <div class="content-section-title result"><i class="bi bi-border-right"></i> visualization</div>
            <div class="content-wrapper result"></div>
         <div class="content-wrapper result"></div>
         </div>
         </div>
         </div>
               

            

</body>
<script src="./resources/JS/Main.js"></script>
<script type="text/javascript">
$('#Analysis').click(function() {
   $(".An").show();
    $(".result").hide();
    $("#heatimg").hide();
})

$('#visual').click(function() {
    $(".An").hide();
    $(".result").show();
    $("#heatimg").hide();
})

</script>
</html>