<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://vjs.zencdn.net/5-unsafe/video-js.css'>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<style type="text/css">
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");
* {
  outline: none;
  box-sizing: border-box;
}

/*  video 관련 css 추가 */

  .video {  
    max-width: 50%;
    display: block;
    margin: 1% auto;
    border-radius: 15px;
    display: inline-block;
    background-size: 150%;
  }


:root {
  --theme-bg-color: rgba(16 18 27 / 40%);
  --border-color: rgba(113 119 144 / 25%);
  --theme-color: #f9fafb;
  --inactive-color: rgb(113 119 144 / 78%);
  --body-font: "Poppins", sans-serif;
  --hover-menu-bg: rgba(12 15 25 / 30%);
  --content-title-color: #999ba5;
  --content-bg: rgb(146 151 179 / 13%);
  --button-inactive: rgb(249 250 251 / 55%);
  --dropdown-bg: #21242d;
  --dropdown-hover: rgb(42 46 60);
  --popup-bg: rgb(22 25 37);
  --search-bg: #14162b;
  --overlay-bg: rgba(36, 39, 59, 0.3);
  --scrollbar-bg: rgb(1 2 3 / 40%);
}

.light-mode {
  --theme-bg-color: rgb(255 255 255 / 31%);
  --theme-color: #3c3a3a;
  --inactive-color: #333333;
  --button-inactive: #3c3a3a;
  --search-bg: rgb(255 255 255 / 31%);
  --dropdown-bg: #f7f7f7;
  --overlay-bg: rgb(255 255 255 / 30%);
  --dropdown-hover: rgb(236 236 236);
  --border-color: rgb(255 255 255 / 35%);
  --popup-bg: rgb(255 255 255);
  --hover-menu-bg: rgba(255 255 255 / 35%);
  --scrollbar-bg: rgb(255 253 253 / 57%);
  --content-title-color: --theme-color;
}

html {
  box-sizing: border-box;
  -webkit-font-smoothing: antialiased;
}

body {
  font-family: var(--body-font);
  background-image: url(./resources/09.jpg);
  background-size: cover;
  background-position: center;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  padding: 2em;
  width: 100%;
  height: 100vh;
  
}
@media screen and (max-width: 480px) {
  body {
    padding: 0.8em;
  }
}

img {
  max-width: 100%;
}

.dark-light {
  position: fixed;
  bottom: 50px;
  right: 30px;
  background-color: var(--dropdown-bg);
  box-shadow: -1px 3px 8px -1px rgba(0, 0, 0, 0.2);
  padding: 8px;
  border-radius: 50%;
  z-index: 3;
  cursor: pointer;
}
.dark-light svg {
  width: 24px;
  flex-shrink: 0;
  fill: #ffce45;
  stroke: #ffce45;
  transition: 0.5s;
}

.light-mode .dark-light svg {
  fill: transparent;
  stroke: var(--theme-color);
}
.light-mode .profile-img {
  border: 2px solid var(--theme-bg-color);
}
.light-mode .content-section ul {
  background-color: var(--theme-bg-color);
}
.light-mode .pop-up__title {
  border-color: var(--theme-color);
}
.light-mode .dropdown.is-active ul {
  background-color: rgba(255, 255, 255, 0.94);
}

body.light-mode:before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100vh;
  background: linear-gradient(180deg, rgba(255, 255, 255, 0.72) 0%, rgba(255, 255, 255, 0.45) 100%);
  -webkit-backdrop-filter: saturate(3);
          backdrop-filter: saturate(3);
}

.app {
  background-color: var(--theme-bg-color);
  max-width: 1250px;
  max-height: 860px;
  height: 90vh;
  display: flex;
  flex-direction: column;
  overflow: hidden;
  width: 100%;
  border-radius: 14px;
  backdrop-filter: blur(20px);
  -webkit-backdrop-filter: blur(20px);
  font-size: 15px;
  font-weight: 500;
}

.header {
  display: flex;
  align-items: center;
  flex-shrink: 0;
  height: 58px;
  width: 100%;
  border-bottom: 1px solid var(--border-color);
  padding: 0 30px;
  white-space: nowrap;
}
@media screen and (max-width: 480px) {
  .header {
    padding: 0 16px;
  }
}
.header-menu {
  display: flex;
  align-items: center;
}
.header-menu a {
  padding: 20px 30px;
  text-decoration: none;
  color: var(--inactive-color);
  border-bottom: 2px solid transparent;
  transition: 0.3s;
}
@media screen and (max-width: 610px) {
  .header-menu a:not(.main-header-link) {
    display: none;
  }
}

.notify {
  position: relative;
}
.notify:before {
  content: "";
  position: absolute;
  background-color: #3a6df0;
  width: 6px;
  height: 6px;
  border-radius: 50%;
  right: 20px;
  top: 16px;
}
@media screen and (max-width: 1055px) {
  .notify {
    display: none;
  }
}

.menu-circle {
  width: 15px;
  height: 15px;
  background-color: #f96057;
  border-radius: 50%;
  box-shadow: 24px 0 0 0 #f8ce52, 48px 0 0 0 #5fcf65;
  margin-right: 195px;
  flex-shrink: 0;
}
@media screen and (max-width: 945px) {
  .menu-circle {
    display: none;
  }
}

.search-bar {
  height: 40px;
  display: flex;
  width: 100%;
  max-width: 400px;
  padding-left: 16px;
  border-radius: 4px;
  position: fixed;
  right: 3%;
  bottom: 85%;
}
.search-bar input {
  width: 100%;
  height: 100%;
  border: none;
  background-color: var(--search-bg);
  border-radius: 4px;
  font-family: var(--body-font);
  font-size: 15px;
  font-weight: 500;
  padding: 0 20px 0 40px;
  box-shadow: 0 0 0 2px rgba(134, 140, 160, 0.02);
  background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 56.966 56.966' fill='%23717790c7'%3e%3cpath d='M55.146 51.887L41.588 37.786A22.926 22.926 0 0046.984 23c0-12.682-10.318-23-23-23s-23 10.318-23 23 10.318 23 23 23c4.761 0 9.298-1.436 13.177-4.162l13.661 14.208c.571.593 1.339.92 2.162.92.779 0 1.518-.297 2.079-.837a3.004 3.004 0 00.083-4.242zM23.984 6c9.374 0 17 7.626 17 17s-7.626 17-17 17-17-7.626-17-17 7.626-17 17-17z'/%3e%3c/svg%3e");
  background-size: 14px;
  background-repeat: no-repeat;
  background-position: 16px 48%;
  color: var(--theme-color);
}
.search-bar input::-moz-placeholder {
  font-family: var(--body-font);
  color: var(--inactive-color);
  font-size: 15px;
  font-weight: 500;
}
.search-bar input:-ms-input-placeholder {
  font-family: var(--body-font);
  color: var(--inactive-color);
  font-size: 15px;
  font-weight: 500;
}
.search-bar input::placeholder {
  font-family: var(--body-font);
  color: var(--inactive-color);
  font-size: 15px;
  font-weight: 500;
}

.header-profile {
  display: flex;
  align-items: center;
  padding: 0 16px 0 40px;
  margin-left: auto;
  flex-shrink: 0;
}
.header-profile svg {
  width: 22px;
  color: #f9fafb;
  flex-shrink: 0;
}

.notification {
  position: relative;
}
.notification-number {
  position: absolute;
  background-color: #3a6df0;
  width: 16px;
  height: 16px;
  border-radius: 50%;
  font-size: 10px;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #fff;
  right: -6px;
  top: -6px;
}
.notification + svg {
  margin-left: 22px;
}
@media screen and (max-width: 945px) {
  .notification + svg {
    display: none;
  }
}

.profile-img {
  width: 32px;
  height: 32px;
  border-radius: 50%;
  -o-object-fit: cover;
     object-fit: cover;
  border: 2px solid var(--theme-color);
  margin-left: 22px;
}

.wide .header-menu,
.wide .header-profile {
  display: none;
}
.wide .search-bar {
  max-width: 600px;
  margin: auto;
  transition: 0.4s;
  box-shadow: 0 0 0 1px var(--border-color);
  padding-left: 0;
}
.wide .menu-circle {
  margin-right: 0;
}

.wrapper {
  display: flex;
  flex-grow: 1;
  overflow: hidden;
}

.left-side {
  flex-basis: 240px;
  border-right: 1px solid var(--border-color);
  padding: 26px;
  overflow: auto;
  flex-shrink: 0;
  display:none;
}
@media screen and (max-width: 945px) {
  .left-side {
    display: none;
  }
}

.side-wrapper + .side-wrapper {
  margin-top: 20px;
}

.side-title {
  color: var(--inactive-color);
  margin-bottom: 14px;
}

.side-menu {
  display: flex;
  flex-direction: column;
  white-space: nowrap;
}
.side-menu a {
  text-decoration: none;
  color: var(--theme-color);
  display: flex;
  align-items: center;
  font-weight: 400;
  padding: 10px;
  font-size: 14px;
  border-radius: 6px;
  transition: 0.3s;
}
.side-menu a:hover {
  background-color: var(--hover-menu-bg);
}
.side-menu svg {
  width: 16px;
  margin-right: 8px;
}

.updates {
  position: relative;
  top: 0;
  right: 0;
  margin-left: auto;
  width: 18px;
  height: 18px;
  font-size: 11px;
}

.main-header {
  display: flex;
  align-items: center;
  border-bottom: 1px solid var(--border-color);
  height: 58px;
  flex-shrink: 0;
}
.main-header .header-menu {
  margin-left: 150px;
}
@media screen and (max-width: 1055px) {
  .main-header .header-menu {
    margin: auto;
  }
}
.main-header .header-menu a {
  padding: 20px 24px;
}

.main-container {
  display: flex;
  flex-direction: column;
  flex-grow: 1;
  padding: 2%;
  overflow: scroll;
}

.menu-link-main {
  text-decoration: none;
  color: var(--theme-color);
  padding: 0 30px;
}
@media screen and (max-width: 1055px) {
  .menu-link-main {
    display: none;
  }
}

.content-wrapper {
  display: flex;
  flex-direction: column;
  color: var(--theme-color);
  padding: 1%;
  height: 100%;
  overflow: visible;
  background-color: var(--theme-bg-color);
}
@media screen and (max-width: 510px) {
  .content-wrapper {
    padding: 20px;
  }
}
.content-wrapper-header {
  display: flex;
  align-items: center;
  width: 100%;
  justify-content: space-between;
  background-image: url("https://www.transparenttextures.com/patterns/cubes.png"), linear-gradient(to right top, #cf4af3, #e73bd7, #f631bc, #fd31a2, #ff3a8b, #ff4b78, #ff5e68, #ff705c, #ff8c51, #ffaa49, #ffc848, #ffe652);
  border-radius: 14px;
  padding: 20px 40px;
}
@media screen and (max-width: 415px) {
  .content-wrapper-header {
    padding: 20px;
  }
}
.content-wrapper.overlay {
  pointer-events: none;
  transition: 0.3s;
  background-color: var(--overlay-bg);
}

.overlay-app {
  width: 100%;
  height: 100%;
  position: fixed;
  left: 0;
  top: 0;
  pointer-events: all;
  background-color: rgba(36, 39, 59, 0.8);
  opacity: 0;
  visibility: hidden;
  transition: 0.3s;
}
.overlay-app.is-active {
  visibility: visible;
  opacity: 1;
}

.img-content {
  font-weight: 500;
  font-size: 17px;
  display: flex;
  align-items: center;
  margin: 0;
}
.img-content svg {
  width: 28px;
  margin-right: 14px;
}

.content-text {
  font-weight: 400;
  font-size: 14px;
  margin-top: 16px;
  line-height: 1.7em;
  color: #ebecec;
  display: -webkit-box;
  -webkit-line-clamp: 4;
  -webkit-box-orient: vertical;
  overflow: hidden;
  text-overflow: ellipsis;
}

.content-wrapper-context {
  max-width: 350px;
}

.content-button {
  background-color: #3a6df0;
  border: none;
  padding: 8px 26px;
  color: #fff;
  border-radius: 20px;
  margin-top: 16px;
  cursor: pointer;
  transition: 0.3s;
  white-space: nowrap;
}

button:hover {
  transform: scale(1.02);
  background-color: #3a6df0;
}

.content-wrapper-img {
  width: 186px;
  -o-object-fit: cover;
     object-fit: cover;
  margin-top: -25px;
  -o-object-position: center;
     object-position: center;
}
@media screen and (max-width: 570px) {
  .content-wrapper-img {
    width: 110px;
  }
}

.content-section {
  margin-top: 30px;
  display: flex;
  flex-direction: column;
}
.content-section-title {
  color: var(--content-title-color);
  margin-bottom: 14px;
}
.content-section ul {
  display: flex;
  flex-direction: column;
  width: 100%;
  height: 100%;
  justify-content: space-around;
  background-color: var(--content-bg);
  padding-left: 0;
  margin: 0;
  border-radius: 14px;
  border: 1px solid var(--theme-bg-color);
  cursor: pointer;
}
.content-section ul li {
  list-style: none;
  padding: 10px 18px;
  display: flex;
  align-items: center;
  font-size: 16px;
  width: 100%;
  height: 100%;
  white-space: nowrap;
  transition: 0.3s;
}
.content-section ul li:hover {
  background-color: var(--theme-bg-color);
}
.content-section ul li:hover:first-child {
  border-radius: 13px 13px 0 0;
}
.content-section ul li:hover:last-child {
  border-radius: 0 0 13px 13px;
}
.content-section ul li + li {
  border-top: 1px solid var(--border-color);
}
.content-section ul svg {
  width: 28px;
  border-radius: 6px;
  margin-right: 16px;
  flex-shrink: 0;
}

.products {
  display: flex;
  align-items: center;
  width: 150px;
}
@media screen and (max-width: 480px) {
  .products {
    width: 120px;
  }
}

.status {
  margin-left: auto;
  width: 140px;
  font-size: 15px;
  position: relative;
}
@media screen and (max-width: 700px) {
  .status {
    display: none;
  }
}
.status-circle {
  width: 6px;
  height: 6px;
  background-color: #396df0;
  position: absolute;
  border-radius: 50%;
  top: 4px;
  left: -20px;
}
.status-circle.green {
  background-color: #3bf083;
}
.status-button {
  font-size: 15px;
  margin-top: 0;
  padding: 6px 24px;
}
@media screen and (max-width: 390px) {
  .status-button {
    padding: 6px 14px;
  }
}
.status-button.open {
  background: none;
  color: var(--button-inactive);
  border: 1px solid var(--button-inactive);
}
.status-button:not(.open):hover {
  color: #fff;
  border-color: #fff;
}

.content-button:not(.open):hover {
  background: #1e59f1;
}

.menu {
  width: 5px;
  height: 5px;
  background-color: var(--button-inactive);
  border-radius: 50%;
  box-shadow: 7px 0 0 0 var(--button-inactive), 14px 0 0 0 var(--button-inactive);
  margin: 0 12px;
}

@media screen and (max-width: 415px) {
  .adobe-product .menu {
    display: none;
  }
}
.dropdown {
  position: relative;
  height: 53px;
  width: 40px;
  top: -24px;
  display: flex;
  left: -5px;
  background: transparent;
  border: none;
  cursor: pointer;
}
.dropdown ul {
  position: absolute;
  background: var(--dropdown-bg);
  height: 110px;
  width: 120px;
  right: 0;
  top: 20px;
  pointer-events: none;
  opacity: 0;
  transform: translatey(10px);
  transition: all 0.4s ease;
}
.dropdown ul li a {
  text-decoration: none;
  color: var(--theme-color);
  font-size: 12px;
}

.dropdown.is-active ul {
  opacity: 1;
  pointer-events: all;
  transform: translatey(25px);
}
.dropdown.is-active ul li:hover {
  background-color: var(--dropdown-hover);
}

.button-wrapper {
  display: flex;
  align-items: center;
  justify-content: flex-end;
  width: 187px;
  margin-left: auto;
}
@media screen and (max-width: 480px) {
  .button-wrapper {
    width: auto;
  }
}

.pop-up {
  position: absolute;
  padding: 30px 40px;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  overflow-y: auto;
  box-shadow: 0px 6px 30px rgba(0, 0, 0, 0.4);
  transition: all 0.3s;
  z-index: 10;
  background-color: var(--popup-bg);
  width: 500px;
  visibility: hidden;
  opacity: 0;
  border-radius: 6px;
  display: flex;
  flex-direction: column;
  white-space: normal;
}
@media screen and (max-width: 570px) {
  .pop-up {
    width: 100%;
  }
}
.pop-up.visible {
  visibility: visible;
  opacity: 1;
}
.pop-up__title {
  padding-bottom: 20px;
  border-bottom: 1px solid var(--border-color);
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.pop-up__subtitle {
  white-space: normal;
  margin: 20px 0;
  font-size: 14px;
  font-weight: 400;
  line-height: 1.8em;
}
.pop-up__subtitle a {
  color: var(--theme-color);
}

.content-button-wrapper .content-button.status-button.open.close {
  width: auto;
}

.content-section .close {
  margin-right: 0;
  width: 24px;
}

.checkbox-wrapper {
  display: flex;
  align-items: center;
  font-size: 14px;
  font-weight: 400;
}
.checkbox-wrapper + .checkbox-wrapper {
  margin: 20px 0 40px;
}

.checkbox {
  display: none;
}

.checkbox + label {
  display: flex;
  align-items: center;
}
.checkbox + label:before {
  content: "";
  margin-right: 10px;
  width: 15px;
  height: 15px;
  border: 1px solid var(--theme-color);
  border-radius: 4px;
  cursor: pointer;
  flex-shrink: 0;
}

.checkbox:checked + label:before {
  background-color: #3a6df0;
  border-color: #3a6df0;
  background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='%23fff' stroke-width='3' stroke-linecap='round' stroke-linejoin='round' class='feather feather-check'%3e%3cpath d='M20 6L9 17l-5-5'/%3e%3c/svg%3e");
  background-position: 50%;
  background-size: 12px;
  background-repeat: no-repeat;
}

.content-button-wrapper {
  margin-top: auto;
  margin-left: auto;
}
.content-button-wrapper .open {
  margin-right: 8px;
}

.apps-card {
  display: flex;
  align-items: center;
  flex-wrap: wrap;
  width: calc(100% + 20px);
}

.app-card {
  display: flex;
  flex-direction: column;
  width: calc(33.3% - 20px);
  font-size: 16px;
  background-color: var(--content-bg);
  border-radius: 14px;
  border: 1px solid var(--theme-bg-color);
  padding: 20px;
  cursor: pointer;
  transition: 0.3s ease;
}
.app-card:hover {
  transform: scale(1.02);
  background-color: var(--theme-bg-color);
}

.app-card + .app-card {
  margin-left: 20px;
}
.app-card span {
  display: flex;
  align-items: center;
}
.app-card__subtext {
  font-size: 14px;
  font-weight: 400;
  line-height: 1.6em;
  margin-top: 20px;
  border-bottom: 1px solid var(--border-color);
  padding-bottom: 20px;
}
.app-card-buttons {
  display: flex;
  align-items: center;
  margin-left: auto;
  margin-top: 16px;
}
@media screen and (max-width: 1110px) {
  .app-card {
    width: calc(50% - 20px);
  }
  .app-card:last-child {
    margin-top: 20px;
    margin-left: 0px;
  }
}
@media screen and (max-width: 565px) {
  .app-card {
    width: calc(100% - 20px);
    margin-top: 20px;
  }
  .app-card + .app-card {
    margin-left: 0;
  }
}

::-webkit-scrollbar {
  width: 6px;
  border-radius: 10px;
}

::-webkit-scrollbar-thumb {
  background: var(--scrollbar-bg);
  border-radius: 10px;
  
  
  
}
</style>
</head>
<body>
	<!-- partial:index.partial.html -->
	<div class="dark-light">
		<svg viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5"
			fill="none" stroke-linecap="round" stroke-linejoin="round">
     <path d="M21 12.79A9 9 0 1111.21 3 7 7 0 0021 12.79z" /></svg>
	</div>
	<div class="app">
		<div class="header">
			<div class="menu-circle"></div>
			<div class="header-menu">
				<a class="menu-link is-active" href="#">movement Analysis</a> <a
					class="menu-link notify" href="#">member management</a> <a
					class="menu-link" href="#">Posting</a> <a class="menu-link notify"
					href="#">Settings</a>
			</div>
			
			<div class="header-profile">
				<!-- <div class="notification">
					<span class="notification-number">3</span>
					<svg viewBox="0 0 24 24" fill="currentColor" stroke="currentColor"
						stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
						class="feather feather-bell"></svg>
				</div> -->
				
				<!-- 날짜,시간 선택 -->
				<input type="text" name="datetimes" />
				
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
					<div class="side-menu">
						<a href="#"> <svg viewBox="0 0 512 512" fill="currentColor">
       <path
									d="M467 0H45C20.186 0 0 20.186 0 45v422c0 24.814 20.186 45 45 45h422c24.814 0 45-20.186 45-45V45c0-24.814-20.186-45-45-45zM181 241c41.353 0 75 33.647 75 75s-33.647 75-75 75-75-33.647-75-75c0-8.291 6.709-15 15-15s15 6.709 15 15c0 24.814 20.186 45 45 45s45-20.186 45-45-20.186-45-45-45c-41.353 0-75-33.647-75-75s33.647-75 75-75 75 33.647 75 75c0 8.291-6.709 15-15 15s-15-6.709-15-15c0-24.814-20.186-45-45-45s-45 20.186-45 45 20.186 45 45 45zm180 120h30c8.291 0 15 6.709 15 15s-6.709 15-15 15h-30c-24.814 0-45-20.186-45-45V211h-15c-8.291 0-15-6.709-15-15s6.709-15 15-15h15v-45c0-8.291 6.709-15 15-15s15 6.709 15 15v45h45c8.291 0 15 6.709 15 15s-6.709 15-15 15h-45v135c0 8.276 6.724 15 15 15z" />
      </svg> Stock
						</a> <a href="#"> <svg viewBox="0 0 511.441 511.441"
								fill="currentColor">
       <path
									d="M255.721 347.484L90.22 266.751v106.57l165.51 73.503 165.509-73.503V266.742z" />
       <path
									d="M511.441 189.361L255.721 64.617 0 189.361l255.721 124.744 195.522-95.378v111.032h30V204.092z" />
      </svg> Tutorials
						</a> <a href="#"> <svg viewBox="0 0 512 512" fill="currentColor">
       <path
									d="M196 151h-75v90h75c24.814 0 45-20.186 45-45s-20.186-45-45-45z" />
       <path
									d="M467 0H45C20.186 0 0 20.186 0 45v422c0 24.814 20.186 45 45 45h422c24.814 0 45-20.186 45-45V45c0-24.814-20.186-45-45-45zM196 271h-75v105c0 8.291-6.709 15-15 15s-15-6.709-15-15V136c0-8.291 6.709-15 15-15h90c41.353 0 75 33.647 75 75s-33.647 75-75 75zm210-60c8.291 0 15 6.709 15 15s-6.709 15-15 15h-45v135c0 8.291-6.709 15-15 15s-15-6.709-15-15V241h-15c-8.291 0-15-6.709-15-15s6.709-15 15-15h15v-45c0-24.814 20.186-45 45-45h30c8.291 0 15 6.709 15 15s-6.709 15-15 15h-30c-8.276 0-15 6.724-15 15v45h45z" />
      </svg> Portfolio
						</a> <a href="#"> <svg viewBox="0 0 512 512" fill="currentColor">
       <path
									d="M181 181h-60v60h60c16.54 0 30-13.46 30-30s-13.46-30-30-30zm0 0M181 271h-60v60h60c16.54 0 30-13.46 30-30s-13.46-30-30-30zm0 0M346 241c-19.555 0-36.238 12.54-42.438 30h84.875c-6.199-17.46-22.882-30-42.437-30zm0 0" />
       <path
									d="M436 0H75C33.648 0 0 33.648 0 75v362c0 41.352 33.648 75 75 75h361c41.352 0 76-33.648 76-75V75c0-41.352-34.648-75-76-75zM286 151h120v30H286zm-45 150c0 33.09-26.91 60-60 60H91V151h90c33.09 0 60 26.91 60 60 0 18.008-8.133 33.996-20.73 45 12.597 11.004 20.73 26.992 20.73 45zm180 0H303.562c6.196 17.46 22.883 30 42.438 30 16.012 0 30.953-8.629 38.992-22.516l25.957 15.032C397.58 346.629 372.687 361 346 361c-41.352 0-75-33.648-75-75s33.648-75 75-75 75 33.648 75 75zm0 0" />
      </svg> Behance
						</a> <a href="#"> <svg viewBox="0 0 512 512" fill="currentColor">
       <path
									d="M352 0H64C28.704 0 0 28.704 0 64v320a16.02 16.02 0 009.216 14.496A16.232 16.232 0 0016 400c3.68 0 7.328-1.248 10.24-3.712L117.792 320H352c35.296 0 64-28.704 64-64V64c0-35.296-28.704-64-64-64z" />
       <path
									d="M464 128h-16v128c0 52.928-43.072 96-96 96H129.376L128 353.152V400c0 26.464 21.536 48 48 48h234.368l75.616 60.512A16.158 16.158 0 00496 512c2.336 0 4.704-.544 6.944-1.6A15.968 15.968 0 00512 496V176c0-26.464-21.536-48-48-48z" />
      </svg> Social Forum
						</a>
					</div>
				</div>
			</div>
			<div class="main-container">
				<div class="main-header">
					<a class="menu-link-main" href="#">All Apps</a>
					<div class="header-menu">
						<a class="main-header-link is-active" href="#">Desktop</a> <a
							class="main-header-link" href="#">Mobile</a> <a
							class="main-header-link" href="#">Web</a>
					</div>
					
						<!-- 검색창 -->
			<div class="search-bar">
				<input type="text" placeholder="Search">
			</div>
				</div>
				
			
			
				<!-- video -->
				<div class="content-wrapper">
					<!-- autoplay : 자동재생, loop : 자동재생, preload: 무엇을 로드 (auto, metadata, none)  -->

					<video class="video" controls muted poster="./resources/09.jpg">
						<source src="./resources/dance_practice.mp4" type="video/mp4">
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
	<!-- partial -->
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="./script.js"></script>
	<script src='https://vjs.zencdn.net/5-unsafe/video.js'></script>
	<script src="./script.js"></script>
</body>
</html>