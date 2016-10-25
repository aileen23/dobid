<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Bootstrap Core CSS -->
<link href="/Dobid/regist_form/css/bootstrap.min.css" rel="stylesheet"
	media="screen">

<!-- Custom CSS -->
<link href="/Dobid/regist_form/css/shop-homepage.css" rel="stylesheet">
<link href="/Dobid/mypage_form/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">


<script type="text/javascript"
	src="/Dobid/mypage_form/js/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript"
	src="/Dobid/mypage_form/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#checkid").click(function() {

			var url = "checkid.do";
			var params = "id=" + $("#id").val();

			$.ajax({
				type : "POST",
				url : url,
				data : params,
				success : function(args) {
					/* $("#result").html(args); */
					if (args == 1 && $("#id").val().length >= 6) {
						alert("사용할수 있는 아이디입니다.");
						$("#id").attr("readonly", true);
					} else {
						alert("사용할수 없는 아이디입니다.");
					}
				},
				error : function(e) {
					alert(e.responseText);
				}
			});

		});//checkid버튼 클릭시
		
		$("#checknickname").click(function() {

			var url = "checknickname.do";
			var params = "nickname=" + $("#nickname").val();

			$.ajax({
				type : "POST",
				url : url,
				data : params,
				success : function(args) {
					/* $("#result").html(args); */
					if (args == 1 && $("#nickname").val().length >= 6) {
						alert("사용할수 있는 닉네임입니다.");
						$("#nickname").attr("readonly", true);
					} else {
						alert("사용할수 없는 닉네임입니다.");
					}
				},
				error : function(e) {
					alert(e.responseText);
				}
			});
		});//checknickname버튼 클릭시
		
		$("input").keydown
		
	});//ready
</script>

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
		<form class="form-horizontal" style="margin-left: 25%" method="post"
			action="do_regist_account.do">

			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">ID</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="id" placeholder="ID (6-20)"
						id="id">
				</div>
				<button type="button" class="btn btn-default" id="checkid"
					style="margin-right: 5%">Check</button>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
				<div class="col-sm-4">
					<input type="password" class="form-control" name="pass"
						placeholder="Password (6-20)" id="password">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">CheckPassword</label>
				<div class="col-sm-4">
					<input type="password" class="form-control" name="checkpass"
						placeholder="CheckPassword" id="checkpassword">
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Name</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="name"
						placeholder="Name" id="name">
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Phone</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="phone"
						placeholder="Phone (' - ' except)" id="phone">
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">E-mail</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="email"
						placeholder="E-mail" id="email">
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">NickName</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="nickname"
						placeholder="NickName" id="nickname">
				</div>
				<button type="button" class="btn btn-default"
					style="margin-right: 5%" id="checknickname">Check</button>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Address</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="address"
						style="height: 100px;" placeholder="Address" id="address">
				</div>
			</div>

			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Introduction</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="introduction"
						style="height: 100px;" placeholder="Introduction" id="introduction">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">Birthday</label>
				<div class="input-group date form_date col-sm-4" data-date=""
					data-date-format="yyyymmdd" data-link-field="dtp_input2"
					data-link-format="yyyy-mm-dd">
					<input class="form-control" size="16" type="text" name="birthday"
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
						style="margin-right: 5%" id="account" disabled="false">Sign up</button>
				</div>
			</div>


			<br> <br> <br>
		</form>
	</div>
	<div class="container">

		<hr>

		<!-- Footer -->
		<footer>
			<%@include file="/regist_form/footer.jsp"%>
		</footer>

	</div>
	<!-- Script -->
	<script type="text/javascript"
		src="/Dobid/mypage_form/js/bootstrap-datetimepicker.js"
		charset="UTF-8"></script>
	<script type="text/javascript">
		$('.form_datetime').datetimepicker({
			//language:  'fr',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			forceParse : 0,
			showMeridian : 1
		});
		$('.form_date').datetimepicker({
			language : 'kr',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			minView : 2,
			forceParse : 0
		});
		$('.form_time').datetimepicker({
			language : 'kr',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 1,
			minView : 0,
			maxView : 1,
			forceParse : 0
		});
	</script>
</body>
</html>