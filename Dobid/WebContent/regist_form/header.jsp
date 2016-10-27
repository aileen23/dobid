<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="/Dobid/regist_form/css/bootstrap.min.css"  rel="stylesheet"> 
<%-- <link href="/Dobid/mypage_form/css/bootstrap.css"  rel="stylesheet"> --%> 
<link href="/Dobid/regist_form/css/mystyle.css" rel="stylesheet" type="text/css">
<script src="/Dobid/regist_form/js/jquery-1.12.4.min.js"></script>
<script src="/Dobid/regist_form/js/bootstrap.min.js"></script>
<script>
		
	$(document).ready(function(){
		for (var i = 0; i < 100; i++) {
			$("#font1").animate({opacity: "0.2"}, 1000);
			$("#font1").animate({opacity: "1"}, 1000);
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
				data-toggle="dropdown" href="#" id="Auction">경매<span
					class="caret"></span></a>
				<ul class="dropdown-menu" id="dropAuction">
					<li><a href="/Dobid/list.do?categori=새제품">새제품</a></li>
					<li><a href="/Dobid/list.do?categori=중고제품">중고상품</a></li>
					<li><a href="/Dobid/list.do?categori=미술">미술</a></li>
					<li><a href="/Dobid/list.do?categori=골동품">골동품</a></li>
					<li><a href="/Dobid/list.do?categori=의류">의류</a></li>
					<li><a href="/Dobid/list.do?categori=기타">기타</a></li>
				</ul></li>

			<li id="navbar_gong"><a href="/Dobid/group_list.do" id="gongdong">공동구매</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="board_list.do" id="Board">커뮤니티<span
					class="caret"></span></a>
				<ul class="dropdown-menu" id="dropBoard">
					<li><a href="/Dobid/board_list.do?id=1">공지사항</a></li>
					<li><a href="/Dobid/board_list.do?id=2">자유게시판</a></li>
				</ul></li>

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="service_qna.do" id="Service">고객센터<span
					class="caret"></span></a>
				<ul class="dropdown-menu" id="dropService">
					<li><a href="service_qna.do"> 자주하는질문 </a></li>
					<li><a href="service_ono.do">1:1문의</a></li>
					<li><a href="service_report.do">신고하기</a></li>
				</ul></li>
		</ul>
		<ul class="nav navbar-nav navbar-right" id="navright">
<%
	String logincheck = (String)request.getSession().getAttribute("logincheck");
	if (logincheck == null || logincheck.equals("")) {
%>
			<li><a href="login.do" id="loginid"><span
					class="glyphicon glyphicon-log-in"></span> Login </a></li>
	<% }else{%>
			<li><a href="myprofile.do" id="loginid2"><span class="glyphicon glyphicon-user"></span><%=logincheck%></a></li>
			<li><a href="/Dobid/regist_form/logout.jsp"><span class="glyphicon glyphicon-log-out"  id="logout" ></span></a></li>
			<%} %>
		</ul>
	</nav>