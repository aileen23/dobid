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


</head>


<body>
	<header><%@include file="header.jsp"%></header>
	<!-- 헤더 -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<center>
		<font size="80" color="black">Find</font><br>
	</center>
	<center>
		<font size="3" color="black">Your ID</font>
	</center>
	<br>
	<form class="form-horizontal" style="margin-left: 25%" method="post" action="do_find_id.do">
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Name</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" name="name"
					placeholder="Name">
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Birthday</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" name="birthday"
					placeholder="Birthday">
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Phone</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" name="phone"
					placeholder="Phone">
			</div>
		</div>



		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-12" style="margin-bottom: 1%">
				<button type="submit" class="btn btn-default"
					style="margin-right: 10%" >Find ID</button>
				<a href="findpassword.do"><button type="button"
						class="btn btn-default" style="margin-right: 10%">Find
						Password</button></a>
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