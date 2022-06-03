<%@page import="java.util.List"%>
<%@page import="kr.book.entity.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">

  function goJSON(){
	  $.ajax({
			url : "bookListAjax.do",
			type : "GET",
			//data : {},
			dataType : "json",
			success : ajaxHtml,
			error : function(){alert("error");  }
		});
  }
  function ajaxHtml(data){
	  var view="<table class=table table-bordered table-hover>";
		  	view+="<tr>";
		  	view+="<td>번호</td>";
		  	view+="<td>제목</td>";
		  	view+="<td>작가</td>";
		  	view+="<td>출판사</td>";
		  	view+="<td>ISBN</td>";
		  	view+="<td>보유도서수</td>";
		  	view+="</tr>";
		  	$.each(data, function(index, obj){
		  		view+="<tr>"
		 	    	view+="<td>"+obj.num+"</td>";
		 	    	view+="<td>"+obj.title+"</td>";
		 	    	view+="<td>"+obj.author+"</td>";
		 	    	view+="<td>"+obj.company+"</td>";
		 	    	view+="<td>"+obj.isbn+"</td>";
		 	    	view+="<td>"+obj.count+"</td>";
		 	    	view+="</tr>";		 	    	
		  	});
		  	 view+="<table>";
		  	 $("#view").html(view);
  }
  
  
  function loadVideo(){
	  var video='<video controls width="250">';

	  video+='<source src="dance_practice.mp4" type="video/mp4"></video>';
		
		  $("#video").html(video);
  }
  
  </script>
</head>
<body>
<div class="container">
  <h2>MVC Framework</h2>
  <div class="panel panel-default">
    <div class="panel-heading">Board</div>
    <div class="panel-body">
<!-- 책 출력 -->
<table class="table table-bordered table-hover">
    		<tr>
    			<td>번호</td>
    			<td>제목</td>
    			<td>작가</td>
    			<td>출판사</td>
    			<td>ISBN</td>
    			<td>보유도서수</td>
    		</tr>
    		 
    		 <c:forEach var="vo" items="${list}">
    		 	<tr>
    		 	<td>${vo.num }</td>
    			<td>${vo.title }</td>
    			<td>${vo.author }</td>
    			<td>${vo.company }</td>
    			<td>${vo.isbn }</td>
    			<td>${vo.count }</td>
    		 	</tr>
    		 
    		 </c:forEach>
    	</table>
<button onclick="goJSON()">도서목록가져오기</button>
<div id="view">
</div>

<button onclick="loadVideo()">영상가져오기</button>
<div id="video">
</div>

<video controls width="250">
<source src="./dance_practice.mp4" type="video/mp4">
</video>

</div>
    <div class="panel-footer">빅데이터 분석 서비스 개발자 과정(이서연)</div>
  </div>
</div>

</body>
</html>
