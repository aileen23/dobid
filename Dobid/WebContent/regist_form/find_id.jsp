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
	<script type="text/javascript"
      src="/Dobid/mypage_form/js/bootstrap-datetimepicker.js"
      charset="UTF-8"></script>

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
		<font size="80" color="black" id="font1">Find</font><br>
	</center>
	<center>
		<font size="3" color="black" id="font2">Your ID</font>
	</center>
	<br>
	<form class="form-horizontal" style="margin-left: 25%" method="post" action="do_find_id.do">
		<div class="form-group">
			<label for="name" class="col-sm-2 control-label">Name</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" name="name"
					placeholder="Name">
			</div>
		</div>
		<div class="form-group">
			<label for="phone" class="col-sm-2 control-label">Phone</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" name="phone"
					placeholder="Phone (' - ' except)">
			</div>
		</div>
		
		<div class="form-group">
			<label  class="col-sm-2 control-label" style="margin-right: 1.3%">Birthday</label>
				<div class="input-group date form_date col-sm-4" data-date=""
					data-date-format="yyyymmdd" data-link-field="dtp_input2"
					data-link-format="yyyy-mm-dd">
				<input class="form-control" size="16" type="text" name="birthday" id="birthday"
					value="" readonly> <span class="input-group-addon"><span
					class="glyphicon glyphicon-remove"></span></span> <span
					class="input-group-addon"><span
					class="glyphicon glyphicon-calendar"></span></span>
			</div>
			<input type="hidden" id="dtp_input2" value="" /><br />
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
<script type="text/javascript"
    src="/Dobid/mypage_form/js/bootstrap-datetimepicker.js"
      charset="UTF-8"></script>
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