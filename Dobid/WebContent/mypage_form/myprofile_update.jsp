<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC >
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
		<div class="titleText" style="margin-left: 20px">
		<font size="80" color="black">My Page</font><br>
		</div>

	<div class="container-fluid"	style="margin-bottom: 100px">
		<header><%@include file="mypageHeader.jsp"%></header>
	</div>
	<div class="container-fluid">
	<br>
		<br>	<br>
	<form class="form-horizontal" style="margin-left: 25%" role="form">
		<div class="form-group" >
			<label for="inputId" class="col-sm-2 control-label">ID</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="inputId"
					placeholder="${member.member_id }" disabled>
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">Name</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="inputName"
					placeholder="${member.name }" disabled>
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
					placeholder="${member.phone } ">
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail" class="col-sm-2 control-label">E-mail</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="inputEmail"
					placeholder="${member.email }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputAddress" class="col-sm-2 control-label">Address</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="inputAddress"
					placeholder="${member.address }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputNickName" class="col-sm-2 control-label">NickName</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="inputNickName"
					placeholder="${member.nickname }" disabled>
			</div>
		</div>
		<div class="form-group">
			<label for="inputIntro" class="col-sm-2 control-label">Introduction</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="inputIntro"
					placeholder="${member.introduction }">
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label"" >Birthday</label>
			<div class="input-group date form_date col-sm-4"" data-date="" data-date-format="yyyymmdd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
				<input class="form-control" size="4" type="text" name="Birthday" value="${member.birthday }" readonly> 
 					<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
			</div>
			<input type="hidden" id="dtp_input2" value="" /><br />
		</div>
		

		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-12" style="margin-bottom: 1%">
				<button type="submit" class="btn btn-default"
					style="margin-right: 5%">Update</button>
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