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
   
    <!-- 마이페이지 따로 side 메뉴로 뺄예정 -->
    <!-- <div><img src="./resources/img/02.png" onclick="location.href='login.jsp'" style="position: fixed; width: 2%; bottom: 96%; left: 79%;"></div> -->
   
   <div class="app">
      <div class="header" >
         <div class="menu-circle"></div>
         <div class="header-menu">
            <a class="menu-link is-active" href="movement Analysis.jsp">movement Analysis</a>
            <a class="menu-link" href="posting.jsp">Posting</a> 
            <!-- <a class="menu-link notify" href="#">Settings</a> -->           
           <!-- <div><img src="./resources/img/01.png" style="width: 3%;position: fixed;left: 91%;bottom: 795px;"></div>
           <div><img src="./resources/img/03.png" onclick="location.href='login.jsp'" style="position: fixed;width: 3%;bottom: 94%;left: 95%;"></div> -->
         </div>
         
         
         
            <!-- ê²ìì°½ -->
         <div class="search-bar">
            <!-- <input type="text" placeholder="Search"> -->
         </div>
         
         <div class="header-profile"></div>
      </div>
      <div class="wrapper">
         <div class="left-side">
            <div class="side-wrapper">
               <div class="side-title"></div>
               <div class="side-menu"></div>
            </div>
            <div class="side-wrapper">
               <div class="side-title"></div>
               <div class="side-menu"></div>
            </div>
         </div>
         <div class="main-container">
            <div class="main-header">
               <a class="menu-link-main" href="Main.jsp">HOME</a>
               <div class="header-menu"></div>
            </div>
         
         
            <!-- video -->
            <div class="content-wrapper">

               <video class="video" controls muted poster="./resources/img/11.jpg">
                  <source src="./resources/video/dance_practice.mp4" type="video/mp4">
               </video>
            </div>


   <!-- ê²ìë¬¼ list -->
   <section id="wrapper">
            <div class="content-section" style="margin: 0; font-family: 'Montserrat', sans-serif;">
               <div class="content-section-title">Posting</div>
               <ul class="accordion">
                  <li class="adobe-product que">  
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
                        class="status-circle "></span> Title
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
                        class="status-circle "></span> Title
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
                   <form action="#" method="post">
                  <input type="text" placeholder="게시물 작성 ">
                 </form>
                  </li>
               </ul>
            </div>
           </section>
           
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
<script>
function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>
<script src="./resources/JS/Main.js"></script>
</html>