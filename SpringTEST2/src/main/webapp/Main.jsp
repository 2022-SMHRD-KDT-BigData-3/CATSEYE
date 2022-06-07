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
      <div class="header" >
         <div class="menu-circle"></div>
         <div class="header-menu">
            <a class="menu-link is-active" href="#">movement Analysis</a>
            <a class="menu-link" href="posting.jsp">Posting</a> 
            <a class="menu-link notify" href="#">Settings</a>
         </div>
         
            <!-- 검색창 -->
         <div class="search-bar">
            <!-- <input type="text" placeholder="Search"> -->
         </div>
         
         <div class="header-profile">
            <!-- <div class="notification">
               <span class="notification-number">3</span>
               <svg viewBox="0 0 24 24" fill="currentColor" stroke="currentColor"
                  stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                  class="feather feather-bell"></svg>
            </div> -->
            
            
               
         </div>
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
                  <a href="#"> 게시물 내용 </a> <a href="#"></div>
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
                  <source src="./resources/video/dance_practice.mp4" type="video/mp4">
               </video>
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
            
            <!-- 응급처치 메뉴얼 -->
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
</html>