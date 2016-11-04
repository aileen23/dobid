<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("logincheck") == null) {
		out.print("<script type='text/javascript'>" + "alert('로그인을 하셔야합니다.');"
				+ "location.replace('/Dobid/login.do');" + "</script>");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<header><%@include file="../regist_form/header.jsp"%></header>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Do!bid</title>

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
		<div class="titleText"  style="margin-left: 22%; margin-right: auto;">
		<font size="80" color="black">회원탈퇴</font><br>
		</div>

	<div class="container-fluid"	style="margin-bottom: 100px">
		<header><%@include file="mypageHeader.jsp"%></header>
	</div>

	<center>
		<font size="8" color="black">정말로<br> 탈퇴하시겠어요? </font><br><br>
		<font size="3" color="red"><font color="blue">30일 간 회원 탈퇴 대기상태가 됩니다.</font>  <br><br> 30일이 지난후 계정은 완전히 삭제 됩니다. <br> 회원 탈퇴를 철회 하시려면 관리자에게 문의 하세요.</font>
	</center>
	<br><br><br><br>
	<form class="form-horizontal" style="margin-left: 33%" role="form" action="myprofile_withdrawalOK.do">


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