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

<script type="text/javascript">
$(document).ready(function() {
	$("#findpass").click(function() {

		var url = "findpass.do";
		var params1 = "receiver=" + $("#receiver").val();
		var params2 = "id=" + $("#id").val();
		var params3 = "name=" + $("#name").val();

		$.ajax({
			type : "POST",
			url : url,
			data : params1+"&"+params2+"&"+params3,
			success : function(args) {
				/* $("#result").html(args); */
				if (args != 1) {
					alert("이름, 이메일, ID을 확인해 주세요.");
				}
				else {
					alert("메일이 발송되었습니다. 메일을 확인해주세요.");
					$("#id").attr("readonly", true);
					$("#receiver").attr("readonly", true);
					$("#name").attr("readonly", true);
					$("#findpass").fadeOut(500);
				}
			},
			error : function(e) {
				alert(e.responseText);
			}
		});//ajax

	});//ready
	</script>
</head>


<body>
	<header><%@include file="header.jsp"%></header>
<!-- 헤더 -->
<br><br><br><br><br><br>

<center><font size="80" color="black">Find</font><br></center>
<center><font size="3" color="black">Your Password</font></center>
<br>
<form class="form-horizontal" style="margin-left: 25%">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">ID</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="id" placeholder="ID">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">E-mail</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="receiver" placeholder="E-mail">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Name</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="name" placeholder="Name">
    </div>
  </div>

  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-12" style="margin-bottom: 1%">
      <button type="button" class="btn btn-default" style="margin-right: 10%" id="findpass">Find Password</button> 
    </div>
  </div>
  

  
  <br><br><br><br><br><br><br><br><br>
</form>

<div class="container">

		<hr>

		<!-- Footer -->
		<footer> <%@include file="/regist_form/footer.jsp"%>
		</footer>

	</div>
</body>
</html>