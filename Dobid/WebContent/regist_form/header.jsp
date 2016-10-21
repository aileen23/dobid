<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" 
   href="/Dobid/regist_form/css/bootstrap.min.css">
<script
   src="/Dobid/regist_form/js/jquery-1.8.3.min.js"></script>
<script src="/Dobid/regist_form/js/bootstrap.min.js"></script>
<script> 
$(document).ready(function(){
    $("#Auction").mouseover(function(){
        $("#dropAuction").slideDown("slow");
    });
    $("#Auction").mouseout(function(){
        $("#dropAuction").slideUp("slow");
    });
	
	$("#Board").mouseover(function(){
        $("#dropBoard").slideDown("slow");
    });
    $("#Board").mouseout(function(){
        $("#dropBoard").slideUp("slow");
    });

	$("#Service").mouseover(function(){
        $("#dropService").slideDown("slow");
    });
    $("#Service").mouseout(function(){
        $("#dropService").slideUp("slow");
    });
});
</script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Do!bid</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" id="Auction">경매 <span class="caret"></span></a>
					<ul class="dropdown-menu" id="dropAuction">
						<li><a href="#">새제품</a></li>
						<li><a href="#">중고상품</a></li>
					</ul>
				</li>
							
				<li id="navbar_gong"><a href="#">공동구매</a></li>
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" id="Board">커뮤니티 <span class="caret"></span></a>
					<ul class="dropdown-menu" id="dropBoard">
						<li><a href="#">공지사항</a></li>
						<li><a href="#">자유게시판</a></li>
					</ul>
				</li>
				
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" id="Service">고객센터 <span class="caret"></span></a>
					<ul class="dropdown-menu" id="dropService">
						<li><a href="service_qna.do"> 자주하는질문 </a></li>
						<li><a href="service_ono.do">1:1문의</a></li>
						<li><a href="service_report.do">신고하기</a></li>
					</ul>
				</li>
			</ul>
			
			 <ul class="nav navbar-nav navbar-right" id="navright">
      	 <li><a href="#" id="nav_login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
		</div>
	</nav>
