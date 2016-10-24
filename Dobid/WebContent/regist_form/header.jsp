<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="/Dobid/regist_form/css/bootstrap.min.css">
<link href="/Dobid/regist_form/css/mystyle.css" rel="stylesheet"
	type="text/css">
<script src="/Dobid/regist_form/js/jquery-1.12.4.min.js"></script>
<script src="/Dobid/regist_form/js/bootstrap.min.js"></script>
<script src="/Dobid/regist_form/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {
		$("#Auction").mouseover(function() {
			$(this).css("background-color", "#FFF");
			$(this).css("color", "black");
		});
		$("#Auction").mouseout(function() {
			$(this).css("background-color", "black");
			$(this).css("color", "white");
		});
		$("#Auction").click(function() {
			$("#dropAuction").show();
		});
		$("#dropAuction").mouseout(function() {
			$(this).hide();
		});

		$("#gongdong").mouseover(function() {
			$(this).css("background-color", "#FFF");
			$(this).css("color", "black");
		});
		$("#gongdong").mouseout(function() {
			$(this).css("background-color", "black");
			$(this).css("color", "white");
		});

		$("#Service").mouseover(function() {
			$(this).css("background-color", "white");
			$(this).css("color", "black");
		});
		$("#Service").mouseout(function() {
			$(this).css("background-color", "black");
			$(this).css("color", "white");
		});

		$("#Service").click(function() {
			$("#dropService").show();
		});
		$("#dropService").mouseout(function() {
			$(this).hide();
		});

		$("#Board").mouseover(function() {
			$(this).css("background-color", "white");
			$(this).css("color", "black");
		});
		$("#Board").mouseout(function() {
			$(this).css("background-color", "black");
			$(this).css("color", "white");
		});
		$("#Board").click(function() {
			$("#dropBoard").show();
		});
		$("#dropBoard").mouseout(function() {
			$(this).hide();
		});
	});
</script>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-header">
			<a class="navbar-brand" href="main.do">Do!bid</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#" id="Auction">경매<span
					class="caret"></span></a>
				<ul class="dropdown-menu" id="dropAuction">
					<li><a href="#">새제품</a></li>
					<li><a href="#">중고상품</a></li>
				</ul></li>

			<li id="navbar_gong"><a href="#" id="gongdong">공동구매</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#" id="Board">커뮤니티 <span
					class="caret"></span></a>
				<ul class="dropdown-menu" id="dropBoard">
					<li><a href="#">공지사항</a></li>
					<li><a href="#">자유게시판</a></li>
				</ul></li>

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#" id="Service">고객센터 <span
					class="caret"></span></a>
				<ul class="dropdown-menu" id="dropService">
					<li><a href="service_qna.do"> 자주하는질문 </a></li>
					<li><a href="service_ono.do">1:1문의</a></li>
					<li><a href="service_report.do">신고하기</a></li>
				</ul></li>
		</ul>
		<ul class="nav navbar-nav navbar-right" id="navright">
		<% %>
<%
	String logincheck = (String)request.getSession().getAttribute("logincheck");
	if (logincheck == null || logincheck.equals("")) {
%>
			<li><a href="login.do" id="loginid"><span
					class="glyphicon glyphicon-log-in"></span> Login </a></li>
	<% }else{%>
			<li><a href="#" id="loginid2"><%=logincheck%></a></li>
			<%} %>
		</ul>
	</nav>