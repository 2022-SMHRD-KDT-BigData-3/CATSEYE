<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POPUP</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="fontawesome-free-5.15.1-web/css/fontawesome.min.css">
</head>
<body>
<a href="#" data-toggle="modal" data-target="#myModal">이미지 모달띄우기</a>
 
 
<div class="modal fade" id="myModal" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-xl modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title" style="font-weight: bold;">사고</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" style="width: 80%; position: relative;left: 50px;top: 15px;">        
         <p style="text-align: center;position: relative;top: 20px;font-size: x-large;">cctv no.1 구역 <br> 발생 시간  1:00</p>
        </div>
        
        <div class="modal-body" style="margin:0%;">
            <img class="card-img-top rounded img-fluid" src="./resources/img/04.png" 
    style="width: 237px;position: relative;left: 119px;">
        </div>
        
        <div class="modal-body">
        <!-- <button type="button" class="btn btn-secondary" data-dismiss="modal" style="position: relative;left: 18%;bottom: 7px;">이미지 보러 가기</button> -->
        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="position: relative;left: 36%;bottom: 7px;">영상 보러 가기</button>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
</div>

</body>
</html>