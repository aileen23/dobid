<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<header><%@include file="../regist_form/header.jsp"%></header>
<head>
<title>Bootstrap Case</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap Core CSS -->
<link href="./css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="./css/shop-homepage.css" rel="stylesheet">

<!-- Script -->
<script type="text/javascript" src="./js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/jquery-1.8.3.min.js" charset="UTF-8"></script>
</head>
<body>

	<div class="container">
		<h2>경매내역</h2> <br>
		<div class="panel panel-default row">
			<div class="panel-body col-xs-4"><img src="../image/dobid.png" width="80%"  height="80%""> </div>
			<div class="panel-body col-xs-8">자판기장난감<br> 70000원<br> | 2016.10.10 <br>거래종료 </div>
		</div>
		
		<div class="panel panel-default row">
			<div class="panel-body col-xs-6"><img src="../image/dobid.png" width="80%"  height="80%""> </div>
			<div class="panel-body col-xs-6">자판기장난감<br> 70000원<br> | 2016.10.10 <br>거래종료 </div>
		</div>
	</div>

</body>
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>
</html>
