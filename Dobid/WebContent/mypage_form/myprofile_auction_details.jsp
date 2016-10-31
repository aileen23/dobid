<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<header><%@include file="../regist_form/header.jsp"%></header>
<head>
<title>Bootstrap Case</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
<!-- 헤더 -->
	<br>
	<br>
	<br>
		<div class="titleText" style="margin-left: 20px">
		<font size="80" color="black">경매내역</font><br>
		</div>

	<div class="container-fluid"	style="margin-bottom: 100px">
		<header><%@include file="/mypage_form/mypageHeader.jsp"%></header>
	</div>
	<div class="container">
		<c:forEach items="${list }" var="auctionlist">
		<div class="panel panel-default row">
			<div class="panel-body col-xs-4"><img src="${auctionlist.main_image_path}" width="80%"  height="80%"> </div>
			<div class="panel-body col-xs-8"><font color="red">${auctionlist.hot_check}</font><br>${auctionlist.title}<br>입찰가격 : ${auctionlist.dib_price_amount }원<br>종료일:  ${auctionlist.end_date}</div>
		</div>
		</c:forEach>
	</div>

</body>
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>
</html>
