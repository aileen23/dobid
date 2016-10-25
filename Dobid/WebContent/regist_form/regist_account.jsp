<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Bootstrap Core CSS -->
<link href="/Dobid/regist_form/css/bootstrap.min.css" rel="stylesheet" media="screen">

<!-- Custom CSS -->
<link href="/Dobid/regist_form/css/shop-homepage.css" rel="stylesheet" >
<link href="/Dobid/mypage_form/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

<script type="text/javascript" src="/Dobid/mypage_form/js/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="/Dobid/mypage_form/js/bootstrap.min.js"></script>
</head>


<body>
	<header><%@include file="header.jsp"%></header>
	<!-- 헤더 -->
	<br>
	<br>
	<br>

	<center>
		<font size="80" color="black">Register</font><br>
	</center>
	<center>
		<font size="3" color="black">your Account</font>
	</center>
	<br>
	<div class="container">
	<form class="form-horizontal" style="margin-left: 25%" method="post" action="do_regist_account.do">

		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">ID</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" name="id" placeholder="ID">
			</div>
			<button type="button" class="btn btn-default"
				style="margin-right: 5%">Check</button>
		</div>
		<div class="form-group">
			<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
			<div class="col-sm-4">
				<input type="password" class="form-control" name="pass"
					placeholder="Password">
			</div>
		</div>
		<div class="form-group">
			<label for="inputPassword3" class="col-sm-2 control-label">CheckPassword</label>
			<div class="col-sm-4">
				<input type="password" class="form-control" name="checkpass"
					placeholder="CheckPassword">
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Name</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" name="name"
					placeholder="Name">
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
			<label for="inputEmail3" class="col-sm-2 control-label">E-mail</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" name="email"
					placeholder="E-mail">
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Address</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" name="address"
					placeholder="Address">
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">NickName</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" name="nickname"
					placeholder="NickName">
			</div>
			<button type="button" class="btn btn-default"
				style="margin-right: 5%">Check</button>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">Introduction</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" name="introduction"
					placeholder="Introduction">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Birthday</label>
			<div class="input-group date form_date col-sm-4" data-date="" data-date-format="yyyymmdd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
				<input class="form-control" size="16" type="text" name="Birthday" value=">>" readonly>
 					<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
			</div>
			<input type="hidden" id="dtp_input2" value="" /><br />
		</div>


		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-12" style="margin-bottom: 1%">
				<button type="submit" class="btn btn-default"
					style="margin-right: 5%">Sign up</button>
			</div>
		</div>


		<br>
		<br>
		<br>
	</form>
</div>
	<div class="container">

		<hr>

		<!-- Footer -->
		<footer> <%@include file="/regist_form/footer.jsp"%>
		</footer>

	</div>
	<!-- Script -->
<script type="text/javascript" src="/Dobid/mypage_form/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
	$('.form_date').datetimepicker({
        language:  'kr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	$('.form_time').datetimepicker({
        language:  'kr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 1,
		minView: 0,
		maxView: 1,
		forceParse: 0
    });
</script>
</body>
</html>