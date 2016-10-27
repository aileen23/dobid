<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<header><%@include file="../regist_form/header.jsp"%></header>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Bootstrap Core CSS -->
<link href="./css/bootstrap.min.css" rel="stylesheet" media="screen">

<!-- Custom CSS -->
<!-- Script -->
<link href="./css/shop-homepage.css" rel="stylesheet">

<script type="text/javascript" src="./js/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="./js/bootstrap.min.js"></script>
</head>


<body>
	<!-- 헤더 -->
	<br>
	<br>
	<br>
		<div class="titleText" style="margin-left: 20px">
		<font size="80" color="black">회원탈퇴</font><br>
		</div>

	<div class="container-fluid"	style="margin-bottom: 100px">
		<header><%@include file="mypageHeader.jsp"%></header>
	</div>

	<center>
		<font size="8" color="black">정말로<br> 탈퇴하시겠어요? </font><br><br>
		<font size="3" color="red">본 사이트는 회원탈퇴를 하여도 <br>회원님의 작성글과 댓글이 삭제되지않습니다.</font>
	</center>
	<br><br><br><br>
	<form class="form-horizontal" style="margin-left: 33%" role="form" action="myprofile_withdrawal.do">


		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-12" style="margin-bottom: 1%">
				<button type="submit" class="btn btn-default"
					style="margin-right: 5%">Yes</button>
				<button type="reset" class="btn btn-default"
					style="margin-right: 5%">No</button>
			</div>
		</div>


		<br>
		<br>
		<br>
	</form>

	<div class="container">

		<hr>

		<!-- Footer -->
		<footer> <%@include file="../regist_form/footer.jsp"%>
		</footer>

	</div>
</body>
</html>