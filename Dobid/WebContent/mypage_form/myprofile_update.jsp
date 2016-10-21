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
<link href="./css/shop-homepage.css" rel="stylesheet">
<link href="./css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<!-- Script -->

<script type="text/javascript" src="./js/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="./js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
</head>

<body>
	<!-- 헤더 -->
	<br>
	<br>
	<br>
	<div class="container-fluid">
		<header><%@include file="mypageHeader.jsp"%></header>
	</div>
	<div class="container-fluid">
	<center>
		<font size="80" color="black">My Page</font><br>
	</center>
	<center>
		<font size="3" color="black">your Account</font>
	</center>
	<br>
	<form class="form-horizontal" style="margin-left: 25%" role="form">

		<div class="form-group" >
			<label for="inputId" class="col-sm-2 control-label">ID</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="inputId"
					placeholder="ID" disabled>
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">Name</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="inputName"
					placeholder="Name" disabled>
			</div>
		</div>
		<div class="form-group">
			<label for="inputPwd" class="col-sm-2 control-label">Password</label>
			<div class="col-sm-4">
				<input type="password" class="form-control" id="inputPwd"
					placeholder="Password">
			</div>
		</div>
		<div class="form-group">
			<label for="inputPwdCheck" class="col-sm-2 control-label">CheckPassword</label>
			<div class="col-sm-4">
				<input type="password" class="form-control" id="inputPwdCheck"
					placeholder="CheckPassword">
			</div>
		</div>
		<div class="form-group">
			<label for="inputPhone" class="col-sm-2 control-label">Phone</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="inputPhone"
					placeholder="Phone">
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail" class="col-sm-2 control-label">E-mail</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="inputEmail"
					placeholder="E-mail">
			</div>
		</div>
		<div class="form-group">
			<label for="inputAddress" class="col-sm-2 control-label">Address</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="inputAddress"
					placeholder="Address">
			</div>
		</div>
		<div class="form-group">
			<label for="inputNickName" class="col-sm-2 control-label">NickName</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="inputNickName"
					placeholder="NickName" disabled>
			</div>
		</div>
		<div class="form-group">
			<label for="inputIntro" class="col-sm-2 control-label">Introduction</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="inputIntro"
					placeholder="Introduction">
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label"" >Birthday</label>
			<div class="input-group date form_date col-sm-4"" data-date="" data-date-format="yyyy/mm/dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
				<input class="form-control" size="5" type="text" name="Birthday" value="" readonly> 
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
	</div>


		<br>
		<br>
		<br>
	</form>

	<div class="container">

		<hr>

		<!-- Footer -->
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>

	</div>
<!-- Script -->
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
        language:  'uk',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	$('.form_time').datetimepicker({
        language:  'uk',
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