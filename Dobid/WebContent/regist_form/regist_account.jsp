<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/shop-homepage.css" rel="stylesheet">


</head>


<body>
<header><%@include file="header.jsp"%></header>
<!-- 헤더 -->
<br><br><br>

<center><font size="80" color="black">Register</font><br></center>
<center><font size="3" color="black">your Account</font></center>
<br>
<form class="form-horizontal" style="margin-left: 25%">

  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">ID</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="ID" placeholder="ID">
    </div>
    <button type="button" class="btn btn-default" style="margin-right: 5%">Check</button> 
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-4">
      <input type="password" class="form-control" id="Password" placeholder="Password">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">CheckPassword</label>
    <div class="col-sm-4">
      <input type="password" class="form-control" id="CheckPassword" placeholder="CheckPassword">
    </div>
  </div>
   <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Name</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="Name" placeholder="Name">
    </div>
  </div>
    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Phone</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="Phone" placeholder="Phone">
    </div>
  </div>
    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">E-mail</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="E-mail" placeholder="E-mail">
    </div>
  </div>
    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Address</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="Address" placeholder="Address">
    </div>
  </div>
    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">NickName</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="NickName" placeholder="NickName">
    </div>
    <button type="button" class="btn btn-default" style="margin-right: 5%">Check</button> 
  </div>
    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Introduction</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="Introduction" placeholder="Introduction">
    </div>
  </div>
    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Birthday</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="Birthday" placeholder="Birthday">
    </div>
  </div>

  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-12" style="margin-bottom: 1%">
      <button type="submit" class="btn btn-default" style="margin-right: 5%">Sign up</button> 
    </div>
  </div>

  
  <br><br><br>
</form>

<div class="container">

		<hr>

		<!-- Footer -->
		<footer> <%@include file="/regist_form/footer.jsp"%>
		</footer>

	</div>
</body>
</html>