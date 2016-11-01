<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Bootstrap Core CSS -->
<link href="./regist_form/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="./regist_form/css/shop-homepage.css" rel="stylesheet">

<script type="text/javascript"
	src="/Dobid/mypage_form/js/jquery-1.8.3.min.js" charset="UTF-8"></script>


</head>

<body id="body">
	<header><%@include file="header.jsp"%></header>
	<!-- 헤더 -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<center>
		<font size="80" color="black" id="font1">Login</font><br>
	</center>
	<center>
		<font size="3" color="black" id="font2">welcome Do Bid</font>
	</center>
	<br>
	<form class="form-horizontal col-sm-offset-3"method="post"
		action="do_login.do">
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">ID</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" name="id" placeholder="ID" id="id">
			</div>
		</div>
		<div class="form-group">
			<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
			<div class="col-sm-4">
				<input type="password" class="form-control" name="pass"
					placeholder="Password">
			</div>
		</div>


		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-4" style="margin-bottom: 1%">
				<button type="submit" class="btn btn-default"
					style="margin-right: 10%">Sign in</button>
				<a href="findid.do"><button type="button" class="btn btn-default"
					style="margin-right: 1%; float: right;">Find ID</button></a>
				<a href="regist_account.do"><button type="button"
						class="btn btn-default" style="margin-right: 1%; float: right;">Sign up</button></a>
				
			</div>
		</div>



		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
	</form>

	<div class="container">

		<hr>

		<!-- Footer -->
		<footer> <%@include file="/regist_form/footer.jsp"%>
		</footer>

	</div>
</body>
</html>