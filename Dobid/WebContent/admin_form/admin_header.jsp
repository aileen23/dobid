<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="/Dobid/regist_form/css/bootstrap.min.css" rel="stylesheet">
<%-- <link href="/Dobid/mypage_form/css/bootstrap.css"  rel="stylesheet"> --%>
<link href="/Dobid/regist_form/css/mystyle.css" rel="stylesheet"
	type="text/css">
<script src="/Dobid/regist_form/js/jquery-1.12.4.min.js"></script>
<script src="/Dobid/regist_form/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {
		for (var i = 0; i < 100; i++) {
			$("#font1").animate({
				opacity : "0.2"
			}, 1000);
			$("#font1").animate({
				opacity : "1"
			}, 1000);
		}
	});
</script>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-header">
			<a class="navbar-brand" href="main.do" id="font1">Do!bid</a>
		</div>
		<ul class="nav navbar-nav">
		<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#" id="Auction">게시판관리<span
					class="caret"></span></a>
				<ul class="dropdown-menu" id="dropAuction">
					<li><a href="/Dobid/admin_noticeboard.do">공지사항</a></li>
					<li><a href="/Dobid/admin_freeboard.do">자유게시판</a></li>
				</ul></li>
			<li id="navbar_gong"><a href="admin_auctionlist.do"
				id="gongdong">경매물품관리</a></li>
			<li id="navbar_gong"><a href="admin_ono.do" id="gongdong">1대1문의보기</a></li>
			<li id="navbar_gong"><a href="admin_report.do" id="gongdong">신고목록</a></li>
			<li id="navbar_gong"><a href="admin_memberdel.do" id="gongdong">회원관리</a></li>


		</ul>
		<ul class="nav navbar-nav navbar-right" id="navright">
			<%
				String logincheck = (String) request.getSession().getAttribute("logincheck");
				if (logincheck == null || logincheck.equals("")) {
			%>
			<li><a href="login.do" id="loginid"><span
					class="glyphicon glyphicon-log-in"></span> Login </a></li>
			<%
				} else {
			%>
			<li><a href="myprofile.do" id="loginid2"><span
					class="glyphicon glyphicon-user"></span><%=logincheck%></a></li>
			<li><a href="/Dobid/regist_form/logout.jsp"><span
					class="glyphicon glyphicon-log-out" id="logout"></span></a></li>
			<%
				}
			%>
		</ul>
	</nav>