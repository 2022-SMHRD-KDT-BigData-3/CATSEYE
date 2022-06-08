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
<link rel='stylesheet' type="text/css" href='./resources/CSS/posting.css'/>

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
         <div class="menu-circle"></div>
         <div class="header-menu">
            <a class="menu-link is-active" href="movement Analysis.jsp">movement Analysis</a>
            <a class="menu-link" href="posting.jsp">Posting</a> 
            <a class="menu-link notify" href="#">Settings</a>
         </div>
         
            <!-- 검색창 없앰 -->
         <div class="search-bar"></div>
         <div class="header-profile"></div>
      </div>
      
      <div class="wrapper">
         <div class="left-side">
            <div class="side-wrapper"></div>
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

   <!-- 유튜브처럼 history  -->
   <div class="small-header anim" style="--delay: .3s;padding: inherit;">HISTORY CCTV</div>
   <div class="videos">
    <div class="video anim" style="--delay: .4s">
     <div class="video-time">8 min</div>
     <div class="video-wrapper">
      <video muted="">
       <source src="./resources/video/RacingBike.mp4" type="video/mp4">
      </video>
      <div class="author-img__wrapper video-author">
      </div>
     </div>
     <section style="background-color: LIGHTGRAY;">
     <div class="video-by">title</div>
     <div class="video-name">Contents</div>
     <div class="video-view">Conetents2<span class="seperate video-seperate"></span></div>
	 </section>    
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
<script src="./resources/JS/posting.js"></script>
<script src="./resources/JS/Main.js"></script>
</html>