<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<header><%@include file="../regist_form/header.jsp"%></header>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Bootstrap Core CSS -->
<link href="./admin_form/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="./admin_form/css/shop-homepage.css" rel="stylesheet">


</head>

<body>

<!-- 헤더 -->
	<br>
	<br>
	<br>

<center><font size="80" color="black">Login</font><br></center>
<center><font size="3" color="black">for admin</font></center>
<br>
<form class="form-horizontal" style="margin-left: 25%" action="do_admin_login.do" method="post">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">ID</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" name="id" placeholder="ID">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-4">
      <input type="password" class="form-control" name="pass" placeholder="Password">
    </div>
  </div>
  
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-12" style="margin-bottom: 1%">
      <button type="submit" class="btn btn-default" style="margin-right: 1%">Sign in</button>
    </div>
  </div>
  

  
  <br><br><br><br><br><br><br><br><br>
</form>

	<div class="container">

		<hr>

		<!-- Footer -->
			<div class="container">

		<hr>

		<!-- Footer -->
		<footer> <%@include file="/regist_form/footer.jsp"%></footer>

	</div>

</body>
</html>